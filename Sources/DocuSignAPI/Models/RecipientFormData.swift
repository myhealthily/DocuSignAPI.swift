//
// RecipientFormData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class RecipientFormData: Content, Hashable {
    /** The date and time the recipient declined the envelope. */
    public var declinedTime: String?
    /** The date and time the recipient viewed the documents in the envelope in the DocuSign signing UI. */
    public var deliveredTime: String?
    /** The recipient's email address. */
    public var email: String?
    /** An array of form data objects. */
    public var formData: [FormDataItem]?
    /** The name of the recipient. */
    public var name: String?
    /** A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`. */
    public var recipientId: String?
    /** The date and time the envelope was sent to the recipient. */
    public var sentTime: String?
    /** The date and time the recipient signed the documents. */
    public var signedTime: String?

    public init(declinedTime: String? = nil, deliveredTime: String? = nil, email: String? = nil, formData: [FormDataItem]? = nil, name: String? = nil, recipientId: String? = nil, sentTime: String? = nil, signedTime: String? = nil) {
        self.declinedTime = declinedTime
        self.deliveredTime = deliveredTime
        self.email = email
        self.formData = formData
        self.name = name
        self.recipientId = recipientId
        self.sentTime = sentTime
        self.signedTime = signedTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case declinedTime = "DeclinedTime"
        case deliveredTime = "DeliveredTime"
        case email
        case formData
        case name
        case recipientId
        case sentTime = "SentTime"
        case signedTime = "SignedTime"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(declinedTime, forKey: .declinedTime)
        try container.encodeIfPresent(deliveredTime, forKey: .deliveredTime)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(formData, forKey: .formData)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(recipientId, forKey: .recipientId)
        try container.encodeIfPresent(sentTime, forKey: .sentTime)
        try container.encodeIfPresent(signedTime, forKey: .signedTime)
    }

    public static func == (lhs: RecipientFormData, rhs: RecipientFormData) -> Bool {
        lhs.declinedTime == rhs.declinedTime &&
            lhs.deliveredTime == rhs.deliveredTime &&
            lhs.email == rhs.email &&
            lhs.formData == rhs.formData &&
            lhs.name == rhs.name &&
            lhs.recipientId == rhs.recipientId &&
            lhs.sentTime == rhs.sentTime &&
            lhs.signedTime == rhs.signedTime
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(declinedTime?.hashValue)
        hasher.combine(deliveredTime?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(formData?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(recipientId?.hashValue)
        hasher.combine(sentTime?.hashValue)
        hasher.combine(signedTime?.hashValue)
    }
}