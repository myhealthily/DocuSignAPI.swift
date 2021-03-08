//
// TemplateSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Summary of a template request. */
public final class TemplateSummary: Content {
    /** Reserved for DocuSign. */
    public var applied: String?
    /** Specifies the document ID number that the tab is placed on. This must refer to an existing document's id attribute. */
    public var documentId: String?
    /** The name of the document. */
    public var documentName: String?
    public var errorDetails: ErrorDetails?
    /** The name of the template. */
    public var name: String?
    /** The unique identifier of the template. If this is not provided, DocuSign will generate a value.  */
    public var templateId: String?
    public var templateMatch: TemplateMatch?
    /** A URI containing the user ID. */
    public var uri: String?

    public init(applied: String? = nil, documentId: String? = nil, documentName: String? = nil, errorDetails: ErrorDetails? = nil, name: String? = nil, templateId: String? = nil, templateMatch: TemplateMatch? = nil, uri: String? = nil) {
        self.applied = applied
        self.documentId = documentId
        self.documentName = documentName
        self.errorDetails = errorDetails
        self.name = name
        self.templateId = templateId
        self.templateMatch = templateMatch
        self.uri = uri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case applied
        case documentId
        case documentName
        case errorDetails
        case name
        case templateId
        case templateMatch
        case uri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(applied, forKey: .applied)
        try container.encodeIfPresent(documentId, forKey: .documentId)
        try container.encodeIfPresent(documentName, forKey: .documentName)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(templateId, forKey: .templateId)
        try container.encodeIfPresent(templateMatch, forKey: .templateMatch)
        try container.encodeIfPresent(uri, forKey: .uri)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        applied = try container.decodeIfPresent(String.self, forKey: .applied)
        documentId = try container.decodeIfPresent(String.self, forKey: .documentId)
        documentName = try container.decodeIfPresent(String.self, forKey: .documentName)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
        templateMatch = try container.decodeIfPresent(TemplateMatch.self, forKey: .templateMatch)
        uri = try container.decodeIfPresent(String.self, forKey: .uri)
    }
}

extension TemplateSummary: Hashable {
    public static func == (lhs: TemplateSummary, rhs: TemplateSummary) -> Bool {
        lhs.applied == rhs.applied &&
            lhs.documentId == rhs.documentId &&
            lhs.documentName == rhs.documentName &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.name == rhs.name &&
            lhs.templateId == rhs.templateId &&
            lhs.templateMatch == rhs.templateMatch &&
            lhs.uri == rhs.uri
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(applied?.hashValue)
        hasher.combine(documentId?.hashValue)
        hasher.combine(documentName?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(templateId?.hashValue)
        hasher.combine(templateMatch?.hashValue)
        hasher.combine(uri?.hashValue)
    }
}
