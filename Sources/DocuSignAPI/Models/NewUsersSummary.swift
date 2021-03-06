//
// NewUsersSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Object representing a summary of data for new users. */
public final class NewUsersSummary: Content, Hashable {
    /** A list of one or more new users. */
    public var newUsers: [NewUser]?

    public init(newUsers: [NewUser]? = nil) {
        self.newUsers = newUsers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case newUsers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(newUsers, forKey: .newUsers)
    }

    public static func == (lhs: NewUsersSummary, rhs: NewUsersSummary) -> Bool {
        lhs.newUsers == rhs.newUsers
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(newUsers?.hashValue)
    }
}
