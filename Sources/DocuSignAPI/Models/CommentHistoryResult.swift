//
// CommentHistoryResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class CommentHistoryResult: Content, Hashable {
    /** An array of comment tabs that contain information about users' comments on documents. */
    public var comments: [Comment]?
    /** The maximum number of results to return. */
    public var count: Int?
    /**  */
    public var endTimetoken: String?
    /**  */
    public var startTimetoken: String?

    public init(comments: [Comment]? = nil, count: Int? = nil, endTimetoken: String? = nil, startTimetoken: String? = nil) {
        self.comments = comments
        self.count = count
        self.endTimetoken = endTimetoken
        self.startTimetoken = startTimetoken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case comments
        case count
        case endTimetoken
        case startTimetoken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(comments, forKey: .comments)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(endTimetoken, forKey: .endTimetoken)
        try container.encodeIfPresent(startTimetoken, forKey: .startTimetoken)
    }

    public static func == (lhs: CommentHistoryResult, rhs: CommentHistoryResult) -> Bool {
        lhs.comments == rhs.comments &&
            lhs.count == rhs.count &&
            lhs.endTimetoken == rhs.endTimetoken &&
            lhs.startTimetoken == rhs.startTimetoken
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(comments?.hashValue)
        hasher.combine(count?.hashValue)
        hasher.combine(endTimetoken?.hashValue)
        hasher.combine(startTimetoken?.hashValue)
    }
}
