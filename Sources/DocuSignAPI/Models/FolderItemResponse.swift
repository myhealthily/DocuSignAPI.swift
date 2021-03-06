//
// FolderItemResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Results from a folder item request. */
public final class FolderItemResponse: Content, Hashable {
    /** The last index position in the result set.  */
    public var endPosition: String?
    /** A list of the envelopes in the specified folder or folders.  */
    public var folderItems: [FolderItemV2]?
    /** The URI for the next chunk of records based on the search request. It is `null` if this is the last set of results for the search.  */
    public var nextUri: String?
    /** The URI for the prior chunk of records based on the search request. It is `null` if this is the first set of results for the search.  */
    public var previousUri: String?
    /** The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the `totalSetSize`. */
    public var resultSetSize: String?
    /** The starting index position of the current result set. */
    public var startPosition: String?
    /** The total number of items in the result. */
    public var totalRows: String?

    public init(endPosition: String? = nil, folderItems: [FolderItemV2]? = nil, nextUri: String? = nil, previousUri: String? = nil, resultSetSize: String? = nil, startPosition: String? = nil, totalRows: String? = nil) {
        self.endPosition = endPosition
        self.folderItems = folderItems
        self.nextUri = nextUri
        self.previousUri = previousUri
        self.resultSetSize = resultSetSize
        self.startPosition = startPosition
        self.totalRows = totalRows
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case endPosition
        case folderItems
        case nextUri
        case previousUri
        case resultSetSize
        case startPosition
        case totalRows
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(endPosition, forKey: .endPosition)
        try container.encodeIfPresent(folderItems, forKey: .folderItems)
        try container.encodeIfPresent(nextUri, forKey: .nextUri)
        try container.encodeIfPresent(previousUri, forKey: .previousUri)
        try container.encodeIfPresent(resultSetSize, forKey: .resultSetSize)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
        try container.encodeIfPresent(totalRows, forKey: .totalRows)
    }

    public static func == (lhs: FolderItemResponse, rhs: FolderItemResponse) -> Bool {
        lhs.endPosition == rhs.endPosition &&
            lhs.folderItems == rhs.folderItems &&
            lhs.nextUri == rhs.nextUri &&
            lhs.previousUri == rhs.previousUri &&
            lhs.resultSetSize == rhs.resultSetSize &&
            lhs.startPosition == rhs.startPosition &&
            lhs.totalRows == rhs.totalRows
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(endPosition?.hashValue)
        hasher.combine(folderItems?.hashValue)
        hasher.combine(nextUri?.hashValue)
        hasher.combine(previousUri?.hashValue)
        hasher.combine(resultSetSize?.hashValue)
        hasher.combine(startPosition?.hashValue)
        hasher.combine(totalRows?.hashValue)
    }
}
