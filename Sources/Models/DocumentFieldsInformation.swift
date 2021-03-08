//
// DocumentFieldsInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class DocumentFieldsInformation: Content {
    /**  */
    public var documentFields: [NameValue]?

    public init(documentFields: [NameValue]? = nil) {
        self.documentFields = documentFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentFields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(documentFields, forKey: .documentFields)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        documentFields = try container.decodeIfPresent([NameValue].self, forKey: .documentFields)
    }
}

extension DocumentFieldsInformation: Hashable {
    public static func == (lhs: DocumentFieldsInformation, rhs: DocumentFieldsInformation) -> Bool {
        lhs.documentFields == rhs.documentFields
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(documentFields?.hashValue)
    }
}