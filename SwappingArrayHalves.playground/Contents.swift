/*: This playground provides a simple extension for Array that splits array in halves and swaps resulting parts  with each other. This extension provides both mutating version of a mthod and one that produces a new array.
 
 See some examnples below
 */
import Foundation

extension Array {
    
    /// Splits array in two parts at a given index, which indicates a starting index for a second part of awway, and swaps these two parts, producing a new array
    /// - Parameter index: index indicating a start of second half of the array
    /// - Returns: a new version of array
    func swappingHalves(at index: Array.Index) -> Array {
        return Array(self[index...] + self[..<index])
    }
    
    /// Swaps two parts of array at given index
    /// - Parameter index: index indicating a start of second half of the array
    mutating func swapHalves(at index: Array.Index) {
        self = self.swappingHalves(at: index)
    }
}

/*: Some examples:
*/
let exampleArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(exampleArray.swappingHalves(at: 4))
// this prints: [5, 6, 7, 8, 9, 10, 1, 2, 3, 4]
print(exampleArray.swappingHalves(at: 1))
// this prints: [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
print(exampleArray.swappingHalves(at: 9))
// this prints: [10, 1, 2, 3, 4, 5, 6, 7, 8, 9]
