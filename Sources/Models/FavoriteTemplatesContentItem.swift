//
// FavoriteTemplatesContentItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class FavoriteTemplatesContentItem: Content {
    public var errorDetails: ErrorDetails?
    /**  */
    public var favoritedDate: String?
    /** The id of the template. */
    public var templateId: String?

    public init(errorDetails: ErrorDetails? = nil, favoritedDate: String? = nil, templateId: String? = nil) {
        self.errorDetails = errorDetails
        self.favoritedDate = favoritedDate
        self.templateId = templateId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorDetails
        case favoritedDate
        case templateId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(favoritedDate, forKey: .favoritedDate)
        try container.encodeIfPresent(templateId, forKey: .templateId)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        favoritedDate = try container.decodeIfPresent(String.self, forKey: .favoritedDate)
        templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
    }
}

extension FavoriteTemplatesContentItem: Hashable {
    public static func == (lhs: FavoriteTemplatesContentItem, rhs: FavoriteTemplatesContentItem) -> Bool {
        lhs.errorDetails == rhs.errorDetails &&
            lhs.favoritedDate == rhs.favoritedDate &&
            lhs.templateId == rhs.templateId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(favoritedDate?.hashValue)
        hasher.combine(templateId?.hashValue)
    }
}
