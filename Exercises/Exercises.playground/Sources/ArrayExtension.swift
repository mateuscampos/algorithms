import Foundation

/// Generates random arrays of given size
///
/// - Parameters:
///   - size: size of the resulting array
/// - Returns: array with random elements
public extension Array where Element == Int {
    // Checks if the first element in an array of integers is 0
    func startsWithZero() -> Bool {
        guard self.isEmpty == false else {
            return false
        }
        return self.first == 0 ? true : false
    }
    static func generateRandom(size: Int) -> [Int] {
        guard size > 0 else {
            return [Int]()
        }
        return Array(0..<size).shuffled()
    }
    
    /// Sums up the numbers from the input array
    func sum() -> Int {
        var result = 0
        for i in 0..<self.count {
            result += self[i]
        }
        return result
    }
    
    /// Returns the number of odd and even elements from the input array
    func countOddEven() -> (even: UInt, odd: UInt) {
        var even: UInt = 0
        var odd: UInt = 0
        
        for elem in self {
            if elem % 2 == 0 {
                even += 1
            } else {
                odd += 1
            }
        }
        return (even, odd)
    }

    /*
    static func generateRandom2(size: Int) -> [Int] {
        guard size > 0 else {
            return [Int]()
        }
        var result = Array(repeating: 0, count: size)
        for index in 0..<result.count {
            result[index] = Int.random(in: 0..<size)
        }
        return result
    }
    
    static func generateRandom3(size: Int) -> [Int] {
        guard size > 0 else {
            return [Int]()
        }
        
        let result = Array(repeating: 0, count: size)
        return result.map{_ in Int.random(in: 0..<size)}
        //return Array(0..<size).map{_ in Int.random(in: 0..<size)}
    }
     */
}
