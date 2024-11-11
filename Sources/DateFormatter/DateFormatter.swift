// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol DateFormatterForDetailsScene {
    func getDate() -> String
}
public protocol DateFormatterForHomeScene {
    func getDate(articleAt: Int) -> String
}

public final class DateFormatterPackage {
    
    public init() {}
    
    public func getDate(startingDate: String) -> String {
        let dateFormatter = ISO8601DateFormatter()
        guard let date = dateFormatter.date(from: startingDate) else { return "" }
        let StringFormatter = DateFormatter()
        StringFormatter.dateFormat = "E, d MMM y"
        let finalDate = StringFormatter.string(from: date)
        return finalDate
    }
}
