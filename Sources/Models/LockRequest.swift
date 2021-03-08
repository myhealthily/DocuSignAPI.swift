//
// LockRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This request object contains information about the lock that you want to create or update. */
public final class LockRequest: Content {
    /** The number of seconds to lock the envelope for editing.  This value must be greater than `0` seconds. */
    public var lockDurationInSeconds: String?
    /** The human-readable name of the application that is locking the envelope or template. This value displays to the user in error messages when lock conflicts occur. */
    public var lockedByApp: String?
    /** The type of lock.  Currently `edit` is the only supported type. */
    public var lockType: String?
    /** The [password for the template](https://support.docusign.com/en/guides/ndse-user-guide-template-passwords). If you are using a lock for a template that has a password or an envelope that is based on a template that has a password, you must enter the `templatePassword` to save the changes. */
    public var templatePassword: String?
    /** When set to **true**, a scratchpad is used to edit information.   */
    public var useScratchPad: String?

    public init(lockDurationInSeconds: String? = nil, lockedByApp: String? = nil, lockType: String? = nil, templatePassword: String? = nil, useScratchPad: String? = nil) {
        self.lockDurationInSeconds = lockDurationInSeconds
        self.lockedByApp = lockedByApp
        self.lockType = lockType
        self.templatePassword = templatePassword
        self.useScratchPad = useScratchPad
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lockDurationInSeconds
        case lockedByApp
        case lockType
        case templatePassword
        case useScratchPad
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(lockDurationInSeconds, forKey: .lockDurationInSeconds)
        try container.encodeIfPresent(lockedByApp, forKey: .lockedByApp)
        try container.encodeIfPresent(lockType, forKey: .lockType)
        try container.encodeIfPresent(templatePassword, forKey: .templatePassword)
        try container.encodeIfPresent(useScratchPad, forKey: .useScratchPad)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        lockDurationInSeconds = try container.decodeIfPresent(String.self, forKey: .lockDurationInSeconds)
        lockedByApp = try container.decodeIfPresent(String.self, forKey: .lockedByApp)
        lockType = try container.decodeIfPresent(String.self, forKey: .lockType)
        templatePassword = try container.decodeIfPresent(String.self, forKey: .templatePassword)
        useScratchPad = try container.decodeIfPresent(String.self, forKey: .useScratchPad)
    }
}

extension LockRequest: Hashable {
    public static func == (lhs: LockRequest, rhs: LockRequest) -> Bool {
        lhs.lockDurationInSeconds == rhs.lockDurationInSeconds &&
            lhs.lockedByApp == rhs.lockedByApp &&
            lhs.lockType == rhs.lockType &&
            lhs.templatePassword == rhs.templatePassword &&
            lhs.useScratchPad == rhs.useScratchPad
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(lockDurationInSeconds?.hashValue)
        hasher.combine(lockedByApp?.hashValue)
        hasher.combine(lockType?.hashValue)
        hasher.combine(templatePassword?.hashValue)
        hasher.combine(useScratchPad?.hashValue)
    }
}