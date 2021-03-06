//
// CreditCardInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains information about a credit card that is associated with an account. */
public final class CreditCardInformation: Content, Hashable {
    public var address: AddressInformation?
    /** The credit card number. */
    public var cardNumber: String?
    /** The type of credit card. Valid values are:   - `visa`  - `mastercard`  - `amex` */
    public var cardType: String?
    /** The 3 or 4-digit card verification value (CVV) number associated with the credit card. CVV numbers are also referred to as card security codes (CSCs). */
    public var cvNumber: String?
    /** The month that the credit card expires, expressed as a number from 1 to 12. */
    public var expirationMonth: String?
    /** The year in which the credit card expires, in 4-digit format. */
    public var expirationYear: String?
    /** The exact name as it appears on the credit card. */
    public var nameOnCard: String?

    public init(address: AddressInformation? = nil, cardNumber: String? = nil, cardType: String? = nil, cvNumber: String? = nil, expirationMonth: String? = nil, expirationYear: String? = nil, nameOnCard: String? = nil) {
        self.address = address
        self.cardNumber = cardNumber
        self.cardType = cardType
        self.cvNumber = cvNumber
        self.expirationMonth = expirationMonth
        self.expirationYear = expirationYear
        self.nameOnCard = nameOnCard
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case cardNumber
        case cardType
        case cvNumber
        case expirationMonth
        case expirationYear
        case nameOnCard
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(cardNumber, forKey: .cardNumber)
        try container.encodeIfPresent(cardType, forKey: .cardType)
        try container.encodeIfPresent(cvNumber, forKey: .cvNumber)
        try container.encodeIfPresent(expirationMonth, forKey: .expirationMonth)
        try container.encodeIfPresent(expirationYear, forKey: .expirationYear)
        try container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
    }

    public static func == (lhs: CreditCardInformation, rhs: CreditCardInformation) -> Bool {
        lhs.address == rhs.address &&
            lhs.cardNumber == rhs.cardNumber &&
            lhs.cardType == rhs.cardType &&
            lhs.cvNumber == rhs.cvNumber &&
            lhs.expirationMonth == rhs.expirationMonth &&
            lhs.expirationYear == rhs.expirationYear &&
            lhs.nameOnCard == rhs.nameOnCard
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(address?.hashValue)
        hasher.combine(cardNumber?.hashValue)
        hasher.combine(cardType?.hashValue)
        hasher.combine(cvNumber?.hashValue)
        hasher.combine(expirationMonth?.hashValue)
        hasher.combine(expirationYear?.hashValue)
        hasher.combine(nameOnCard?.hashValue)
    }
}
