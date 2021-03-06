//
// BillingPlan.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Contains information about a billing plan. */
public final class BillingPlan: Content, Hashable {
    /** Reserved for DocuSign. */
    public var appStoreProducts: [AppStoreProduct]?
    /** Contains the `currencyCode` and `currencySymbol` for the alternate currency values for `envelopeFee`, `fixedFee`, and `seatFee` that are configured for this plan feature set. */
    public var currencyPlanPrices: [CurrencyPlanPrice]?
    /** When set to **true**, customer support is provided as part of the account plan. */
    public var enableSupport: String?
    /** The number of seats (users) included in the plan. */
    public var includedSeats: String?
    /** Any other percentage discount for the plan.  Example: `\"0.00\"` */
    public var otherDiscountPercent: String?
    /** The payment cycle associated with the plan. The possible values are:   - `Monthly` - `Annually`  */
    public var paymentCycle: String?
    /** The payment method used for the billing plan. Valid values are:  - `NotSupported` - `CreditCard` - `PurchaseOrder` - `Premium` - `Freemium` - `FreeTrial` - `AppStore` - `DigitalExternal` - `DirectDebit` */
    public var paymentMethod: String?
    /** The per-seat price associated with the plan.  Example: `\"456.0000\"` */
    public var perSeatPrice: String?
    /** Identifies the type of plan. Examples include:  - `business` - `corporate` - `enterprise`  - `free` */
    public var planClassification: String?
    /** Reserved for DocuSign. */
    public var planFeatureSets: [FeatureSet]?
    /** DocuSign's id for the account plan. */
    public var planId: String?
    /**   */
    public var planName: String?
    /** A complex type that returns information about any seat discounts. It contains the information `BeginSeatCount`, `EndSeatCount` and `SeatDiscountPercent`. */
    public var seatDiscounts: [SeatDiscount]?
    /** The support incident fee charged for each support incident.  Example: `\"$0.00\"` */
    public var supportIncidentFee: String?
    /** The support plan fee charged for this plan.  Example: `\"$0.00\"` */
    public var supportPlanFee: String?

    public init(appStoreProducts: [AppStoreProduct]? = nil, currencyPlanPrices: [CurrencyPlanPrice]? = nil, enableSupport: String? = nil, includedSeats: String? = nil, otherDiscountPercent: String? = nil, paymentCycle: String? = nil, paymentMethod: String? = nil, perSeatPrice: String? = nil, planClassification: String? = nil, planFeatureSets: [FeatureSet]? = nil, planId: String? = nil, planName: String? = nil, seatDiscounts: [SeatDiscount]? = nil, supportIncidentFee: String? = nil, supportPlanFee: String? = nil) {
        self.appStoreProducts = appStoreProducts
        self.currencyPlanPrices = currencyPlanPrices
        self.enableSupport = enableSupport
        self.includedSeats = includedSeats
        self.otherDiscountPercent = otherDiscountPercent
        self.paymentCycle = paymentCycle
        self.paymentMethod = paymentMethod
        self.perSeatPrice = perSeatPrice
        self.planClassification = planClassification
        self.planFeatureSets = planFeatureSets
        self.planId = planId
        self.planName = planName
        self.seatDiscounts = seatDiscounts
        self.supportIncidentFee = supportIncidentFee
        self.supportPlanFee = supportPlanFee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreProducts
        case currencyPlanPrices
        case enableSupport
        case includedSeats
        case otherDiscountPercent
        case paymentCycle
        case paymentMethod
        case perSeatPrice
        case planClassification
        case planFeatureSets
        case planId
        case planName
        case seatDiscounts
        case supportIncidentFee
        case supportPlanFee
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreProducts, forKey: .appStoreProducts)
        try container.encodeIfPresent(currencyPlanPrices, forKey: .currencyPlanPrices)
        try container.encodeIfPresent(enableSupport, forKey: .enableSupport)
        try container.encodeIfPresent(includedSeats, forKey: .includedSeats)
        try container.encodeIfPresent(otherDiscountPercent, forKey: .otherDiscountPercent)
        try container.encodeIfPresent(paymentCycle, forKey: .paymentCycle)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(perSeatPrice, forKey: .perSeatPrice)
        try container.encodeIfPresent(planClassification, forKey: .planClassification)
        try container.encodeIfPresent(planFeatureSets, forKey: .planFeatureSets)
        try container.encodeIfPresent(planId, forKey: .planId)
        try container.encodeIfPresent(planName, forKey: .planName)
        try container.encodeIfPresent(seatDiscounts, forKey: .seatDiscounts)
        try container.encodeIfPresent(supportIncidentFee, forKey: .supportIncidentFee)
        try container.encodeIfPresent(supportPlanFee, forKey: .supportPlanFee)
    }

    public static func == (lhs: BillingPlan, rhs: BillingPlan) -> Bool {
        lhs.appStoreProducts == rhs.appStoreProducts &&
            lhs.currencyPlanPrices == rhs.currencyPlanPrices &&
            lhs.enableSupport == rhs.enableSupport &&
            lhs.includedSeats == rhs.includedSeats &&
            lhs.otherDiscountPercent == rhs.otherDiscountPercent &&
            lhs.paymentCycle == rhs.paymentCycle &&
            lhs.paymentMethod == rhs.paymentMethod &&
            lhs.perSeatPrice == rhs.perSeatPrice &&
            lhs.planClassification == rhs.planClassification &&
            lhs.planFeatureSets == rhs.planFeatureSets &&
            lhs.planId == rhs.planId &&
            lhs.planName == rhs.planName &&
            lhs.seatDiscounts == rhs.seatDiscounts &&
            lhs.supportIncidentFee == rhs.supportIncidentFee &&
            lhs.supportPlanFee == rhs.supportPlanFee
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(appStoreProducts?.hashValue)
        hasher.combine(currencyPlanPrices?.hashValue)
        hasher.combine(enableSupport?.hashValue)
        hasher.combine(includedSeats?.hashValue)
        hasher.combine(otherDiscountPercent?.hashValue)
        hasher.combine(paymentCycle?.hashValue)
        hasher.combine(paymentMethod?.hashValue)
        hasher.combine(perSeatPrice?.hashValue)
        hasher.combine(planClassification?.hashValue)
        hasher.combine(planFeatureSets?.hashValue)
        hasher.combine(planId?.hashValue)
        hasher.combine(planName?.hashValue)
        hasher.combine(seatDiscounts?.hashValue)
        hasher.combine(supportIncidentFee?.hashValue)
        hasher.combine(supportPlanFee?.hashValue)
    }
}
