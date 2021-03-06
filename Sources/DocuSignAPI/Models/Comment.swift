//
// Comment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class Comment: Content, Hashable {
    /** The Guid of the envelope the comment thread belongs to. */
    public var envelopeId: String?
    /** Reserved for DocuSign. */
    public var hmac: String?
    /** The unique identifier for the comment. */
    public var id: String?
    /** An array of userIds that are mentioned directly in the body of a comment. */
    public var mentions: [String]?
    /** When **true**, indicates that the comment was read. */
    public var read: Bool?
    /** The email address of the user who created the comment. */
    public var sentByEmail: String?
    /** The full name of the user who created the comment. */
    public var sentByFullName: String?
    /** Reserved for DocuSign. */
    public var sentByImageId: String?
    /** The initials of the user who created the comment. */
    public var sentByInitials: String?
    /** The recipient id of the user who created the comment. */
    public var sentByRecipientId: String?
    /** The user id of the user who created the comment. */
    public var sentByUserId: String?
    /** The id of the signing group that can view the comment or that created the comment. */
    public var signingGroupId: String?
    /** Optional. The name of the signing group.   Maximum Length: 100 characters.  */
    public var signingGroupName: String?
    /** The subject of the envelope. */
    public var subject: String?
    /** The unique identifier for the tab that represents the comment thread. */
    public var tabId: String?
    /** The content of the comment, as UTF-8 text.   Maximum Length: 500 characters.  **Note**: The maximum size allowed for the entire message body is 32 KB.  */
    public var text: String?
    /** The unique identifier for the comment thread. */
    public var threadId: String?
    /** The userId of the user who created the thread. */
    public var threadOriginatorId: String?
    /** The time the comment was created. */
    public var timestamp: String?
    /** The time the comment was created, formatted according to the format of the user who created the comment. */
    public var timeStampFormatted: String?
    /** The user ids of the users that the comment is visible to. */
    public var visibleTo: [String]?

    public init(envelopeId: String? = nil, hmac: String? = nil, id: String? = nil, mentions: [String]? = nil, read: Bool? = nil, sentByEmail: String? = nil, sentByFullName: String? = nil, sentByImageId: String? = nil, sentByInitials: String? = nil, sentByRecipientId: String? = nil, sentByUserId: String? = nil, signingGroupId: String? = nil, signingGroupName: String? = nil, subject: String? = nil, tabId: String? = nil, text: String? = nil, threadId: String? = nil, threadOriginatorId: String? = nil, timestamp: String? = nil, timeStampFormatted: String? = nil, visibleTo: [String]? = nil) {
        self.envelopeId = envelopeId
        self.hmac = hmac
        self.id = id
        self.mentions = mentions
        self.read = read
        self.sentByEmail = sentByEmail
        self.sentByFullName = sentByFullName
        self.sentByImageId = sentByImageId
        self.sentByInitials = sentByInitials
        self.sentByRecipientId = sentByRecipientId
        self.sentByUserId = sentByUserId
        self.signingGroupId = signingGroupId
        self.signingGroupName = signingGroupName
        self.subject = subject
        self.tabId = tabId
        self.text = text
        self.threadId = threadId
        self.threadOriginatorId = threadOriginatorId
        self.timestamp = timestamp
        self.timeStampFormatted = timeStampFormatted
        self.visibleTo = visibleTo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case envelopeId
        case hmac
        case id
        case mentions
        case read
        case sentByEmail
        case sentByFullName
        case sentByImageId
        case sentByInitials
        case sentByRecipientId
        case sentByUserId
        case signingGroupId
        case signingGroupName
        case subject
        case tabId
        case text
        case threadId
        case threadOriginatorId
        case timestamp
        case timeStampFormatted
        case visibleTo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(envelopeId, forKey: .envelopeId)
        try container.encodeIfPresent(hmac, forKey: .hmac)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(mentions, forKey: .mentions)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(sentByEmail, forKey: .sentByEmail)
        try container.encodeIfPresent(sentByFullName, forKey: .sentByFullName)
        try container.encodeIfPresent(sentByImageId, forKey: .sentByImageId)
        try container.encodeIfPresent(sentByInitials, forKey: .sentByInitials)
        try container.encodeIfPresent(sentByRecipientId, forKey: .sentByRecipientId)
        try container.encodeIfPresent(sentByUserId, forKey: .sentByUserId)
        try container.encodeIfPresent(signingGroupId, forKey: .signingGroupId)
        try container.encodeIfPresent(signingGroupName, forKey: .signingGroupName)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(tabId, forKey: .tabId)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encodeIfPresent(threadOriginatorId, forKey: .threadOriginatorId)
        try container.encodeIfPresent(timestamp, forKey: .timestamp)
        try container.encodeIfPresent(timeStampFormatted, forKey: .timeStampFormatted)
        try container.encodeIfPresent(visibleTo, forKey: .visibleTo)
    }

    public static func == (lhs: Comment, rhs: Comment) -> Bool {
        lhs.envelopeId == rhs.envelopeId &&
            lhs.hmac == rhs.hmac &&
            lhs.id == rhs.id &&
            lhs.mentions == rhs.mentions &&
            lhs.read == rhs.read &&
            lhs.sentByEmail == rhs.sentByEmail &&
            lhs.sentByFullName == rhs.sentByFullName &&
            lhs.sentByImageId == rhs.sentByImageId &&
            lhs.sentByInitials == rhs.sentByInitials &&
            lhs.sentByRecipientId == rhs.sentByRecipientId &&
            lhs.sentByUserId == rhs.sentByUserId &&
            lhs.signingGroupId == rhs.signingGroupId &&
            lhs.signingGroupName == rhs.signingGroupName &&
            lhs.subject == rhs.subject &&
            lhs.tabId == rhs.tabId &&
            lhs.text == rhs.text &&
            lhs.threadId == rhs.threadId &&
            lhs.threadOriginatorId == rhs.threadOriginatorId &&
            lhs.timestamp == rhs.timestamp &&
            lhs.timeStampFormatted == rhs.timeStampFormatted &&
            lhs.visibleTo == rhs.visibleTo
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(envelopeId?.hashValue)
        hasher.combine(hmac?.hashValue)
        hasher.combine(id?.hashValue)
        hasher.combine(mentions?.hashValue)
        hasher.combine(read?.hashValue)
        hasher.combine(sentByEmail?.hashValue)
        hasher.combine(sentByFullName?.hashValue)
        hasher.combine(sentByImageId?.hashValue)
        hasher.combine(sentByInitials?.hashValue)
        hasher.combine(sentByRecipientId?.hashValue)
        hasher.combine(sentByUserId?.hashValue)
        hasher.combine(signingGroupId?.hashValue)
        hasher.combine(signingGroupName?.hashValue)
        hasher.combine(subject?.hashValue)
        hasher.combine(tabId?.hashValue)
        hasher.combine(text?.hashValue)
        hasher.combine(threadId?.hashValue)
        hasher.combine(threadOriginatorId?.hashValue)
        hasher.combine(timestamp?.hashValue)
        hasher.combine(timeStampFormatted?.hashValue)
        hasher.combine(visibleTo?.hashValue)
    }
}
