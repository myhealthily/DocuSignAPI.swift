//
// Province.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class Province: Content, Hashable {
    /**  */
    public var isoCode: String?
    /**  */
    public var name: String?

    public init(isoCode: String? = nil, name: String? = nil) {
        self.isoCode = isoCode
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isoCode
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isoCode, forKey: .isoCode)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public static func == (lhs: Province, rhs: Province) -> Bool {
        lhs.isoCode == rhs.isoCode &&
            lhs.name == rhs.name
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(isoCode?.hashValue)
        hasher.combine(name?.hashValue)
    }
}