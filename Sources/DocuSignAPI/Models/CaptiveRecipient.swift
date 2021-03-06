//
// CaptiveRecipient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains details about a captive (embedded) recipient. */
public final class CaptiveRecipient: Content, Hashable {
    /** Specifies whether the recipient is embedded or remote.   If the `clientUserId` property is not null then the recipient is embedded. Use this field to associate the signer with their userId in your app. Authenticating the user is the responsibility of your app when you use embedded signing.  Note: if the `clientUserId` property is set and either `SignerMustHaveAccount` or `SignerMustLoginToSign` property of the account settings is set to  **true**, an error is generated on sending.   Maximum length: 100 characters.  */
    public var clientUserId: String?
    /** The email address associated with the captive recipient. */
    public var email: String?
    public var errorDetails: ErrorDetails?
    /** The username associated with the captive recipient. */
    public var userName: String?

    public init(clientUserId: String? = nil, email: String? = nil, errorDetails: ErrorDetails? = nil, userName: String? = nil) {
        self.clientUserId = clientUserId
        self.email = email
        self.errorDetails = errorDetails
        self.userName = userName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clientUserId
        case email
        case errorDetails
        case userName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(clientUserId, forKey: .clientUserId)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(userName, forKey: .userName)
    }

    public static func == (lhs: CaptiveRecipient, rhs: CaptiveRecipient) -> Bool {
        lhs.clientUserId == rhs.clientUserId &&
            lhs.email == rhs.email &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.userName == rhs.userName
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(clientUserId?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(userName?.hashValue)
    }
}
