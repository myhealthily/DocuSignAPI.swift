//
// RecipientPhoneNumber.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class RecipientPhoneNumber: Content, Hashable {
    /** The three-letter code for the user's country. */
    public var countryCode: String?
    public var countryCodeMetadata: PropertyMetadata?
    /**  */
    public var number: String?
    public var numberMetadata: PropertyMetadata?

    public init(countryCode: String? = nil, countryCodeMetadata: PropertyMetadata? = nil, number: String? = nil, numberMetadata: PropertyMetadata? = nil) {
        self.countryCode = countryCode
        self.countryCodeMetadata = countryCodeMetadata
        self.number = number
        self.numberMetadata = numberMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case countryCodeMetadata
        case number
        case numberMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(countryCodeMetadata, forKey: .countryCodeMetadata)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(numberMetadata, forKey: .numberMetadata)
    }

    public static func == (lhs: RecipientPhoneNumber, rhs: RecipientPhoneNumber) -> Bool {
        lhs.countryCode == rhs.countryCode &&
            lhs.countryCodeMetadata == rhs.countryCodeMetadata &&
            lhs.number == rhs.number &&
            lhs.numberMetadata == rhs.numberMetadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(countryCode?.hashValue)
        hasher.combine(countryCodeMetadata?.hashValue)
        hasher.combine(number?.hashValue)
        hasher.combine(numberMetadata?.hashValue)
    }
}
