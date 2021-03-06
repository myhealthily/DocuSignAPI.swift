//
// EnvelopeNotificationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** A complex element that specifies the notification settings for the envelope. */
public final class EnvelopeNotificationRequest: Content, Hashable {
    public var expirations: Expirations?
    public var reminders: Reminders?
    /** When set to **true**, the account default notification settings are used for the envelope, overriding the reminders and expirations settings. When set to **false**, the reminders and expirations settings specified in this request are used. */
    public var useAccountDefaults: String?

    public init(expirations: Expirations? = nil, reminders: Reminders? = nil, useAccountDefaults: String? = nil) {
        self.expirations = expirations
        self.reminders = reminders
        self.useAccountDefaults = useAccountDefaults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expirations
        case reminders
        case useAccountDefaults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(expirations, forKey: .expirations)
        try container.encodeIfPresent(reminders, forKey: .reminders)
        try container.encodeIfPresent(useAccountDefaults, forKey: .useAccountDefaults)
    }

    public static func == (lhs: EnvelopeNotificationRequest, rhs: EnvelopeNotificationRequest) -> Bool {
        lhs.expirations == rhs.expirations &&
            lhs.reminders == rhs.reminders &&
            lhs.useAccountDefaults == rhs.useAccountDefaults
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(expirations?.hashValue)
        hasher.combine(reminders?.hashValue)
        hasher.combine(useAccountDefaults?.hashValue)
    }
}
