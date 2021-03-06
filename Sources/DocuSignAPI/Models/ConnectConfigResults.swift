//
// ConnectConfigResults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains the results of a ConnectConfigurations::GET method. */
public final class ConnectConfigResults: Content, Hashable {
    /** An array of DocuSign Connect configurations. */
    public var configurations: [ConnectCustomConfiguration]?
    /** The number of results. */
    public var totalRecords: String?

    public init(configurations: [ConnectCustomConfiguration]? = nil, totalRecords: String? = nil) {
        self.configurations = configurations
        self.totalRecords = totalRecords
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case configurations
        case totalRecords
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(configurations, forKey: .configurations)
        try container.encodeIfPresent(totalRecords, forKey: .totalRecords)
    }

    public static func == (lhs: ConnectConfigResults, rhs: ConnectConfigResults) -> Bool {
        lhs.configurations == rhs.configurations &&
            lhs.totalRecords == rhs.totalRecords
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(configurations?.hashValue)
        hasher.combine(totalRecords?.hashValue)
    }
}
