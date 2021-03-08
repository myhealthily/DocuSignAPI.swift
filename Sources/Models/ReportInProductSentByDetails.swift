//
// ReportInProductSentByDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class ReportInProductSentByDetails: Content {
    /** A collection group objects containing information about the groups. */
    public var groups: [Group]?
    /** User management information. */
    public var users: [UserInfo]?

    public init(groups: [Group]? = nil, users: [UserInfo]? = nil) {
        self.groups = groups
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groups
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(groups, forKey: .groups)
        try container.encodeIfPresent(users, forKey: .users)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        groups = try container.decodeIfPresent([Group].self, forKey: .groups)
        users = try container.decodeIfPresent([UserInfo].self, forKey: .users)
    }
}

extension ReportInProductSentByDetails: Hashable {
    public static func == (lhs: ReportInProductSentByDetails, rhs: ReportInProductSentByDetails) -> Bool {
        lhs.groups == rhs.groups &&
            lhs.users == rhs.users
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groups?.hashValue)
        hasher.combine(users?.hashValue)
    }
}
