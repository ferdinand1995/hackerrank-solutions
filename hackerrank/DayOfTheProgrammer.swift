import Foundation

/*
 * Complete the 'dayOfProgrammer' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER year as parameter.
 */

func dayOfProgrammer(year: Int) -> String {
    if year > 1918 {
        return gregorianCalender(year)
    } else if year <= 1917 { 
        return julianCalender(year)
    } else {
       return "26.09.\(year)" 
    }
}

func gregorianCalender(_ year: Int) -> String {
    var dd = Int()
    for i in 1...8 {
        let dateComponents = DateComponents(year: year, month: i)
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponents)!
        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count 
        dd += numDays
    }
    dd = 256 - dd
    return "\(dd).09.\(year)" 
}

func julianCalender(_ year: Int) -> String {
    if year%4 == 0 {
        return "12.09.\(year)"
    } else {
        return "13.09.\(year)"
    }
}

let result = dayOfProgrammer(year: 1818)
print(result)
