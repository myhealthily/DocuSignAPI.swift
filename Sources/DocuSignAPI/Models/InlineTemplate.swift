//
// InlineTemplate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class InlineTemplate: Content, Hashable {
    public var customFields: AccountCustomFields?
    /** A complex element that contains details about the documents associated with the envelope. */
    public var documents: [Document]?
    public var envelope: Envelope?
    public var recipients: EnvelopeRecipients?
    /** Specifies the order in which templates are overlaid. */
    public var sequence: String?

    public init(customFields: AccountCustomFields? = nil, documents: [Document]? = nil, envelope: Envelope? = nil, recipients: EnvelopeRecipients? = nil, sequence: String? = nil) {
        self.customFields = customFields
        self.documents = documents
        self.envelope = envelope
        self.recipients = recipients
        self.sequence = sequence
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customFields
        case documents
        case envelope
        case recipients
        case sequence
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(customFields, forKey: .customFields)
        try container.encodeIfPresent(documents, forKey: .documents)
        try container.encodeIfPresent(envelope, forKey: .envelope)
        try container.encodeIfPresent(recipients, forKey: .recipients)
        try container.encodeIfPresent(sequence, forKey: .sequence)
    }

    public static func == (lhs: InlineTemplate, rhs: InlineTemplate) -> Bool {
        lhs.customFields == rhs.customFields &&
            lhs.documents == rhs.documents &&
            lhs.envelope == rhs.envelope &&
            lhs.recipients == rhs.recipients &&
            lhs.sequence == rhs.sequence
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(customFields?.hashValue)
        hasher.combine(documents?.hashValue)
        hasher.combine(envelope?.hashValue)
        hasher.combine(recipients?.hashValue)
        hasher.combine(sequence?.hashValue)
    }
}
