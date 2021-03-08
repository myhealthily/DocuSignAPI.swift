//
// SigningGroupUsers.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Signing groups&#39; users */
public final class SigningGroupUsers: Content {
    /** User management information. */
    public var users: [SigningGroupUser]?

    public init(users: [SigningGroupUser]? = nil) {
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(users, forKey: .users)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        users = try container.decodeIfPresent([SigningGroupUser].self, forKey: .users)
    }
}

extension SigningGroupUsers: Hashable {
    public static func == (lhs: SigningGroupUsers, rhs: SigningGroupUsers) -> Bool {
        lhs.users == rhs.users
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(users?.hashValue)
    }
}