
func constructPointMaze(_ maze: [[Int]]) -> [[Point]] {
    var pointMaze: [[Point]] = []
    for y in 0 ..< maze.count {
        pointMaze.append([])
        for x in 0 ..< maze[0].count {
            pointMaze[y].append(Point(x, y, maze[y][x], maze: maze))
        }
    }
    return pointMaze
}

func getSteps(_ maze: [[Point]], _ optPrint: Bool = false) -> Int? {
    let goal = (maze[0].count - 1, maze.count - 1) // (maze width, maze height)
    let startPoint = maze[0][0]
    var returnList: [[String]] = []

    var queue = [startPoint]
    var activePoint: Point

    func printResult() {
        print("\r")
        for y in 0 ..< maze.count {
            returnList.append(maze[y].map { String($0.val) })
        }
        for tempPoint in activePoint.history {
            returnList[tempPoint.y][tempPoint.x] = String(returnList[tempPoint.y][tempPoint.x]).green().bold()
        }
        for list in returnList {
            for item in list {
                print(item, terminator: " ")
            }
            print("\r")
        }
        print("\r")
    }

    while !queue.isEmpty {
        activePoint = queue.removeLast()
        for neighbor in activePoint.neighbors {
            if (neighbor.x, neighbor.y) == goal {
                activePoint.history += [activePoint.simple, neighbor]
                if optPrint {
                    printResult()
                }
                return activePoint.history.count
            } else if !activePoint.history.contains(neighbor) {
                if neighbor.val == 0 {
                    var temp = maze[neighbor.y][neighbor.x]
                    temp.history = activePoint.history + [activePoint.simple]
                    temp.saldo = activePoint.saldo
                    queue.append(temp)
                } else if neighbor.val == 1, activePoint.saldo < 1 {
                    var temp = maze[neighbor.y][neighbor.x]
                    temp.history = activePoint.history + [activePoint.simple]
                    temp.saldo += 1
                    queue.append(temp)
                }
            }
        }
    }
    return nil
}

func answer(_ maze: [[Int]], _ display: Bool) -> String {
    let pointMaze = constructPointMaze(maze)
    if let steps = getSteps(pointMaze, display) {
        return "\(name): \(steps) steps"
    } else {
        return "Impossible"
    }
}
