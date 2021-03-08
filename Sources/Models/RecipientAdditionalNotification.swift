//
// RecipientAdditionalNotification.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class RecipientAdditionalNotification: Content {
    public var phoneNumber: RecipientPhoneNumber?
    /**  */
    public var secondaryDeliveryMethod: String?
    public var secondaryDeliveryMethodMetadata: PropertyMetadata?
    /**  */
    public var secondaryDeliveryStatus: String?

    public init(phoneNumber: RecipientPhoneNumber? = nil, secondaryDeliveryMethod: String? = nil, secondaryDeliveryMethodMetadata: PropertyMetadata? = nil, secondaryDeliveryStatus: String? = nil) {
        self.phoneNumber = phoneNumber
        self.secondaryDeliveryMethod = secondaryDeliveryMethod
        self.secondaryDeliveryMethodMetadata = secondaryDeliveryMethodMetadata
        self.secondaryDeliveryStatus = secondaryDeliveryStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneNumber
        case secondaryDeliveryMethod
        case secondaryDeliveryMethodMetadata
        case secondaryDeliveryStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(secondaryDeliveryMethod, forKey: .secondaryDeliveryMethod)
        try container.encodeIfPresent(secondaryDeliveryMethodMetadata, forKey: .secondaryDeliveryMethodMetadata)
        try container.encodeIfPresent(secondaryDeliveryStatus, forKey: .secondaryDeliveryStatus)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        phoneNumber = try container.decodeIfPresent(RecipientPhoneNumber.self, forKey: .phoneNumber)
        secondaryDeliveryMethod = try container.decodeIfPresent(String.self, forKey: .secondaryDeliveryMethod)
        secondaryDeliveryMethodMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .secondaryDeliveryMethodMetadata)
        secondaryDeliveryStatus = try container.decodeIfPresent(String.self, forKey: .secondaryDeliveryStatus)
    }
}

extension RecipientAdditionalNotification: Hashable {
    public static func == (lhs: RecipientAdditionalNotification, rhs: RecipientAdditionalNotification) -> Bool {
        lhs.phoneNumber == rhs.phoneNumber &&
            lhs.secondaryDeliveryMethod == rhs.secondaryDeliveryMethod &&
            lhs.secondaryDeliveryMethodMetadata == rhs.secondaryDeliveryMethodMetadata &&
            lhs.secondaryDeliveryStatus == rhs.secondaryDeliveryStatus
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(phoneNumber?.hashValue)
        hasher.combine(secondaryDeliveryMethod?.hashValue)
        hasher.combine(secondaryDeliveryMethodMetadata?.hashValue)
        hasher.combine(secondaryDeliveryStatus?.hashValue)
    }
}
