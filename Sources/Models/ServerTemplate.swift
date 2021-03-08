//
// ServerTemplate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class ServerTemplate: Content {
    /**  */
    public var sequence: String?
    /** The unique identifier of the template. If this is not provided, DocuSign will generate a value.  */
    public var templateId: String?

    public init(sequence: String? = nil, templateId: String? = nil) {
        self.sequence = sequence
        self.templateId = templateId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sequence
        case templateId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(sequence, forKey: .sequence)
        try container.encodeIfPresent(templateId, forKey: .templateId)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        sequence = try container.decodeIfPresent(String.self, forKey: .sequence)
        templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
    }
}

extension ServerTemplate: Hashable {
    public static func == (lhs: ServerTemplate, rhs: ServerTemplate) -> Bool {
        lhs.sequence == rhs.sequence &&
            lhs.templateId == rhs.templateId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(sequence?.hashValue)
        hasher.combine(templateId?.hashValue)
    }
}
