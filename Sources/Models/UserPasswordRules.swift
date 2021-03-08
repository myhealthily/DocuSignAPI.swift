//
// UserPasswordRules.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Contains details about the password rules for a user. */
public final class UserPasswordRules: Content {
    public var passwordRules: AccountPasswordRules?
    /** The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.  */
    public var userId: String?

    public init(passwordRules: AccountPasswordRules? = nil, userId: String? = nil) {
        self.passwordRules = passwordRules
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case passwordRules
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(passwordRules, forKey: .passwordRules)
        try container.encodeIfPresent(userId, forKey: .userId)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        passwordRules = try container.decodeIfPresent(AccountPasswordRules.self, forKey: .passwordRules)
        userId = try container.decodeIfPresent(String.self, forKey: .userId)
    }
}

extension UserPasswordRules: Hashable {
    public static func == (lhs: UserPasswordRules, rhs: UserPasswordRules) -> Bool {
        lhs.passwordRules == rhs.passwordRules &&
            lhs.userId == rhs.userId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(passwordRules?.hashValue)
        hasher.combine(userId?.hashValue)
    }
}