//
// Page.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Description of a page of a document. */
public final class Page: Content, Hashable {
    /** The number of dots per inch used for the page image. */
    public var dpi: String?
    public var errorDetails: ErrorDetails?
    /** The height of the page in pixels. */
    public var height: String?
    /** The number of image bytes. */
    public var imageBytes: String?
    /** The MIME type. */
    public var mimeType: String?
    /** The id of the page. */
    public var pageId: String?
    /** The sequence of the page in the document, or page number. */
    public var sequence: String?
    /** The width of the page in pixels. */
    public var width: String?

    public init(dpi: String? = nil, errorDetails: ErrorDetails? = nil, height: String? = nil, imageBytes: String? = nil, mimeType: String? = nil, pageId: String? = nil, sequence: String? = nil, width: String? = nil) {
        self.dpi = dpi
        self.errorDetails = errorDetails
        self.height = height
        self.imageBytes = imageBytes
        self.mimeType = mimeType
        self.pageId = pageId
        self.sequence = sequence
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dpi
        case errorDetails
        case height
        case imageBytes
        case mimeType
        case pageId
        case sequence
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dpi, forKey: .dpi)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(imageBytes, forKey: .imageBytes)
        try container.encodeIfPresent(mimeType, forKey: .mimeType)
        try container.encodeIfPresent(pageId, forKey: .pageId)
        try container.encodeIfPresent(sequence, forKey: .sequence)
        try container.encodeIfPresent(width, forKey: .width)
    }

    public static func == (lhs: Page, rhs: Page) -> Bool {
        lhs.dpi == rhs.dpi &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.height == rhs.height &&
            lhs.imageBytes == rhs.imageBytes &&
            lhs.mimeType == rhs.mimeType &&
            lhs.pageId == rhs.pageId &&
            lhs.sequence == rhs.sequence &&
            lhs.width == rhs.width
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(dpi?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(height?.hashValue)
        hasher.combine(imageBytes?.hashValue)
        hasher.combine(mimeType?.hashValue)
        hasher.combine(pageId?.hashValue)
        hasher.combine(sequence?.hashValue)
        hasher.combine(width?.hashValue)
    }
}
