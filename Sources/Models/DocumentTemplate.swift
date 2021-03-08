//
// DocumentTemplate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class DocumentTemplate: Content {
    /**  */
    public var documentEndPage: String?
    /** Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute. */
    public var documentId: String?
    /**  */
    public var documentStartPage: String?
    public var errorDetails: ErrorDetails?
    /** The unique identifier of the template. If this is not provided, DocuSign generates an error and the call fails. */
    public var templateId: String?

    public init(documentEndPage: String? = nil, documentId: String? = nil, documentStartPage: String? = nil, errorDetails: ErrorDetails? = nil, templateId: String? = nil) {
        self.documentEndPage = documentEndPage
        self.documentId = documentId
        self.documentStartPage = documentStartPage
        self.errorDetails = errorDetails
        self.templateId = templateId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentEndPage
        case documentId
        case documentStartPage
        case errorDetails
        case templateId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(documentEndPage, forKey: .documentEndPage)
        try container.encodeIfPresent(documentId, forKey: .documentId)
        try container.encodeIfPresent(documentStartPage, forKey: .documentStartPage)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(templateId, forKey: .templateId)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        documentEndPage = try container.decodeIfPresent(String.self, forKey: .documentEndPage)
        documentId = try container.decodeIfPresent(String.self, forKey: .documentId)
        documentStartPage = try container.decodeIfPresent(String.self, forKey: .documentStartPage)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
    }
}

extension DocumentTemplate: Hashable {
    public static func == (lhs: DocumentTemplate, rhs: DocumentTemplate) -> Bool {
        lhs.documentEndPage == rhs.documentEndPage &&
            lhs.documentId == rhs.documentId &&
            lhs.documentStartPage == rhs.documentStartPage &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.templateId == rhs.templateId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(documentEndPage?.hashValue)
        hasher.combine(documentId?.hashValue)
        hasher.combine(documentStartPage?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(templateId?.hashValue)
    }
}
