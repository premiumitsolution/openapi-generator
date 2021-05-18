//
// FileSchemaTestClass.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct FileSchemaTestClass: Codable, Hashable {

    internal var file: File?
    internal var files: [File]?

    internal init(file: File? = nil, files: [File]? = nil) {
        self.file = file
        self.files = files
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case file
        case files
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(file, forKey: .file)
        try container.encodeIfPresent(files, forKey: .files)
    }
}
