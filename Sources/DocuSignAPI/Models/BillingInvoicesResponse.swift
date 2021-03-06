//
// BillingInvoicesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Defines a billing invoice response object. */
public final class BillingInvoicesResponse: Content, Hashable {
    /** Reserved: TBD */
    public var billingInvoices: [BillingInvoice]?
    /** The URI for the next chunk of records based on the search request. It is `null` if this is the last set of results for the search.  */
    public var nextUri: String?
    /** The URI for the prior chunk of records based on the search request. It is `null` if this is the first set of results for the search.  */
    public var previousUri: String?

    public init(billingInvoices: [BillingInvoice]? = nil, nextUri: String? = nil, previousUri: String? = nil) {
        self.billingInvoices = billingInvoices
        self.nextUri = nextUri
        self.previousUri = previousUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case billingInvoices
        case nextUri
        case previousUri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(billingInvoices, forKey: .billingInvoices)
        try container.encodeIfPresent(nextUri, forKey: .nextUri)
        try container.encodeIfPresent(previousUri, forKey: .previousUri)
    }

    public static func == (lhs: BillingInvoicesResponse, rhs: BillingInvoicesResponse) -> Bool {
        lhs.billingInvoices == rhs.billingInvoices &&
            lhs.nextUri == rhs.nextUri &&
            lhs.previousUri == rhs.previousUri
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(billingInvoices?.hashValue)
        hasher.combine(nextUri?.hashValue)
        hasher.combine(previousUri?.hashValue)
    }
}
