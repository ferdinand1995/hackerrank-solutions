import Foundation

/*
 * Complete the 'appendAndDelete' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. STRING t
 *  3. INTEGER k
 */

func appendAndDelete(s: String, t: String, k: Int) -> String {
    var k = k
    if k >= t.count + s.count {
        return "Yes"
    }
    var same = min(t.count, s.count)
    for i in 0..<min(t.count, s.count) {
        if s[s.index(s.startIndex, offsetBy: i)] != t[t.index(t.startIndex, offsetBy: i)] {
            same = i
            break
        }
    }
    k -= (s.count - same)
    k -= (t.count - same)
    return (k >= 0 && k % 2 == 0) ? "Yes" : "No"
}


let result = appendAndDelete(s: "asdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcv", t: "bsdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcv", k: 100)
print(result)
