//
// BulkSendingCopy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object contains the details to use for a specific copy, or instance, of the envelope. When you send an envelope by using a bulk send list, you can customize these properties for each instance. */
public final class BulkSendingCopy: Content {
    /** The custom fields for this copy of the envelope.  **Note**: These custom fields must also be included in the original envelope or template that you want to send. */
    public var customFields: [BulkSendingCopyCustomField]?
    /** The email body for this copy of the envelope. */
    public var emailBlurb: String?
    /** The email subject line for this copy of the envelope. For information about adding merge field information to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields). */
    public var emailSubject: String?
    /** Information about the recipients associated with this copy of the envelope. */
    public var recipients: [BulkSendingCopyRecipient]?

    public init(customFields: [BulkSendingCopyCustomField]? = nil, emailBlurb: String? = nil, emailSubject: String? = nil, recipients: [BulkSendingCopyRecipient]? = nil) {
        self.customFields = customFields
        self.emailBlurb = emailBlurb
        self.emailSubject = emailSubject
        self.recipients = recipients
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customFields
        case emailBlurb
        case emailSubject
        case recipients
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(customFields, forKey: .customFields)
        try container.encodeIfPresent(emailBlurb, forKey: .emailBlurb)
        try container.encodeIfPresent(emailSubject, forKey: .emailSubject)
        try container.encodeIfPresent(recipients, forKey: .recipients)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        customFields = try container.decodeIfPresent([BulkSendingCopyCustomField].self, forKey: .customFields)
        emailBlurb = try container.decodeIfPresent(String.self, forKey: .emailBlurb)
        emailSubject = try container.decodeIfPresent(String.self, forKey: .emailSubject)
        recipients = try container.decodeIfPresent([BulkSendingCopyRecipient].self, forKey: .recipients)
    }
}

extension BulkSendingCopy: Hashable {
    public static func == (lhs: BulkSendingCopy, rhs: BulkSendingCopy) -> Bool {
        lhs.customFields == rhs.customFields &&
            lhs.emailBlurb == rhs.emailBlurb &&
            lhs.emailSubject == rhs.emailSubject &&
            lhs.recipients == rhs.recipients
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(customFields?.hashValue)
        hasher.combine(emailBlurb?.hashValue)
        hasher.combine(emailSubject?.hashValue)
        hasher.combine(recipients?.hashValue)
    }
}
