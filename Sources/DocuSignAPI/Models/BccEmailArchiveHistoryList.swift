//
// BccEmailArchiveHistoryList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class BccEmailArchiveHistoryList: Content, Hashable {
    /** A list of changes to the BCC email archive configuration. */
    public var bccEmailArchiveHistory: [BccEmailArchiveHistory]?
    /** The last index position in the result set.  */
    public var endPosition: String?
    /** The URI for the next chunk of records based on the search request. It is `null` if this is the last set of results for the search.  */
    public var nextUri: String?
    /** The URI for the prior chunk of records based on the search request. It is `null` if this is the first set of results for the search.  */
    public var previousUri: String?
    /** The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the `totalSetSize`. */
    public var resultSetSize: String?
    /** The starting index position of the current result set. */
    public var startPosition: String?
    /** The total number of items in the result set. This value is always greater than or equal to the value of `resultSetSize`. */
    public var totalSetSize: String?

    public init(bccEmailArchiveHistory: [BccEmailArchiveHistory]? = nil, endPosition: String? = nil, nextUri: String? = nil, previousUri: String? = nil, resultSetSize: String? = nil, startPosition: String? = nil, totalSetSize: String? = nil) {
        self.bccEmailArchiveHistory = bccEmailArchiveHistory
        self.endPosition = endPosition
        self.nextUri = nextUri
        self.previousUri = previousUri
        self.resultSetSize = resultSetSize
        self.startPosition = startPosition
        self.totalSetSize = totalSetSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bccEmailArchiveHistory
        case endPosition
        case nextUri
        case previousUri
        case resultSetSize
        case startPosition
        case totalSetSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bccEmailArchiveHistory, forKey: .bccEmailArchiveHistory)
        try container.encodeIfPresent(endPosition, forKey: .endPosition)
        try container.encodeIfPresent(nextUri, forKey: .nextUri)
        try container.encodeIfPresent(previousUri, forKey: .previousUri)
        try container.encodeIfPresent(resultSetSize, forKey: .resultSetSize)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
        try container.encodeIfPresent(totalSetSize, forKey: .totalSetSize)
    }

    public static func == (lhs: BccEmailArchiveHistoryList, rhs: BccEmailArchiveHistoryList) -> Bool {
        lhs.bccEmailArchiveHistory == rhs.bccEmailArchiveHistory &&
            lhs.endPosition == rhs.endPosition &&
            lhs.nextUri == rhs.nextUri &&
            lhs.previousUri == rhs.previousUri &&
            lhs.resultSetSize == rhs.resultSetSize &&
            lhs.startPosition == rhs.startPosition &&
            lhs.totalSetSize == rhs.totalSetSize
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bccEmailArchiveHistory?.hashValue)
        hasher.combine(endPosition?.hashValue)
        hasher.combine(nextUri?.hashValue)
        hasher.combine(previousUri?.hashValue)
        hasher.combine(resultSetSize?.hashValue)
        hasher.combine(startPosition?.hashValue)
        hasher.combine(totalSetSize?.hashValue)
    }
}
