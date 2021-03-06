//
// FeatureSet.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object provides details about a feature set, or add-on product that is associated with an account. It is reserved for DocuSign internal use only. */
public final class FeatureSet: Content, Hashable {
    /** Reserved for DocuSign. */
    public var currencyFeatureSetPrices: [CurrencyFeatureSetPrice]?
    /** Reserved for DocuSign. */
    public var envelopeFee: String?
    /** Reserved for DocuSign. */
    public var featureSetId: String?
    /** Reserved for DocuSign. */
    public var fixedFee: String?
    /** Reserved for DocuSign. */
    public var is21CFRPart11: String?
    /** Reserved for DocuSign. */
    public var isActive: String?
    /** When set to **true**, the feature set is actively enabled as part of the plan. */
    public var isEnabled: String?
    /** Reserved for DocuSign. */
    public var name: String?
    /** Reserved for DocuSign. */
    public var seatFee: String?

    public init(currencyFeatureSetPrices: [CurrencyFeatureSetPrice]? = nil, envelopeFee: String? = nil, featureSetId: String? = nil, fixedFee: String? = nil, is21CFRPart11: String? = nil, isActive: String? = nil, isEnabled: String? = nil, name: String? = nil, seatFee: String? = nil) {
        self.currencyFeatureSetPrices = currencyFeatureSetPrices
        self.envelopeFee = envelopeFee
        self.featureSetId = featureSetId
        self.fixedFee = fixedFee
        self.is21CFRPart11 = is21CFRPart11
        self.isActive = isActive
        self.isEnabled = isEnabled
        self.name = name
        self.seatFee = seatFee
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyFeatureSetPrices
        case envelopeFee
        case featureSetId
        case fixedFee
        case is21CFRPart11
        case isActive
        case isEnabled
        case name
        case seatFee
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currencyFeatureSetPrices, forKey: .currencyFeatureSetPrices)
        try container.encodeIfPresent(envelopeFee, forKey: .envelopeFee)
        try container.encodeIfPresent(featureSetId, forKey: .featureSetId)
        try container.encodeIfPresent(fixedFee, forKey: .fixedFee)
        try container.encodeIfPresent(is21CFRPart11, forKey: .is21CFRPart11)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(seatFee, forKey: .seatFee)
    }

    public static func == (lhs: FeatureSet, rhs: FeatureSet) -> Bool {
        lhs.currencyFeatureSetPrices == rhs.currencyFeatureSetPrices &&
            lhs.envelopeFee == rhs.envelopeFee &&
            lhs.featureSetId == rhs.featureSetId &&
            lhs.fixedFee == rhs.fixedFee &&
            lhs.is21CFRPart11 == rhs.is21CFRPart11 &&
            lhs.isActive == rhs.isActive &&
            lhs.isEnabled == rhs.isEnabled &&
            lhs.name == rhs.name &&
            lhs.seatFee == rhs.seatFee
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(currencyFeatureSetPrices?.hashValue)
        hasher.combine(envelopeFee?.hashValue)
        hasher.combine(featureSetId?.hashValue)
        hasher.combine(fixedFee?.hashValue)
        hasher.combine(is21CFRPart11?.hashValue)
        hasher.combine(isActive?.hashValue)
        hasher.combine(isEnabled?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(seatFee?.hashValue)
    }
}
