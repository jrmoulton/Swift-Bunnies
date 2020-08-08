
class Node<Element> {
    let value: Element
    var next: Node<Element>?
    var prev: Node<Element>?

    init(_ value: Element, _ next: Node? = nil, _ prev: Node? = nil) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}

struct Queue<Element> {
    var head: Node<Element>?
    var tail: Node<Element>?
    var count: Int = 0

    init(_ inp: Element) {
        let temp = Node(inp)
        head = temp
        tail = temp
        count += 1
    }

    init() {
        head = nil
        tail = nil
    }

    var isEmpty: Bool { head == nil }

    mutating func append(_ item: Element) {
        let node = Node(item)
        count += 1
        if isEmpty {
            head = node
            tail = node
        } else {
            node.prev = tail
            tail!.next = node
            tail = node
        }
    }

    mutating func pop() -> Element? {
        if !isEmpty {
            count -= 1
            let temp = head
            if let next = head!.next {
                head = next
            } else {
                head = nil
            }
            return temp!.value
        }
        return nil
    }
}

extension Queue: CustomStringConvertible {
    var description: String { return "Queue<\(Element.self)>(\(count))" }
}

struct SimplePoint {
    let x: Int
    let y: Int
    let val: Int

    init(_ x: Int, _ y: Int, _ val: Int) {
        self.x = x
        self.y = y
        self.val = val
    }
}

extension SimplePoint: Equatable {
    public static func == (lhs: SimplePoint, rhs: SimplePoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

struct Point {
    let x: Int
    let y: Int
    let val: Int
    var saldo: Int
    var history: [SimplePoint] = []
    var neighbors: [SimplePoint] = []
    var maze: [[Int]] = [[0]]
    let simple: SimplePoint

    init(_ x: Int, _ y: Int, _ val: Int, saldo: Int = 0,
         history _: [SimplePoint] = [], neighbors: [SimplePoint] = [],
         maze: [[Int]] = [[0]]) {
        simple = SimplePoint(x, y, val)
        self.x = x
        self.y = y
        self.val = val
        self.saldo = saldo
        if neighbors.isEmpty, maze[0] != [0] {
            self.neighbors = getNeighbors(x, y, maze)
        }
    }

    func getNeighbors(_ x: Int, _ y: Int, _ maze: [[Int]]) -> [SimplePoint] {
        var returnArray: [SimplePoint] = []
        // Get point to left if active point is not on left edge
        if x != 0 {
            returnArray.append(SimplePoint(x - 1, y, maze[y][x - 1]))
        }
        if y != 0 {
            returnArray.append(SimplePoint(x, y - 1, maze[y - 1][x]))
        }
        if x != maze[0].count - 1 {
            returnArray.append(SimplePoint(x + 1, y, maze[y][x + 1]))
        }
        if y != maze.count - 1 {
            returnArray.append(SimplePoint(x, y + 1, maze[y + 1][x]))
        }
        return returnArray
    }
}
