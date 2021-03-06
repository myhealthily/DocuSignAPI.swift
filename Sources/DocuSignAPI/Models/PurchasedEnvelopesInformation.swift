//
// PurchasedEnvelopesInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class PurchasedEnvelopesInformation: Content, Hashable {
    /** The total amount of the purchase. */
    public var amount: String?
    /** The AppName of the client application. */
    public var appName: String?
    /** The currency code for the account, based on the [ISO 4217 currency code](https://www.iso.org/iso-4217-currency-codes.html). */
    public var currencyCode: String?
    /** The Platform of the client application */
    public var platform: String?
    /** The Product ID from the AppStore. */
    public var productId: String?
    /** The quantity of envelopes to add to the account. */
    public var quantity: String?
    /** The encrypted Base64 encoded receipt data. */
    public var receiptData: String?
    /** The name of the AppStore. */
    public var storeName: String?
    /** Specifies the Transaction ID from the AppStore. */
    public var transactionId: String?

    public init(amount: String? = nil, appName: String? = nil, currencyCode: String? = nil, platform: String? = nil, productId: String? = nil, quantity: String? = nil, receiptData: String? = nil, storeName: String? = nil, transactionId: String? = nil) {
        self.amount = amount
        self.appName = appName
        self.currencyCode = currencyCode
        self.platform = platform
        self.productId = productId
        self.quantity = quantity
        self.receiptData = receiptData
        self.storeName = storeName
        self.transactionId = transactionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case appName
        case currencyCode
        case platform
        case productId
        case quantity
        case receiptData
        case storeName
        case transactionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(receiptData, forKey: .receiptData)
        try container.encodeIfPresent(storeName, forKey: .storeName)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
    }

    public static func == (lhs: PurchasedEnvelopesInformation, rhs: PurchasedEnvelopesInformation) -> Bool {
        lhs.amount == rhs.amount &&
            lhs.appName == rhs.appName &&
            lhs.currencyCode == rhs.currencyCode &&
            lhs.platform == rhs.platform &&
            lhs.productId == rhs.productId &&
            lhs.quantity == rhs.quantity &&
            lhs.receiptData == rhs.receiptData &&
            lhs.storeName == rhs.storeName &&
            lhs.transactionId == rhs.transactionId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(amount?.hashValue)
        hasher.combine(appName?.hashValue)
        hasher.combine(currencyCode?.hashValue)
        hasher.combine(platform?.hashValue)
        hasher.combine(productId?.hashValue)
        hasher.combine(quantity?.hashValue)
        hasher.combine(receiptData?.hashValue)
        hasher.combine(storeName?.hashValue)
        hasher.combine(transactionId?.hashValue)
    }
}
