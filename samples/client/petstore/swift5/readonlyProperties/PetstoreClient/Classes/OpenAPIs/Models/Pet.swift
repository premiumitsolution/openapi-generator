//
// Pet.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct Pet: Codable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case available = "available"
        case pending = "pending"
        case sold = "sold"
    }
    public private(set) var id: Int64?
    public private(set) var category: Category?
    public private(set) var name: String
    public private(set) var photoUrls: [String]
    public private(set) var tags: [Tag]?
    /** pet status in the store */
    public private(set) var status: Status?

    public init(id: Int64? = nil, category: Category? = nil, name: String, photoUrls: [String], tags: [Tag]? = nil, status: Status? = nil) {
        self.id = id
        self.category = category
        self.name = name
        self.photoUrls = photoUrls
        self.tags = tags
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case category
        case name
        case photoUrls
        case tags
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encode(name, forKey: .name)
        try container.encode(photoUrls, forKey: .photoUrls)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(status, forKey: .status)
    }
}
