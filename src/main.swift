// Prepare the Bunnies' Escape

import Dispatch

var toCheck: [[Int]] = maze1
var name: String = "maze1"
var printTime: Bool = false
var display: Bool = false

for argument in CommandLine.arguments {
    switch argument {
    case "maze1":
        toCheck = maze1
        name = argument
    case "maze2":
        toCheck = maze2
        name = argument
    case "maze3":
        toCheck = maze3
        name = argument
    case "maze4":
        toCheck = maze4
        name = argument
    case "maze5":
        toCheck = maze5
        name = argument
    case "maze6":
        toCheck = maze6
        name = argument
    case "maze7":
        toCheck = maze7
        name = argument
    case "maze8":
        toCheck = maze8
        name = argument
    case "maze9":
        toCheck = maze9
        name = argument
    case "maze10":
        toCheck = maze10
        name = argument

    case "display":
        display = true
    case "time":
        printTime = true
    default:
        if argument != CommandLine.arguments[0] {
            print("'\(argument)' is not a valid argument")
            print("Options are 'maze1-8', 'display', or 'time'")
            print("\r")
        }
    }
}

let start = DispatchTime.now()
print(answer(toCheck, display))
let end = DispatchTime.now()
let nanoseconds = Double(end.uptimeNanoseconds - start.uptimeNanoseconds)
let milliseconds = nanoseconds / 1e6
if printTime { print("Finished in \(milliseconds) miliseconds") }
