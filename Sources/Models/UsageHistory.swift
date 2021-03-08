//
// UsageHistory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** A complex element consisting of:   * lastSentDateTime - the date and time the user last sent an envelope.  * lastSignedDateTime - the date and time the user last signed an envelope. * sentCount - the number of envelopes the user has sent. * signedCount - the number of envelopes the user has signed. */
public final class UsageHistory: Content {
    /** The date and time the user last sent an envelope.  */
    public var lastSentDateTime: String?
    /** The date and time the user last signed an envelope. */
    public var lastSignedDateTime: String?
    /** The number of envelopes the user has sent.  */
    public var sentCount: String?
    /** The number of envelopes the user has signed.  */
    public var signedCount: String?

    public init(lastSentDateTime: String? = nil, lastSignedDateTime: String? = nil, sentCount: String? = nil, signedCount: String? = nil) {
        self.lastSentDateTime = lastSentDateTime
        self.lastSignedDateTime = lastSignedDateTime
        self.sentCount = sentCount
        self.signedCount = signedCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lastSentDateTime
        case lastSignedDateTime
        case sentCount
        case signedCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(lastSentDateTime, forKey: .lastSentDateTime)
        try container.encodeIfPresent(lastSignedDateTime, forKey: .lastSignedDateTime)
        try container.encodeIfPresent(sentCount, forKey: .sentCount)
        try container.encodeIfPresent(signedCount, forKey: .signedCount)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        lastSentDateTime = try container.decodeIfPresent(String.self, forKey: .lastSentDateTime)
        lastSignedDateTime = try container.decodeIfPresent(String.self, forKey: .lastSignedDateTime)
        sentCount = try container.decodeIfPresent(String.self, forKey: .sentCount)
        signedCount = try container.decodeIfPresent(String.self, forKey: .signedCount)
    }
}

extension UsageHistory: Hashable {
    public static func == (lhs: UsageHistory, rhs: UsageHistory) -> Bool {
        lhs.lastSentDateTime == rhs.lastSentDateTime &&
            lhs.lastSignedDateTime == rhs.lastSignedDateTime &&
            lhs.sentCount == rhs.sentCount &&
            lhs.signedCount == rhs.signedCount
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(lastSentDateTime?.hashValue)
        hasher.combine(lastSignedDateTime?.hashValue)
        hasher.combine(sentCount?.hashValue)
        hasher.combine(signedCount?.hashValue)
    }
}