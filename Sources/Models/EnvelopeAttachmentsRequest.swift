//
// EnvelopeAttachmentsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class EnvelopeAttachmentsRequest: Content {
    /** An object that contains information about the attachment. */
    public var attachments: [Attachment]?

    public init(attachments: [Attachment]? = nil) {
        self.attachments = attachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(attachments, forKey: .attachments)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attachments = try container.decodeIfPresent([Attachment].self, forKey: .attachments)
    }
}

extension EnvelopeAttachmentsRequest: Hashable {
    public static func == (lhs: EnvelopeAttachmentsRequest, rhs: EnvelopeAttachmentsRequest) -> Bool {
        lhs.attachments == rhs.attachments
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(attachments?.hashValue)
    }
}
