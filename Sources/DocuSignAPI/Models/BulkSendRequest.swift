//
// BulkSendRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains information about the envelope or template that you want to send in bulk. */
public final class BulkSendRequest: Content, Hashable {
    /**  */
    public var batchName: String?
    /** The GUID of the envelope or template that you want to send in bulk. */
    public var envelopeOrTemplateId: String?

    public init(batchName: String? = nil, envelopeOrTemplateId: String? = nil) {
        self.batchName = batchName
        self.envelopeOrTemplateId = envelopeOrTemplateId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case batchName
        case envelopeOrTemplateId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(batchName, forKey: .batchName)
        try container.encodeIfPresent(envelopeOrTemplateId, forKey: .envelopeOrTemplateId)
    }

    public static func == (lhs: BulkSendRequest, rhs: BulkSendRequest) -> Bool {
        lhs.batchName == rhs.batchName &&
            lhs.envelopeOrTemplateId == rhs.envelopeOrTemplateId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(batchName?.hashValue)
        hasher.combine(envelopeOrTemplateId?.hashValue)
    }
}
