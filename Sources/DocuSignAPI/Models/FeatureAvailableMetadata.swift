//
// FeatureAvailableMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class FeatureAvailableMetadata: Content, Hashable {
    /**  */
    public var availabilty: String?
    /**  */
    public var featureName: String?

    public init(availabilty: String? = nil, featureName: String? = nil) {
        self.availabilty = availabilty
        self.featureName = featureName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availabilty
        case featureName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availabilty, forKey: .availabilty)
        try container.encodeIfPresent(featureName, forKey: .featureName)
    }

    public static func == (lhs: FeatureAvailableMetadata, rhs: FeatureAvailableMetadata) -> Bool {
        lhs.availabilty == rhs.availabilty &&
            lhs.featureName == rhs.featureName
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(availabilty?.hashValue)
        hasher.combine(featureName?.hashValue)
    }
}
