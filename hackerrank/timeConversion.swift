import Foundation

func timeConversion(_ s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    guard let date = dateFormatter.date(from: s) else { return "" }
    dateFormatter.dateFormat = "HH:mm:ss"
    let date24 = dateFormatter.string(from: date)
    return date24
}

let s = "07:05:45PM"
print("result = \(timeConversion(s))")
