//
// NewAccountSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class NewAccountSummary: Content, Hashable {
    /** The account ID associated with the envelope. */
    public var accountId: String?
    /** The GUID associated with the account ID. */
    public var accountIdGuid: String?
    /** The account name for the new account. */
    public var accountName: String?
    /** Contains a token that can be used for authentication in API calls instead of using the user name and password. */
    public var apiPassword: String?
    /** The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri's that are relative to this baseUrl. */
    public var baseUrl: String?
    public var billingPlanPreview: BillingPlanPreview?
    /** Specifies the user ID of the new user. */
    public var userId: String?

    public init(accountId: String? = nil, accountIdGuid: String? = nil, accountName: String? = nil, apiPassword: String? = nil, baseUrl: String? = nil, billingPlanPreview: BillingPlanPreview? = nil, userId: String? = nil) {
        self.accountId = accountId
        self.accountIdGuid = accountIdGuid
        self.accountName = accountName
        self.apiPassword = apiPassword
        self.baseUrl = baseUrl
        self.billingPlanPreview = billingPlanPreview
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId
        case accountIdGuid
        case accountName
        case apiPassword
        case baseUrl
        case billingPlanPreview
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(accountIdGuid, forKey: .accountIdGuid)
        try container.encodeIfPresent(accountName, forKey: .accountName)
        try container.encodeIfPresent(apiPassword, forKey: .apiPassword)
        try container.encodeIfPresent(baseUrl, forKey: .baseUrl)
        try container.encodeIfPresent(billingPlanPreview, forKey: .billingPlanPreview)
        try container.encodeIfPresent(userId, forKey: .userId)
    }

    public static func == (lhs: NewAccountSummary, rhs: NewAccountSummary) -> Bool {
        lhs.accountId == rhs.accountId &&
            lhs.accountIdGuid == rhs.accountIdGuid &&
            lhs.accountName == rhs.accountName &&
            lhs.apiPassword == rhs.apiPassword &&
            lhs.baseUrl == rhs.baseUrl &&
            lhs.billingPlanPreview == rhs.billingPlanPreview &&
            lhs.userId == rhs.userId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accountId?.hashValue)
        hasher.combine(accountIdGuid?.hashValue)
        hasher.combine(accountName?.hashValue)
        hasher.combine(apiPassword?.hashValue)
        hasher.combine(baseUrl?.hashValue)
        hasher.combine(billingPlanPreview?.hashValue)
        hasher.combine(userId?.hashValue)
    }
}
