//
// EnvelopeAttachmentsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EnvelopeAttachmentsResult: Content, Hashable {
    /** An array of attachment objects that contain information about the attachments. */
    public var attachments: [EnvelopeAttachment]?

    public init(attachments: [EnvelopeAttachment]? = nil) {
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

    public static func == (lhs: EnvelopeAttachmentsResult, rhs: EnvelopeAttachmentsResult) -> Bool {
        lhs.attachments == rhs.attachments
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(attachments?.hashValue)
    }
}