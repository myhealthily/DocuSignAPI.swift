//
// AccountPasswordStrengthType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class AccountPasswordStrengthType: Content {
    /** An array of option strings supported by this setting. */
    public var options: [AccountPasswordStrengthTypeOption]?

    public init(options: [AccountPasswordStrengthTypeOption]? = nil) {
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(options, forKey: .options)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        options = try container.decodeIfPresent([AccountPasswordStrengthTypeOption].self, forKey: .options)
    }
}

extension AccountPasswordStrengthType: Hashable {
    public static func == (lhs: AccountPasswordStrengthType, rhs: AccountPasswordStrengthType) -> Bool {
        lhs.options == rhs.options
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(options?.hashValue)
    }
}
