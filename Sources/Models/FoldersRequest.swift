//
// FoldersRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Information for a folder request. */
public final class FoldersRequest: Content {
    /** A comma-separated list of envelope IDs. */
    public var envelopeIds: [String]?
    /** A list of folder objects. */
    public var folders: [Folder]?
    /**  The id of the folder that the envelope is being moved from. */
    public var fromFolderId: String?

    public init(envelopeIds: [String]? = nil, folders: [Folder]? = nil, fromFolderId: String? = nil) {
        self.envelopeIds = envelopeIds
        self.folders = folders
        self.fromFolderId = fromFolderId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case envelopeIds
        case folders
        case fromFolderId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(envelopeIds, forKey: .envelopeIds)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(fromFolderId, forKey: .fromFolderId)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        envelopeIds = try container.decodeIfPresent([String].self, forKey: .envelopeIds)
        folders = try container.decodeIfPresent([Folder].self, forKey: .folders)
        fromFolderId = try container.decodeIfPresent(String.self, forKey: .fromFolderId)
    }
}

extension FoldersRequest: Hashable {
    public static func == (lhs: FoldersRequest, rhs: FoldersRequest) -> Bool {
        lhs.envelopeIds == rhs.envelopeIds &&
            lhs.folders == rhs.folders &&
            lhs.fromFolderId == rhs.fromFolderId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(envelopeIds?.hashValue)
        hasher.combine(folders?.hashValue)
        hasher.combine(fromFolderId?.hashValue)
    }
}
