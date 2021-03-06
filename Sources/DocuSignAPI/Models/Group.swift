//
// Group.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains information about a group. */
public final class Group: Content, Hashable {
    public var errorDetails: ErrorDetails?
    /** The DocuSign group ID for the group. */
    public var groupId: String?
    /** The name of the group. */
    public var groupName: String?
    /** The group type. Possible values include:  - `adminstrators` - `everyone` - `customGroup` - `sharedSigningGroup`  <!-- More? To do --> */
    public var groupType: String?
    /** The ID of the permission profile associated with the group. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile) */
    public var permissionProfileId: String?
    /** A list of the users in the group. */
    public var users: [UserInfo]?
    /** The total number of users in the group. */
    public var usersCount: String?

    public init(errorDetails: ErrorDetails? = nil, groupId: String? = nil, groupName: String? = nil, groupType: String? = nil, permissionProfileId: String? = nil, users: [UserInfo]? = nil, usersCount: String? = nil) {
        self.errorDetails = errorDetails
        self.groupId = groupId
        self.groupName = groupName
        self.groupType = groupType
        self.permissionProfileId = permissionProfileId
        self.users = users
        self.usersCount = usersCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorDetails
        case groupId
        case groupName
        case groupType
        case permissionProfileId
        case users
        case usersCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(groupType, forKey: .groupType)
        try container.encodeIfPresent(permissionProfileId, forKey: .permissionProfileId)
        try container.encodeIfPresent(users, forKey: .users)
        try container.encodeIfPresent(usersCount, forKey: .usersCount)
    }

    public static func == (lhs: Group, rhs: Group) -> Bool {
        lhs.errorDetails == rhs.errorDetails &&
            lhs.groupId == rhs.groupId &&
            lhs.groupName == rhs.groupName &&
            lhs.groupType == rhs.groupType &&
            lhs.permissionProfileId == rhs.permissionProfileId &&
            lhs.users == rhs.users &&
            lhs.usersCount == rhs.usersCount
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(groupId?.hashValue)
        hasher.combine(groupName?.hashValue)
        hasher.combine(groupType?.hashValue)
        hasher.combine(permissionProfileId?.hashValue)
        hasher.combine(users?.hashValue)
        hasher.combine(usersCount?.hashValue)
    }
}
