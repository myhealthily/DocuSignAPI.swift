//
// TemplateLocks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This section provides information about template locks. You use template locks to prevent others from making changes to a template while you are modifying it. */
public final class TemplateLocks: Content {
    public var errorDetails: ErrorDetails?
    /** Sets the time, in seconds, until the lock expires when there is no activity on the envelope.  If no value is entered, then the default value of 300 seconds is used. The maximum value is 1,800 seconds.  The lock duration can be extended.  */
    public var lockDurationInSeconds: String?
    /** Specifies the friendly name of  the application that is locking the envelope. */
    public var lockedByApp: String?
    public var lockedByUser: UserInfo?
    /** The date and time that the lock expires. */
    public var lockedUntilDateTime: String?
    /** A unique identifier provided to the owner of the lock. You must use this token with subsequent calls to prove ownership of the lock. */
    public var lockToken: String?
    /** The type of lock.  Currently `edit` is the only supported type. */
    public var lockType: String?
    /** When set to **true**, a scratchpad is used to edit information.   */
    public var useScratchPad: String?

    public init(errorDetails: ErrorDetails? = nil, lockDurationInSeconds: String? = nil, lockedByApp: String? = nil, lockedByUser: UserInfo? = nil, lockedUntilDateTime: String? = nil, lockToken: String? = nil, lockType: String? = nil, useScratchPad: String? = nil) {
        self.errorDetails = errorDetails
        self.lockDurationInSeconds = lockDurationInSeconds
        self.lockedByApp = lockedByApp
        self.lockedByUser = lockedByUser
        self.lockedUntilDateTime = lockedUntilDateTime
        self.lockToken = lockToken
        self.lockType = lockType
        self.useScratchPad = useScratchPad
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorDetails
        case lockDurationInSeconds
        case lockedByApp
        case lockedByUser
        case lockedUntilDateTime
        case lockToken
        case lockType
        case useScratchPad
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(lockDurationInSeconds, forKey: .lockDurationInSeconds)
        try container.encodeIfPresent(lockedByApp, forKey: .lockedByApp)
        try container.encodeIfPresent(lockedByUser, forKey: .lockedByUser)
        try container.encodeIfPresent(lockedUntilDateTime, forKey: .lockedUntilDateTime)
        try container.encodeIfPresent(lockToken, forKey: .lockToken)
        try container.encodeIfPresent(lockType, forKey: .lockType)
        try container.encodeIfPresent(useScratchPad, forKey: .useScratchPad)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        lockDurationInSeconds = try container.decodeIfPresent(String.self, forKey: .lockDurationInSeconds)
        lockedByApp = try container.decodeIfPresent(String.self, forKey: .lockedByApp)
        lockedByUser = try container.decodeIfPresent(UserInfo.self, forKey: .lockedByUser)
        lockedUntilDateTime = try container.decodeIfPresent(String.self, forKey: .lockedUntilDateTime)
        lockToken = try container.decodeIfPresent(String.self, forKey: .lockToken)
        lockType = try container.decodeIfPresent(String.self, forKey: .lockType)
        useScratchPad = try container.decodeIfPresent(String.self, forKey: .useScratchPad)
    }
}

extension TemplateLocks: Hashable {
    public static func == (lhs: TemplateLocks, rhs: TemplateLocks) -> Bool {
        lhs.errorDetails == rhs.errorDetails &&
            lhs.lockDurationInSeconds == rhs.lockDurationInSeconds &&
            lhs.lockedByApp == rhs.lockedByApp &&
            lhs.lockedByUser == rhs.lockedByUser &&
            lhs.lockedUntilDateTime == rhs.lockedUntilDateTime &&
            lhs.lockToken == rhs.lockToken &&
            lhs.lockType == rhs.lockType &&
            lhs.useScratchPad == rhs.useScratchPad
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(lockDurationInSeconds?.hashValue)
        hasher.combine(lockedByApp?.hashValue)
        hasher.combine(lockedByUser?.hashValue)
        hasher.combine(lockedUntilDateTime?.hashValue)
        hasher.combine(lockToken?.hashValue)
        hasher.combine(lockType?.hashValue)
        hasher.combine(useScratchPad?.hashValue)
    }
}
