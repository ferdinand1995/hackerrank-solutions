import Foundation

// Print the first n odd numbers

func main(n: Int) {
    for i in 0...n {
        if i%2 != 0 {
            print("odd number: \(i)")
        } else {
            continue
        }
        
    }
}

// Filtered Array
print((0...11).filter({ $0%2 != 0}))
