//
// AccountPermissionProfiles.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** The AccountPermissionProfiles resource provides methods that allow you to manage permission profiles for groups of account users. */
public final class AccountPermissionProfiles: Content {
    /** The username of the user who last modified the permission profile. */
    public var modifiedByUsername: String?
    /** The date and time when the permission profile was last modified. */
    public var modifiedDateTime: String?
    /** The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`. */
    public var permissionProfileId: String?
    /** The name of the account permission profile.   Example: `Account Administrator` */
    public var permissionProfileName: String?
    public var settings: AccountRoleSettings?
    /** The total number of users in the group associated with the account permission profile. */
    public var userCount: String?
    /** A list of user objects containing information about the users who are associated with the account permission profile. */
    public var users: [UserInformation]?

    public init(modifiedByUsername: String? = nil, modifiedDateTime: String? = nil, permissionProfileId: String? = nil, permissionProfileName: String? = nil, settings: AccountRoleSettings? = nil, userCount: String? = nil, users: [UserInformation]? = nil) {
        self.modifiedByUsername = modifiedByUsername
        self.modifiedDateTime = modifiedDateTime
        self.permissionProfileId = permissionProfileId
        self.permissionProfileName = permissionProfileName
        self.settings = settings
        self.userCount = userCount
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case modifiedByUsername
        case modifiedDateTime
        case permissionProfileId
        case permissionProfileName
        case settings
        case userCount
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(modifiedByUsername, forKey: .modifiedByUsername)
        try container.encodeIfPresent(modifiedDateTime, forKey: .modifiedDateTime)
        try container.encodeIfPresent(permissionProfileId, forKey: .permissionProfileId)
        try container.encodeIfPresent(permissionProfileName, forKey: .permissionProfileName)
        try container.encodeIfPresent(settings, forKey: .settings)
        try container.encodeIfPresent(userCount, forKey: .userCount)
        try container.encodeIfPresent(users, forKey: .users)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        modifiedByUsername = try container.decodeIfPresent(String.self, forKey: .modifiedByUsername)
        modifiedDateTime = try container.decodeIfPresent(String.self, forKey: .modifiedDateTime)
        permissionProfileId = try container.decodeIfPresent(String.self, forKey: .permissionProfileId)
        permissionProfileName = try container.decodeIfPresent(String.self, forKey: .permissionProfileName)
        settings = try container.decodeIfPresent(AccountRoleSettings.self, forKey: .settings)
        userCount = try container.decodeIfPresent(String.self, forKey: .userCount)
        users = try container.decodeIfPresent([UserInformation].self, forKey: .users)
    }
}

extension AccountPermissionProfiles: Hashable {
    public static func == (lhs: AccountPermissionProfiles, rhs: AccountPermissionProfiles) -> Bool {
        lhs.modifiedByUsername == rhs.modifiedByUsername &&
            lhs.modifiedDateTime == rhs.modifiedDateTime &&
            lhs.permissionProfileId == rhs.permissionProfileId &&
            lhs.permissionProfileName == rhs.permissionProfileName &&
            lhs.settings == rhs.settings &&
            lhs.userCount == rhs.userCount &&
            lhs.users == rhs.users
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(modifiedByUsername?.hashValue)
        hasher.combine(modifiedDateTime?.hashValue)
        hasher.combine(permissionProfileId?.hashValue)
        hasher.combine(permissionProfileName?.hashValue)
        hasher.combine(settings?.hashValue)
        hasher.combine(userCount?.hashValue)
        hasher.combine(users?.hashValue)
    }
}
