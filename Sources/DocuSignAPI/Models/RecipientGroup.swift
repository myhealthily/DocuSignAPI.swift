//
// RecipientGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Describes a group of recipients. */
public final class RecipientGroup: Content, Hashable {
    /** The group message, typically a description of the group. */
    public var groupMessage: String?
    /** The name of the group */
    public var groupName: String?
    /** An array of recipient objects that provides details about the recipients of the envelope. */
    public var recipients: [RecipientOption]?

    public init(groupMessage: String? = nil, groupName: String? = nil, recipients: [RecipientOption]? = nil) {
        self.groupMessage = groupMessage
        self.groupName = groupName
        self.recipients = recipients
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupMessage
        case groupName
        case recipients
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(groupMessage, forKey: .groupMessage)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(recipients, forKey: .recipients)
    }

    public static func == (lhs: RecipientGroup, rhs: RecipientGroup) -> Bool {
        lhs.groupMessage == rhs.groupMessage &&
            lhs.groupName == rhs.groupName &&
            lhs.recipients == rhs.recipients
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupMessage?.hashValue)
        hasher.combine(groupName?.hashValue)
        hasher.combine(recipients?.hashValue)
    }
}
