//
// FoldersResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class FoldersResponse: Content {
    /** The last index position in the result set.  */
    public var endPosition: String?
    /** An array containing PowerForm data. */
    public var envelopes: [EnvelopeSummary]?
    /** A list of folder objects. */
    public var folders: [Folder]?
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

    public init(endPosition: String? = nil, envelopes: [EnvelopeSummary]? = nil, folders: [Folder]? = nil, nextUri: String? = nil, previousUri: String? = nil, resultSetSize: String? = nil, startPosition: String? = nil, totalSetSize: String? = nil) {
        self.endPosition = endPosition
        self.envelopes = envelopes
        self.folders = folders
        self.nextUri = nextUri
        self.previousUri = previousUri
        self.resultSetSize = resultSetSize
        self.startPosition = startPosition
        self.totalSetSize = totalSetSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case endPosition
        case envelopes
        case folders
        case nextUri
        case previousUri
        case resultSetSize
        case startPosition
        case totalSetSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(endPosition, forKey: .endPosition)
        try container.encodeIfPresent(envelopes, forKey: .envelopes)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(nextUri, forKey: .nextUri)
        try container.encodeIfPresent(previousUri, forKey: .previousUri)
        try container.encodeIfPresent(resultSetSize, forKey: .resultSetSize)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
        try container.encodeIfPresent(totalSetSize, forKey: .totalSetSize)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        endPosition = try container.decodeIfPresent(String.self, forKey: .endPosition)
        envelopes = try container.decodeIfPresent([EnvelopeSummary].self, forKey: .envelopes)
        folders = try container.decodeIfPresent([Folder].self, forKey: .folders)
        nextUri = try container.decodeIfPresent(String.self, forKey: .nextUri)
        previousUri = try container.decodeIfPresent(String.self, forKey: .previousUri)
        resultSetSize = try container.decodeIfPresent(String.self, forKey: .resultSetSize)
        startPosition = try container.decodeIfPresent(String.self, forKey: .startPosition)
        totalSetSize = try container.decodeIfPresent(String.self, forKey: .totalSetSize)
    }
}

extension FoldersResponse: Hashable {
    public static func == (lhs: FoldersResponse, rhs: FoldersResponse) -> Bool {
        lhs.endPosition == rhs.endPosition &&
            lhs.envelopes == rhs.envelopes &&
            lhs.folders == rhs.folders &&
            lhs.nextUri == rhs.nextUri &&
            lhs.previousUri == rhs.previousUri &&
            lhs.resultSetSize == rhs.resultSetSize &&
            lhs.startPosition == rhs.startPosition &&
            lhs.totalSetSize == rhs.totalSetSize
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(endPosition?.hashValue)
        hasher.combine(envelopes?.hashValue)
        hasher.combine(folders?.hashValue)
        hasher.combine(nextUri?.hashValue)
        hasher.combine(previousUri?.hashValue)
        hasher.combine(resultSetSize?.hashValue)
        hasher.combine(startPosition?.hashValue)
        hasher.combine(totalSetSize?.hashValue)
    }
}
