//
// PayPalLegacySettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class PayPalLegacySettings: Content, Hashable {
    /** The three-letter [ISO 4217][ISO4217] currency code for the payment.  For example:  * AUD Australian dollar * CAD Canadian dollar * EUR Euro * GBP Great Britain pound * USD United States dollar  This is a read-only property.  [ISO4217]:          https://en.wikipedia.org/wiki/ISO_4217  */
    public var currency: String?
    /**  */
    public var partner: String?
    /** The user's encrypted password hash. */
    public var password: String?
    /** The name of the user. */
    public var userName: String?
    /**  */
    public var vendor: String?

    public init(currency: String? = nil, partner: String? = nil, password: String? = nil, userName: String? = nil, vendor: String? = nil) {
        self.currency = currency
        self.partner = partner
        self.password = password
        self.userName = userName
        self.vendor = vendor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case partner
        case password
        case userName
        case vendor
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(partner, forKey: .partner)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(vendor, forKey: .vendor)
    }

    public static func == (lhs: PayPalLegacySettings, rhs: PayPalLegacySettings) -> Bool {
        lhs.currency == rhs.currency &&
            lhs.partner == rhs.partner &&
            lhs.password == rhs.password &&
            lhs.userName == rhs.userName &&
            lhs.vendor == rhs.vendor
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(currency?.hashValue)
        hasher.combine(partner?.hashValue)
        hasher.combine(password?.hashValue)
        hasher.combine(userName?.hashValue)
        hasher.combine(vendor?.hashValue)
    }
}
