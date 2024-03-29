
public extension String {
    // bold
    func bold() -> String {
        return "\u{001B}[1m" + self + "\u{001B}[22m"
    }

    // italic
    func italic() -> String {
        return "\u{001B}[3m" + self + "\u{001B}[23m"
    }

    // underline
    func underline() -> String {
        return "\u{001B}[4m" + self + "\u{001B}[24m"
    }

    // inverse
    func inverse() -> String {
        return "\u{001B}[7m" + self + "\u{001B}[27m"
    }

    // strikethough
    func strikethrough() -> String {
        return "\u{001B}[9m" + self + "\u{001B}[29m"
    }

    // set foreground color to black
    func black() -> String {
        return "\u{001B}[30m" + self + "\u{001B}[0m"
    }

    // 　set foreground color to red
    func red() -> String {
        return "\u{001B}[31m" + self + "\u{001B}[0m"
    }

    //  set foreground color to green
    func green() -> String {
        return "\u{001B}[32m" + self + "\u{001B}[0m"
    }

    //    set foreground color to yellow
    func yellow() -> String {
        return "\u{001B}[33m" + self + "\u{001B}[0m"
    }

    //    set foreground color to blue
    func blue() -> String {
        return "\u{001B}[34m" + self + "\u{001B}[0m"
    }

    //    set foreground color to magenta
    func magenta() -> String {
        return "\u{001B}[35m" + self + "\u{001B}[0m"
    }

    //    set foreground color to cyan
    func cyan() -> String {
        return "\u{001B}[36m" + self + "\u{001B}[0m"
    }

    //    set foreground color to white
    func white() -> String {
        return "\u{001B}[37m" + self + "\u{001B}[0m"
    }

    //    set foreground color to white
    func defaultColor() -> String {
        return "\u{001B}[39m" + self + "\u{001B}[0m"
    }

    //    set background color to green
    func bgBlack() -> String {
        return "\u{001B}[40m" + self + "\u{001B}[0m"
    }

    //    set background color to green
    func bgRed() -> String {
        return "\u{001B}[41m" + self + "\u{001B}[0m"
    }

    //    set background color to green
    func bgGreen() -> String {
        return "\u{001B}[42m" + self + "\u{001B}[0m"
    }

    //    set background color to yellow
    func bgYellow() -> String {
        return "\u{001B}[43m" + self + "\u{001B}[0m"
    }

    //    set background color to blue
    func bgBlue() -> String {
        return "\u{001B}[44m" + self + "\u{001B}[0m"
    }

    //    set background color to magenta
    func bgMagenta() -> String {
        return "\u{001B}[45m" + self + "\u{001B}[0m"
    }

    //    set background color to cyan
    func bgCyan() -> String {
        return "\u{001B}[46m" + self + "\u{001B}[0m"
    }

    //    set background color to white
    func bgWhite() -> String {
        return "\u{001B}[47m" + self + "\u{001B}[0m"
    }

    //    set background color to default
    func bgDefaultColor() -> String {
        return "\u{001B}[49m" + self + "\u{001B}[0m"
    }
}
