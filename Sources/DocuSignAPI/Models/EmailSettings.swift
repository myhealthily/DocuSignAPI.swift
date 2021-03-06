//
// EmailSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EmailSettings: Content, Hashable {
    /** An array containing the email address that should receive a copy of all email communications related to an envelope for archiving purposes. Maximum Length: 100 characters.  While this property is an array, note that it takes only a single email address.  **Note**: Only users with the `canManageAccount` setting set to **true** can use this option.   DocuSign verifies that the email format is correct, but does not verify that the email address is active. You can use this for archiving purposes. However, using this property overrides the BCC for Email Archive information setting for this envelope.   **Example**: if your account has BCC for Email Archive set up for the email address archive@mycompany.com and you send an envelope using the BCC Email Override to send a BCC email to salesarchive@mycompany.com, then a copy of the envelope is only sent to the salesarchive@mycompany.com email address. */
    public var bccEmailAddresses: [BccEmailAddress]?
    /** The Reply To email address to use for email replies, instead of the one that is configured at the account level. DocuSign verifies that the email address is in a correct format, but does not verify that it is active. Maximum Length: 100 characters. */
    public var replyEmailAddressOverride: String?
    /** The name to associate with the Reply To email address, instead of the name that is configured at the account level. Maximum Length: 100 characters. */
    public var replyEmailNameOverride: String?

    public init(bccEmailAddresses: [BccEmailAddress]? = nil, replyEmailAddressOverride: String? = nil, replyEmailNameOverride: String? = nil) {
        self.bccEmailAddresses = bccEmailAddresses
        self.replyEmailAddressOverride = replyEmailAddressOverride
        self.replyEmailNameOverride = replyEmailNameOverride
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bccEmailAddresses
        case replyEmailAddressOverride
        case replyEmailNameOverride
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bccEmailAddresses, forKey: .bccEmailAddresses)
        try container.encodeIfPresent(replyEmailAddressOverride, forKey: .replyEmailAddressOverride)
        try container.encodeIfPresent(replyEmailNameOverride, forKey: .replyEmailNameOverride)
    }

    public static func == (lhs: EmailSettings, rhs: EmailSettings) -> Bool {
        lhs.bccEmailAddresses == rhs.bccEmailAddresses &&
            lhs.replyEmailAddressOverride == rhs.replyEmailAddressOverride &&
            lhs.replyEmailNameOverride == rhs.replyEmailNameOverride
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bccEmailAddresses?.hashValue)
        hasher.combine(replyEmailAddressOverride?.hashValue)
        hasher.combine(replyEmailNameOverride?.hashValue)
    }
}
