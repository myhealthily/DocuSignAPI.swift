//
// CurrencyPlanPrice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class CurrencyPlanPrice: Content, Hashable {
    /** Specifies the ISO currency code for the account. */
    public var currencyCode: String?
    /** Specifies the currency symbol for the account. */
    public var currencySymbol: String?
    /** The per-seat price associated with the plan.  Example: `\"456.0000\"` */
    public var perSeatPrice: String?
    public var supportedCardTypes: CreditCardTypes?
    /** The support incident fee charged for each support incident.  Example: `\"$0.00\"` */
    public var supportIncidentFee: String?
    /** The support plan fee charged for this plan.  Example: `\"$0.00\"` */
    public var supportPlanFee: String?

    public init(currencyCode: String? = nil, currencySymbol: String? = nil, perSeatPrice: String? = nil, supportedCardTypes: CreditCardTypes? = nil, supportIncidentFee: String? = nil, supportPlanFee: String? = nil) {
        self.currencyCode = currencyCode
        self.currencySymbol = currencySymbol
        self.perSeatPrice = perSeatPrice
        self.supportedCardTypes = supportedCardTypes
        self.supportIncidentFee = supportIncidentFee
        self.supportPlanFee = supportPlanFee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode
        case currencySymbol
        case perSeatPrice
        case supportedCardTypes
        case supportIncidentFee
        case supportPlanFee
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(perSeatPrice, forKey: .perSeatPrice)
        try container.encodeIfPresent(supportedCardTypes, forKey: .supportedCardTypes)
        try container.encodeIfPresent(supportIncidentFee, forKey: .supportIncidentFee)
        try container.encodeIfPresent(supportPlanFee, forKey: .supportPlanFee)
    }

    public static func == (lhs: CurrencyPlanPrice, rhs: CurrencyPlanPrice) -> Bool {
        lhs.currencyCode == rhs.currencyCode &&
            lhs.currencySymbol == rhs.currencySymbol &&
            lhs.perSeatPrice == rhs.perSeatPrice &&
            lhs.supportedCardTypes == rhs.supportedCardTypes &&
            lhs.supportIncidentFee == rhs.supportIncidentFee &&
            lhs.supportPlanFee == rhs.supportPlanFee
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(currencyCode?.hashValue)
        hasher.combine(currencySymbol?.hashValue)
        hasher.combine(perSeatPrice?.hashValue)
        hasher.combine(supportedCardTypes?.hashValue)
        hasher.combine(supportIncidentFee?.hashValue)
        hasher.combine(supportPlanFee?.hashValue)
    }
}