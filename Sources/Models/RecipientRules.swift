//
// RecipientRules.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class RecipientRules: Content {
    /**  */
    public var conditionalRecipients: [ConditionalRecipientRule]?

    public init(conditionalRecipients: [ConditionalRecipientRule]? = nil) {
        self.conditionalRecipients = conditionalRecipients
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case conditionalRecipients
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(conditionalRecipients, forKey: .conditionalRecipients)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        conditionalRecipients = try container.decodeIfPresent([ConditionalRecipientRule].self, forKey: .conditionalRecipients)
    }
}

extension RecipientRules: Hashable {
    public static func == (lhs: RecipientRules, rhs: RecipientRules) -> Bool {
        lhs.conditionalRecipients == rhs.conditionalRecipients
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(conditionalRecipients?.hashValue)
    }
}
