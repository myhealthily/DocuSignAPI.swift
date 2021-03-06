//
// BulkSendErrorStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class BulkSendErrorStatus: Content, Hashable {
    /** The UTC DateTime when the workspace user authorization was created. */
    public var created: String?
    /**  */
    public var errorMessage: String?
    /**  */
    public var recipientEmails: [String]?

    public init(created: String? = nil, errorMessage: String? = nil, recipientEmails: [String]? = nil) {
        self.created = created
        self.errorMessage = errorMessage
        self.recipientEmails = recipientEmails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case errorMessage
        case recipientEmails
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        try container.encodeIfPresent(recipientEmails, forKey: .recipientEmails)
    }

    public static func == (lhs: BulkSendErrorStatus, rhs: BulkSendErrorStatus) -> Bool {
        lhs.created == rhs.created &&
            lhs.errorMessage == rhs.errorMessage &&
            lhs.recipientEmails == rhs.recipientEmails
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(created?.hashValue)
        hasher.combine(errorMessage?.hashValue)
        hasher.combine(recipientEmails?.hashValue)
    }
}
