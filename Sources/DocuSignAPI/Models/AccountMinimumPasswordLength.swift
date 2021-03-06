//
// AccountMinimumPasswordLength.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class AccountMinimumPasswordLength: Content, Hashable {
    /**  */
    public var maximumLength: String?
    /** Minimum length of the access code string. */
    public var minimumLength: String?

    public init(maximumLength: String? = nil, minimumLength: String? = nil) {
        self.maximumLength = maximumLength
        self.minimumLength = minimumLength
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maximumLength
        case minimumLength
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maximumLength, forKey: .maximumLength)
        try container.encodeIfPresent(minimumLength, forKey: .minimumLength)
    }

    public static func == (lhs: AccountMinimumPasswordLength, rhs: AccountMinimumPasswordLength) -> Bool {
        lhs.maximumLength == rhs.maximumLength &&
            lhs.minimumLength == rhs.minimumLength
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(maximumLength?.hashValue)
        hasher.combine(minimumLength?.hashValue)
    }
}
