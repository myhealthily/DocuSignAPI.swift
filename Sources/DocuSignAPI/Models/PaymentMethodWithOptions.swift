//
// PaymentMethodWithOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains information about a payment method that the gateway accepts and the payment options that are compatible with it. */
public final class PaymentMethodWithOptions: Content, Hashable {
    /** The payment options that are compatible with the payment method in the `type` property.  Possible values are:  - `save`  - `save_and_authorize` - `authorize` */
    public var supportedOptions: [String]?
    /** The name of a payment method that the gateway accepts.  Possible values are:  - `CreditCard` - `ApplePay` - `AndroidPay` - `BankAccount` - `PayPal` */
    public var type: String?

    public init(supportedOptions: [String]? = nil, type: String? = nil) {
        self.supportedOptions = supportedOptions
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case supportedOptions
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(supportedOptions, forKey: .supportedOptions)
        try container.encodeIfPresent(type, forKey: .type)
    }

    public static func == (lhs: PaymentMethodWithOptions, rhs: PaymentMethodWithOptions) -> Bool {
        lhs.supportedOptions == rhs.supportedOptions &&
            lhs.type == rhs.type
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(supportedOptions?.hashValue)
        hasher.combine(type?.hashValue)
    }
}
