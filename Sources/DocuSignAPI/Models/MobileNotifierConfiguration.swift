//
// MobileNotifierConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class MobileNotifierConfiguration: Content, Hashable {
    /**  */
    public var deviceId: String?
    public var errorDetails: ErrorDetails?
    /** The Platform of the client application */
    public var platform: String?

    public init(deviceId: String? = nil, errorDetails: ErrorDetails? = nil, platform: String? = nil) {
        self.deviceId = deviceId
        self.errorDetails = errorDetails
        self.platform = platform
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId
        case errorDetails
        case platform
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(platform, forKey: .platform)
    }

    public static func == (lhs: MobileNotifierConfiguration, rhs: MobileNotifierConfiguration) -> Bool {
        lhs.deviceId == rhs.deviceId &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.platform == rhs.platform
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(deviceId?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(platform?.hashValue)
    }
}
