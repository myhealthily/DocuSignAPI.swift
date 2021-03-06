//
// EnvelopeMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EnvelopeMetadata: Content, Hashable {
    /** Specifies if the Advanced Correct feature is enabled for the envelope. This feature enables you to correct the details of in process envelopes that you sent or are shared with you. It offers more functionality than the Correct feature. */
    public var allowAdvancedCorrect: String?
    /** Specifies if the Correct feature is enabled for the envelope. This feature enables you to correct the details of in process envelopes that you sent or are shared with you, including the recipient, envelope, and document information. */
    public var allowCorrect: String?
    /** Specifies if DocuSign eNotary service is enabled for the envelope. */
    public var enableSignWithNotary: String?

    public init(allowAdvancedCorrect: String? = nil, allowCorrect: String? = nil, enableSignWithNotary: String? = nil) {
        self.allowAdvancedCorrect = allowAdvancedCorrect
        self.allowCorrect = allowCorrect
        self.enableSignWithNotary = enableSignWithNotary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowAdvancedCorrect
        case allowCorrect
        case enableSignWithNotary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allowAdvancedCorrect, forKey: .allowAdvancedCorrect)
        try container.encodeIfPresent(allowCorrect, forKey: .allowCorrect)
        try container.encodeIfPresent(enableSignWithNotary, forKey: .enableSignWithNotary)
    }

    public static func == (lhs: EnvelopeMetadata, rhs: EnvelopeMetadata) -> Bool {
        lhs.allowAdvancedCorrect == rhs.allowAdvancedCorrect &&
            lhs.allowCorrect == rhs.allowCorrect &&
            lhs.enableSignWithNotary == rhs.enableSignWithNotary
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(allowAdvancedCorrect?.hashValue)
        hasher.combine(allowCorrect?.hashValue)
        hasher.combine(enableSignWithNotary?.hashValue)
    }
}
