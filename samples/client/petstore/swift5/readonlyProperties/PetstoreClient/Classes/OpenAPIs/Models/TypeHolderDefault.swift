//
// TypeHolderDefault.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct TypeHolderDefault: Codable, Hashable {

    public private(set) var stringItem: String = "what"
    public private(set) var numberItem: Double
    public private(set) var integerItem: Int
    public private(set) var boolItem: Bool = true
    public private(set) var arrayItem: [Int]

    public init(stringItem: String = "what", numberItem: Double, integerItem: Int, boolItem: Bool = true, arrayItem: [Int]) {
        self.stringItem = stringItem
        self.numberItem = numberItem
        self.integerItem = integerItem
        self.boolItem = boolItem
        self.arrayItem = arrayItem
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stringItem = "string_item"
        case numberItem = "number_item"
        case integerItem = "integer_item"
        case boolItem = "bool_item"
        case arrayItem = "array_item"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(stringItem, forKey: .stringItem)
        try container.encode(numberItem, forKey: .numberItem)
        try container.encode(integerItem, forKey: .integerItem)
        try container.encode(boolItem, forKey: .boolItem)
        try container.encode(arrayItem, forKey: .arrayItem)
    }
}
