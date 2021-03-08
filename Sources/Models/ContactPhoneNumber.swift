//
// ContactPhoneNumber.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Details about the phone numbers associated with a specific contact. */
public final class ContactPhoneNumber: Content {
    /** The contact's phone number.  Example: `+12223334444` */
    public var phoneNumber: String?
    /** The type of phone number. Valid values are:  - `home` - `mobile` - `work` - `other` - `fax` */
    public var phoneType: String?

    public init(phoneNumber: String? = nil, phoneType: String? = nil) {
        self.phoneNumber = phoneNumber
        self.phoneType = phoneType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneNumber
        case phoneType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(phoneType, forKey: .phoneType)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        phoneType = try container.decodeIfPresent(String.self, forKey: .phoneType)
    }
}

extension ContactPhoneNumber: Hashable {
    public static func == (lhs: ContactPhoneNumber, rhs: ContactPhoneNumber) -> Bool {
        lhs.phoneNumber == rhs.phoneNumber &&
            lhs.phoneType == rhs.phoneType
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(phoneNumber?.hashValue)
        hasher.combine(phoneType?.hashValue)
    }
}