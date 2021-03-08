//
// SharedItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Information about the shared item. */
public final class SharedItem: Content {
    public var errorDetails: ErrorDetails?
    /** How the item is shared. One of:  - `not_shared` - `shared_to` - `shared_from` - `shared_to_and_from` */
    public var shared: String?
    public var user: UserInfo?

    public init(errorDetails: ErrorDetails? = nil, shared: String? = nil, user: UserInfo? = nil) {
        self.errorDetails = errorDetails
        self.shared = shared
        self.user = user
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorDetails
        case shared
        case user
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(shared, forKey: .shared)
        try container.encodeIfPresent(user, forKey: .user)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        shared = try container.decodeIfPresent(String.self, forKey: .shared)
        user = try container.decodeIfPresent(UserInfo.self, forKey: .user)
    }
}

extension SharedItem: Hashable {
    public static func == (lhs: SharedItem, rhs: SharedItem) -> Bool {
        lhs.errorDetails == rhs.errorDetails &&
            lhs.shared == rhs.shared &&
            lhs.user == rhs.user
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(shared?.hashValue)
        hasher.combine(user?.hashValue)
    }
}
