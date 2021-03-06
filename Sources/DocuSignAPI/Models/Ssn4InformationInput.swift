//
// Ssn4InformationInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class Ssn4InformationInput: Content, Hashable {
    /** Specifies the display level for the recipient. Valid values are: * `ReadOnly` * `Editable` * `DoNotDisplay` */
    public var displayLevelCode: String?
    /** A Boolean value that specifies whether the information must be returned in the response. */
    public var receiveInResponse: String?
    /** The last four digits of the recipient's Social Security Number (SSN). */
    public var ssn4: String?

    public init(displayLevelCode: String? = nil, receiveInResponse: String? = nil, ssn4: String? = nil) {
        self.displayLevelCode = displayLevelCode
        self.receiveInResponse = receiveInResponse
        self.ssn4 = ssn4
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayLevelCode
        case receiveInResponse
        case ssn4
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayLevelCode, forKey: .displayLevelCode)
        try container.encodeIfPresent(receiveInResponse, forKey: .receiveInResponse)
        try container.encodeIfPresent(ssn4, forKey: .ssn4)
    }

    public static func == (lhs: Ssn4InformationInput, rhs: Ssn4InformationInput) -> Bool {
        lhs.displayLevelCode == rhs.displayLevelCode &&
            lhs.receiveInResponse == rhs.receiveInResponse &&
            lhs.ssn4 == rhs.ssn4
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(displayLevelCode?.hashValue)
        hasher.combine(receiveInResponse?.hashValue)
        hasher.combine(ssn4?.hashValue)
    }
}
