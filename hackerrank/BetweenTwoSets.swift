import Foundation

/*
 * Complete the 'getTotalX' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func getTotalX(a: [Int], b: [Int]) -> Int {
    var result = Int()
    var lcm = a[0]
    if a.count > 1 {
        for i in a {
            lcm = findLCM(n1: lcm, n2: i)
        }
    }

    var gcd = b[0]
    if b.count > 1 { 
        for j in b {
            gcd = findGCD(gcd, j)
        }
    }

    var multiple = 0
    while multiple <= gcd {
      multiple += lcm;

      if gcd % multiple == 0 {
        result += 1
      }
    }

    return result
}

print(getTotalX(a: [3, 4], b: [24, 48]))

// find GCD on array 2
func findGCD(_ num1: Int, _ num2: Int) -> Int {
   var x = 0

   // Finding maximum number
   var y: Int = max(num1, num2)

   // Finding minimum number
   var z: Int = min(num1, num2)

   while z != 0 {
      x = y
      y = z
      z = x % y
   }
   return y
}

// find LCM on array 1
func findLCM(n1: Int, n2: Int)->Int{
   return (n1 * n2/findGCD(n1, n2))
}
