//
// ResponsiveHtmlPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This resource is used to create a responsive preview of all of the documents in an envelope. */
public final class ResponsiveHtmlPreview: Content {
    /** Holds the properties that define how to generate the responsive-formatted HTML for the document. */
    public var htmlDefinitions: [String]?

    public init(htmlDefinitions: [String]? = nil) {
        self.htmlDefinitions = htmlDefinitions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case htmlDefinitions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(htmlDefinitions, forKey: .htmlDefinitions)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        htmlDefinitions = try container.decodeIfPresent([String].self, forKey: .htmlDefinitions)
    }
}

extension ResponsiveHtmlPreview: Hashable {
    public static func == (lhs: ResponsiveHtmlPreview, rhs: ResponsiveHtmlPreview) -> Bool {
        lhs.htmlDefinitions == rhs.htmlDefinitions
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(htmlDefinitions?.hashValue)
    }
}
