//
// RecipientRouting.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Describes the recipient routing rules. */
public final class RecipientRouting: Content {
    public var rules: RecipientRules?

    public init(rules: RecipientRules? = nil) {
        self.rules = rules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rules
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(rules, forKey: .rules)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        rules = try container.decodeIfPresent(RecipientRules.self, forKey: .rules)
    }
}

extension RecipientRouting: Hashable {
    public static func == (lhs: RecipientRouting, rhs: RecipientRouting) -> Bool {
        lhs.rules == rhs.rules
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(rules?.hashValue)
    }
}
