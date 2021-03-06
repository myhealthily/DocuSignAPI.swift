//
// BulkRecipientsSummaryResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class BulkRecipientsSummaryResponse: Content, Hashable {
    /** A complex type containing information about the bulk recipients in the response. */
    public var bulkRecipients: [BulkRecipient]?
    /** The number of items returned in this response. */
    public var bulkRecipientsCount: String?
    /** Reserved for DocuSign. */
    public var bulkRecipientsUri: String?
    /** Array or errors. */
    public var errorDetails: [ErrorDetails]?

    public init(bulkRecipients: [BulkRecipient]? = nil, bulkRecipientsCount: String? = nil, bulkRecipientsUri: String? = nil, errorDetails: [ErrorDetails]? = nil) {
        self.bulkRecipients = bulkRecipients
        self.bulkRecipientsCount = bulkRecipientsCount
        self.bulkRecipientsUri = bulkRecipientsUri
        self.errorDetails = errorDetails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bulkRecipients
        case bulkRecipientsCount
        case bulkRecipientsUri
        case errorDetails
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bulkRecipients, forKey: .bulkRecipients)
        try container.encodeIfPresent(bulkRecipientsCount, forKey: .bulkRecipientsCount)
        try container.encodeIfPresent(bulkRecipientsUri, forKey: .bulkRecipientsUri)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
    }

    public static func == (lhs: BulkRecipientsSummaryResponse, rhs: BulkRecipientsSummaryResponse) -> Bool {
        lhs.bulkRecipients == rhs.bulkRecipients &&
            lhs.bulkRecipientsCount == rhs.bulkRecipientsCount &&
            lhs.bulkRecipientsUri == rhs.bulkRecipientsUri &&
            lhs.errorDetails == rhs.errorDetails
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bulkRecipients?.hashValue)
        hasher.combine(bulkRecipientsCount?.hashValue)
        hasher.combine(bulkRecipientsUri?.hashValue)
        hasher.combine(errorDetails?.hashValue)
    }
}
