//
// CurrencyFeatureSetPrice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Information about the price and currency associated with the feature set. Reserved for internal DocuSign use only. */
public final class CurrencyFeatureSetPrice: Content, Hashable {
    /** Reserved for DocuSign. */
    public var currencyCode: String?
    /** Reserved for DocuSign. */
    public var currencySymbol: String?
    /** Reserved for DocuSign. */
    public var envelopeFee: String?
    /** Reserved for DocuSign. */
    public var fixedFee: String?
    /** Reserved for DocuSign. */
    public var seatFee: String?

    public init(currencyCode: String? = nil, currencySymbol: String? = nil, envelopeFee: String? = nil, fixedFee: String? = nil, seatFee: String? = nil) {
        self.currencyCode = currencyCode
        self.currencySymbol = currencySymbol
        self.envelopeFee = envelopeFee
        self.fixedFee = fixedFee
        self.seatFee = seatFee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode
        case currencySymbol
        case envelopeFee
        case fixedFee
        case seatFee
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(envelopeFee, forKey: .envelopeFee)
        try container.encodeIfPresent(fixedFee, forKey: .fixedFee)
        try container.encodeIfPresent(seatFee, forKey: .seatFee)
    }

    public static func == (lhs: CurrencyFeatureSetPrice, rhs: CurrencyFeatureSetPrice) -> Bool {
        lhs.currencyCode == rhs.currencyCode &&
            lhs.currencySymbol == rhs.currencySymbol &&
            lhs.envelopeFee == rhs.envelopeFee &&
            lhs.fixedFee == rhs.fixedFee &&
            lhs.seatFee == rhs.seatFee
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(currencyCode?.hashValue)
        hasher.combine(currencySymbol?.hashValue)
        hasher.combine(envelopeFee?.hashValue)
        hasher.combine(fixedFee?.hashValue)
        hasher.combine(seatFee?.hashValue)
    }
}
