//
// DocumentVisibility.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object configures a recipient&#39;s read/write access to a document. */
public final class DocumentVisibility: Content {
    /** The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab. */
    public var documentId: String?
    public var errorDetails: ErrorDetails?
    /** A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`. */
    public var recipientId: String?
    /** Indicates whether the document is editable:  - `editable` - `read_only` */
    public var rights: String?
    /** When **true**, the document is visible to the recipient. */
    public var visible: String?

    public init(documentId: String? = nil, errorDetails: ErrorDetails? = nil, recipientId: String? = nil, rights: String? = nil, visible: String? = nil) {
        self.documentId = documentId
        self.errorDetails = errorDetails
        self.recipientId = recipientId
        self.rights = rights
        self.visible = visible
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentId
        case errorDetails
        case recipientId
        case rights
        case visible
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(documentId, forKey: .documentId)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(recipientId, forKey: .recipientId)
        try container.encodeIfPresent(rights, forKey: .rights)
        try container.encodeIfPresent(visible, forKey: .visible)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        documentId = try container.decodeIfPresent(String.self, forKey: .documentId)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        recipientId = try container.decodeIfPresent(String.self, forKey: .recipientId)
        rights = try container.decodeIfPresent(String.self, forKey: .rights)
        visible = try container.decodeIfPresent(String.self, forKey: .visible)
    }
}

extension DocumentVisibility: Hashable {
    public static func == (lhs: DocumentVisibility, rhs: DocumentVisibility) -> Bool {
        lhs.documentId == rhs.documentId &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.recipientId == rhs.recipientId &&
            lhs.rights == rhs.rights &&
            lhs.visible == rhs.visible
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(documentId?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(recipientId?.hashValue)
        hasher.combine(rights?.hashValue)
        hasher.combine(visible?.hashValue)
    }
}
