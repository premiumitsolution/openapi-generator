//
// HasOnlyReadOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

internal struct HasOnlyReadOnly: Codable, Hashable {

    internal var bar: String?
    internal var foo: String?

    internal init(bar: String? = nil, foo: String? = nil) {
        self.bar = bar
        self.foo = foo
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case bar
        case foo
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bar, forKey: .bar)
        try container.encodeIfPresent(foo, forKey: .foo)
    }
}
