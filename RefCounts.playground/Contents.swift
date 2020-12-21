/*: This playground is here to demonstrate the difference between how reference count is changed for a class instance after it is being sent to a function as a parameter after being declared as a **let** VS being declared as a **var**
 */
import Foundation

class A { }

let a = A()
// uncomment following line to see different results. You would also need co comment preceding line
//var a = A()

// 1:
// Prints 2 for a being both let and var (not yet known why though, even after it was just created)
print(CFGetRetainCount(a))

func checkRefCount(a: A) {
    // 2:
    // Now here it prints 3 if a was declared as var and prints 2 if it was declared as let
    print(CFGetRetainCount(a))
}

checkRefCount(a: a)

// 3:
// Prints 2 in both cases
print(CFGetRetainCount(a))
