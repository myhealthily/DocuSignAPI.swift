//
// BillingPlanResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Defines a billing plan response object. */
public final class BillingPlanResponse: Content {
    public var billingPlan: BillingPlan?
    /** A list of billing plans that the current billing plan can be rolled into. */
    public var successorPlans: [BillingPlan]?

    public init(billingPlan: BillingPlan? = nil, successorPlans: [BillingPlan]? = nil) {
        self.billingPlan = billingPlan
        self.successorPlans = successorPlans
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case billingPlan
        case successorPlans
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(billingPlan, forKey: .billingPlan)
        try container.encodeIfPresent(successorPlans, forKey: .successorPlans)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        billingPlan = try container.decodeIfPresent(BillingPlan.self, forKey: .billingPlan)
        successorPlans = try container.decodeIfPresent([BillingPlan].self, forKey: .successorPlans)
    }
}

extension BillingPlanResponse: Hashable {
    public static func == (lhs: BillingPlanResponse, rhs: BillingPlanResponse) -> Bool {
        lhs.billingPlan == rhs.billingPlan &&
            lhs.successorPlans == rhs.successorPlans
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(billingPlan?.hashValue)
        hasher.combine(successorPlans?.hashValue)
    }
}
