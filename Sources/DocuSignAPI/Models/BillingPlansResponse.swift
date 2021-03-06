//
// BillingPlansResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Defines a billing plans response object. */
public final class BillingPlansResponse: Content, Hashable {
    /** Reserved: TBD */
    public var billingPlans: [BillingPlan]?

    public init(billingPlans: [BillingPlan]? = nil) {
        self.billingPlans = billingPlans
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case billingPlans
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(billingPlans, forKey: .billingPlans)
    }

    public static func == (lhs: BillingPlansResponse, rhs: BillingPlansResponse) -> Bool {
        lhs.billingPlans == rhs.billingPlans
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(billingPlans?.hashValue)
    }
}
