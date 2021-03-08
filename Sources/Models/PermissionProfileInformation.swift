//
// PermissionProfileInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Contains details about the permission profiles associated with an account. */
public final class PermissionProfileInformation: Content {
    /** A complex type containing a collection of permission profiles. */
    public var permissionProfiles: [PermissionProfile]?

    public init(permissionProfiles: [PermissionProfile]? = nil) {
        self.permissionProfiles = permissionProfiles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case permissionProfiles
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(permissionProfiles, forKey: .permissionProfiles)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        permissionProfiles = try container.decodeIfPresent([PermissionProfile].self, forKey: .permissionProfiles)
    }
}

extension PermissionProfileInformation: Hashable {
    public static func == (lhs: PermissionProfileInformation, rhs: PermissionProfileInformation) -> Bool {
        lhs.permissionProfiles == rhs.permissionProfiles
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(permissionProfiles?.hashValue)
    }
}
