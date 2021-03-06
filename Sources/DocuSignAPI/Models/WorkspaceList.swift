//
// WorkspaceList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains a list of available workspaces. */
public final class WorkspaceList: Content, Hashable {
    /** The last index position in the result set.  */
    public var endPosition: String?
    /** The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the `totalSetSize`. */
    public var resultSetSize: String?
    /** The starting index position of the current result set. */
    public var startPosition: String?
    /** The total number of items in the result set. This value is always greater than or equal to the value of `resultSetSize`. */
    public var totalSetSize: String?
    /** A list of workspaces. */
    public var workspaces: [Workspace]?

    public init(endPosition: String? = nil, resultSetSize: String? = nil, startPosition: String? = nil, totalSetSize: String? = nil, workspaces: [Workspace]? = nil) {
        self.endPosition = endPosition
        self.resultSetSize = resultSetSize
        self.startPosition = startPosition
        self.totalSetSize = totalSetSize
        self.workspaces = workspaces
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case endPosition
        case resultSetSize
        case startPosition
        case totalSetSize
        case workspaces
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(endPosition, forKey: .endPosition)
        try container.encodeIfPresent(resultSetSize, forKey: .resultSetSize)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
        try container.encodeIfPresent(totalSetSize, forKey: .totalSetSize)
        try container.encodeIfPresent(workspaces, forKey: .workspaces)
    }

    public static func == (lhs: WorkspaceList, rhs: WorkspaceList) -> Bool {
        lhs.endPosition == rhs.endPosition &&
            lhs.resultSetSize == rhs.resultSetSize &&
            lhs.startPosition == rhs.startPosition &&
            lhs.totalSetSize == rhs.totalSetSize &&
            lhs.workspaces == rhs.workspaces
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(endPosition?.hashValue)
        hasher.combine(resultSetSize?.hashValue)
        hasher.combine(startPosition?.hashValue)
        hasher.combine(totalSetSize?.hashValue)
        hasher.combine(workspaces?.hashValue)
    }
}
