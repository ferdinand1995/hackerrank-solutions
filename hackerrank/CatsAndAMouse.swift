import Foundation

// Complete the catAndMouse function below.
func catAndMouse(x: Int, y: Int, z: Int) -> String {

    let catBToMouse = abs(z-y)
    let catAToMouse = abs(z-x)
    if catBToMouse < catAToMouse {
        return "Cat B"
    } else if catAToMouse < catBToMouse {
        return "Cat A"
    } else {
        return "Mouse C"
    }
}

let result = catAndMouse(x: 2, y: 5, z: 4)
let result2 = catAndMouse(x: 1, y: 2, z: 3)
let result3 = catAndMouse(x: 1, y: 3, z: 2)

print(result)
