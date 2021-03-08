//
// DowngradeBillingPlanInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class DowngradeBillingPlanInformation: Content {
    /**  */
    public var downgradeEventType: String?
    public var planInformation: PlanInformation?

    public init(downgradeEventType: String? = nil, planInformation: PlanInformation? = nil) {
        self.downgradeEventType = downgradeEventType
        self.planInformation = planInformation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case downgradeEventType
        case planInformation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(downgradeEventType, forKey: .downgradeEventType)
        try container.encodeIfPresent(planInformation, forKey: .planInformation)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        downgradeEventType = try container.decodeIfPresent(String.self, forKey: .downgradeEventType)
        planInformation = try container.decodeIfPresent(PlanInformation.self, forKey: .planInformation)
    }
}

extension DowngradeBillingPlanInformation: Hashable {
    public static func == (lhs: DowngradeBillingPlanInformation, rhs: DowngradeBillingPlanInformation) -> Bool {
        lhs.downgradeEventType == rhs.downgradeEventType &&
            lhs.planInformation == rhs.planInformation
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(downgradeEventType?.hashValue)
        hasher.combine(planInformation?.hashValue)
    }
}
