public extension Collection {
    public func shuffled() -> [Iterator.Element] {
        var array: [Self.Element] = Array(self)
        array.shuffle()
        return array
    }
}

public extension MutableCollection {
    mutating func shuffle() {
        var i: Self.Index = startIndex 
        var n: Int = count

        while n > 1 {
            let j = index(i, offsetBy: random(n))
            swapAt(i, j)
            formIndex(after: &i) 
            n -= 1
        }
    }
}