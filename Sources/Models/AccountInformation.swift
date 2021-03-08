//
// AccountInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class AccountInformation: Content {
    /** The GUID associated with the account ID. */
    public var accountIdGuid: String?
    /** The name on the account. */
    public var accountName: String?
    public var accountSettings: AccountSettingsInformation?
    /** When set to **true**, the transaction rooms feature exposed through the Workspaces API is enabled. */
    public var allowTransactionRooms: String?
    /** Number of days remaining in the current billing period. */
    public var billingPeriodDaysRemaining: String?
    /** The billing period end date in UTC timedate format. */
    public var billingPeriodEndDate: String?
    /** The number of envelopes that can be sent in the current billing period (can be unlimited). */
    public var billingPeriodEnvelopesAllowed: String?
    /** The number of envelopes that have been sent in the current billing period. */
    public var billingPeriodEnvelopesSent: String?
    /** The billing period start date in UTC timedate format. */
    public var billingPeriodStartDate: String?
    /** The type of billing method on the account. Valid values are:   - `direct` - `web` */
    public var billingProfile: String?
    /** When set to **true**, specifies that you can upgrade the account through the API. For GET methods, you must set the `include_metadata` query parameter to **true** for this property to appear in the response. */
    public var canUpgrade: String?
    /**  */
    public var connectPermission: String?
    /** The creation date of the account in UTC timedate format. */
    public var createdDate: String?
    /** The currency code for the account, based on the [ISO 4217 currency code](https://www.iso.org/iso-4217-currency-codes.html). */
    public var currencyCode: String?
    /** ID of the plan used to create this account. */
    public var currentPlanId: String?
    /** The code that identifies the billing plan groups and plans for the new account. */
    public var distributorCode: String?
    /** URL of the landing page used to create the account. */
    public var docuSignLandingUrl: String?
    /**  */
    public var dssValues: [String: String]?
    /** When **true**, the ability to send envelopes is blocked. When **false**, envelopes can be sent. */
    public var envelopeSendingBlocked: String?
    /** The price of sending an envelope, represented in the account's local currency. */
    public var envelopeUnitPrice: String?
    /** The Account ID displayed on the user's Account page. */
    public var externalAccountId: String?
    /**  A complex element that contains up to four Question/Answer pairs for forgotten password information for a user. */
    public var forgottenPasswordQuestionsCount: String?
    /** When **true**, the account has been downgraded from a premium account type. Otherwise **false**. */
    public var isDowngrade: String?
    /** The payment method used for the billing plan. Valid values are:  - `NotSupported` - `CreditCard` - `PurchaseOrder` - `Premium` - `Freemium` - `FreeTrial` - `AppStore` - `DigitalExternal` - `DirectDebit` */
    public var paymentMethod: String?
    /** Identifies the type of plan. Examples include:  - `business` - `corporate` - `enterprise`  - `free` */
    public var planClassification: String?
    /** The date that the current plan will end. */
    public var planEndDate: String?
    /** The name of the billing plan used for the account.  Examples:   - `Personal - Annual` - `Unlimited Envelope Subscription - Annual Billing` */
    public var planName: String?
    /** The date that the Account started using the current plan. */
    public var planStartDate: String?
    /**  */
    public var recipientDomains: [RecipientDomain]?
    /** The number of active users the account can have at one time. */
    public var seatsAllowed: String?
    /** The number of users currently active on the account. */
    public var seatsInUse: String?
    /** The status of the account content per (Title 21 CFR Part 11)[https://www.fda.gov/regulatory-information/search-fda-guidance-documents/part-11-electronic-records-electronic-signatures-scope-and-application]. This regulation defines the criteria under which electronic records and electronic signatures are considered trustworthy. */
    public var status21CFRPart11: String?
    /** The date on which the account was suspended. */
    public var suspensionDate: String?
    /** Indicates whether the account is currently suspended. */
    public var suspensionStatus: String?

    public init(accountIdGuid: String? = nil, accountName: String? = nil, accountSettings: AccountSettingsInformation? = nil, allowTransactionRooms: String? = nil, billingPeriodDaysRemaining: String? = nil, billingPeriodEndDate: String? = nil, billingPeriodEnvelopesAllowed: String? = nil, billingPeriodEnvelopesSent: String? = nil, billingPeriodStartDate: String? = nil, billingProfile: String? = nil, canUpgrade: String? = nil, connectPermission: String? = nil, createdDate: String? = nil, currencyCode: String? = nil, currentPlanId: String? = nil, distributorCode: String? = nil, docuSignLandingUrl: String? = nil, dssValues: [String: String]? = nil, envelopeSendingBlocked: String? = nil, envelopeUnitPrice: String? = nil, externalAccountId: String? = nil, forgottenPasswordQuestionsCount: String? = nil, isDowngrade: String? = nil, paymentMethod: String? = nil, planClassification: String? = nil, planEndDate: String? = nil, planName: String? = nil, planStartDate: String? = nil, recipientDomains: [RecipientDomain]? = nil, seatsAllowed: String? = nil, seatsInUse: String? = nil, status21CFRPart11: String? = nil, suspensionDate: String? = nil, suspensionStatus: String? = nil) {
        self.accountIdGuid = accountIdGuid
        self.accountName = accountName
        self.accountSettings = accountSettings
        self.allowTransactionRooms = allowTransactionRooms
        self.billingPeriodDaysRemaining = billingPeriodDaysRemaining
        self.billingPeriodEndDate = billingPeriodEndDate
        self.billingPeriodEnvelopesAllowed = billingPeriodEnvelopesAllowed
        self.billingPeriodEnvelopesSent = billingPeriodEnvelopesSent
        self.billingPeriodStartDate = billingPeriodStartDate
        self.billingProfile = billingProfile
        self.canUpgrade = canUpgrade
        self.connectPermission = connectPermission
        self.createdDate = createdDate
        self.currencyCode = currencyCode
        self.currentPlanId = currentPlanId
        self.distributorCode = distributorCode
        self.docuSignLandingUrl = docuSignLandingUrl
        self.dssValues = dssValues
        self.envelopeSendingBlocked = envelopeSendingBlocked
        self.envelopeUnitPrice = envelopeUnitPrice
        self.externalAccountId = externalAccountId
        self.forgottenPasswordQuestionsCount = forgottenPasswordQuestionsCount
        self.isDowngrade = isDowngrade
        self.paymentMethod = paymentMethod
        self.planClassification = planClassification
        self.planEndDate = planEndDate
        self.planName = planName
        self.planStartDate = planStartDate
        self.recipientDomains = recipientDomains
        self.seatsAllowed = seatsAllowed
        self.seatsInUse = seatsInUse
        self.status21CFRPart11 = status21CFRPart11
        self.suspensionDate = suspensionDate
        self.suspensionStatus = suspensionStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountIdGuid
        case accountName
        case accountSettings
        case allowTransactionRooms
        case billingPeriodDaysRemaining
        case billingPeriodEndDate
        case billingPeriodEnvelopesAllowed
        case billingPeriodEnvelopesSent
        case billingPeriodStartDate
        case billingProfile
        case canUpgrade
        case connectPermission
        case createdDate
        case currencyCode
        case currentPlanId
        case distributorCode
        case docuSignLandingUrl
        case dssValues
        case envelopeSendingBlocked
        case envelopeUnitPrice
        case externalAccountId
        case forgottenPasswordQuestionsCount
        case isDowngrade
        case paymentMethod
        case planClassification
        case planEndDate
        case planName
        case planStartDate
        case recipientDomains
        case seatsAllowed
        case seatsInUse
        case status21CFRPart11
        case suspensionDate
        case suspensionStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accountIdGuid, forKey: .accountIdGuid)
        try container.encodeIfPresent(accountName, forKey: .accountName)
        try container.encodeIfPresent(accountSettings, forKey: .accountSettings)
        try container.encodeIfPresent(allowTransactionRooms, forKey: .allowTransactionRooms)
        try container.encodeIfPresent(billingPeriodDaysRemaining, forKey: .billingPeriodDaysRemaining)
        try container.encodeIfPresent(billingPeriodEndDate, forKey: .billingPeriodEndDate)
        try container.encodeIfPresent(billingPeriodEnvelopesAllowed, forKey: .billingPeriodEnvelopesAllowed)
        try container.encodeIfPresent(billingPeriodEnvelopesSent, forKey: .billingPeriodEnvelopesSent)
        try container.encodeIfPresent(billingPeriodStartDate, forKey: .billingPeriodStartDate)
        try container.encodeIfPresent(billingProfile, forKey: .billingProfile)
        try container.encodeIfPresent(canUpgrade, forKey: .canUpgrade)
        try container.encodeIfPresent(connectPermission, forKey: .connectPermission)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(currentPlanId, forKey: .currentPlanId)
        try container.encodeIfPresent(distributorCode, forKey: .distributorCode)
        try container.encodeIfPresent(docuSignLandingUrl, forKey: .docuSignLandingUrl)
        try container.encodeIfPresent(dssValues, forKey: .dssValues)
        try container.encodeIfPresent(envelopeSendingBlocked, forKey: .envelopeSendingBlocked)
        try container.encodeIfPresent(envelopeUnitPrice, forKey: .envelopeUnitPrice)
        try container.encodeIfPresent(externalAccountId, forKey: .externalAccountId)
        try container.encodeIfPresent(forgottenPasswordQuestionsCount, forKey: .forgottenPasswordQuestionsCount)
        try container.encodeIfPresent(isDowngrade, forKey: .isDowngrade)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(planClassification, forKey: .planClassification)
        try container.encodeIfPresent(planEndDate, forKey: .planEndDate)
        try container.encodeIfPresent(planName, forKey: .planName)
        try container.encodeIfPresent(planStartDate, forKey: .planStartDate)
        try container.encodeIfPresent(recipientDomains, forKey: .recipientDomains)
        try container.encodeIfPresent(seatsAllowed, forKey: .seatsAllowed)
        try container.encodeIfPresent(seatsInUse, forKey: .seatsInUse)
        try container.encodeIfPresent(status21CFRPart11, forKey: .status21CFRPart11)
        try container.encodeIfPresent(suspensionDate, forKey: .suspensionDate)
        try container.encodeIfPresent(suspensionStatus, forKey: .suspensionStatus)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accountIdGuid = try container.decodeIfPresent(String.self, forKey: .accountIdGuid)
        accountName = try container.decodeIfPresent(String.self, forKey: .accountName)
        accountSettings = try container.decodeIfPresent(AccountSettingsInformation.self, forKey: .accountSettings)
        allowTransactionRooms = try container.decodeIfPresent(String.self, forKey: .allowTransactionRooms)
        billingPeriodDaysRemaining = try container.decodeIfPresent(String.self, forKey: .billingPeriodDaysRemaining)
        billingPeriodEndDate = try container.decodeIfPresent(String.self, forKey: .billingPeriodEndDate)
        billingPeriodEnvelopesAllowed = try container.decodeIfPresent(String.self, forKey: .billingPeriodEnvelopesAllowed)
        billingPeriodEnvelopesSent = try container.decodeIfPresent(String.self, forKey: .billingPeriodEnvelopesSent)
        billingPeriodStartDate = try container.decodeIfPresent(String.self, forKey: .billingPeriodStartDate)
        billingProfile = try container.decodeIfPresent(String.self, forKey: .billingProfile)
        canUpgrade = try container.decodeIfPresent(String.self, forKey: .canUpgrade)
        connectPermission = try container.decodeIfPresent(String.self, forKey: .connectPermission)
        createdDate = try container.decodeIfPresent(String.self, forKey: .createdDate)
        currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        currentPlanId = try container.decodeIfPresent(String.self, forKey: .currentPlanId)
        distributorCode = try container.decodeIfPresent(String.self, forKey: .distributorCode)
        docuSignLandingUrl = try container.decodeIfPresent(String.self, forKey: .docuSignLandingUrl)
        dssValues = try container.decodeIfPresent([String: String].self, forKey: .dssValues)
        envelopeSendingBlocked = try container.decodeIfPresent(String.self, forKey: .envelopeSendingBlocked)
        envelopeUnitPrice = try container.decodeIfPresent(String.self, forKey: .envelopeUnitPrice)
        externalAccountId = try container.decodeIfPresent(String.self, forKey: .externalAccountId)
        forgottenPasswordQuestionsCount = try container.decodeIfPresent(String.self, forKey: .forgottenPasswordQuestionsCount)
        isDowngrade = try container.decodeIfPresent(String.self, forKey: .isDowngrade)
        paymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethod)
        planClassification = try container.decodeIfPresent(String.self, forKey: .planClassification)
        planEndDate = try container.decodeIfPresent(String.self, forKey: .planEndDate)
        planName = try container.decodeIfPresent(String.self, forKey: .planName)
        planStartDate = try container.decodeIfPresent(String.self, forKey: .planStartDate)
        recipientDomains = try container.decodeIfPresent([RecipientDomain].self, forKey: .recipientDomains)
        seatsAllowed = try container.decodeIfPresent(String.self, forKey: .seatsAllowed)
        seatsInUse = try container.decodeIfPresent(String.self, forKey: .seatsInUse)
        status21CFRPart11 = try container.decodeIfPresent(String.self, forKey: .status21CFRPart11)
        suspensionDate = try container.decodeIfPresent(String.self, forKey: .suspensionDate)
        suspensionStatus = try container.decodeIfPresent(String.self, forKey: .suspensionStatus)
    }
}

extension AccountInformation: Hashable {
    public static func == (lhs: AccountInformation, rhs: AccountInformation) -> Bool {
        lhs.accountIdGuid == rhs.accountIdGuid &&
            lhs.accountName == rhs.accountName &&
            lhs.accountSettings == rhs.accountSettings &&
            lhs.allowTransactionRooms == rhs.allowTransactionRooms &&
            lhs.billingPeriodDaysRemaining == rhs.billingPeriodDaysRemaining &&
            lhs.billingPeriodEndDate == rhs.billingPeriodEndDate &&
            lhs.billingPeriodEnvelopesAllowed == rhs.billingPeriodEnvelopesAllowed &&
            lhs.billingPeriodEnvelopesSent == rhs.billingPeriodEnvelopesSent &&
            lhs.billingPeriodStartDate == rhs.billingPeriodStartDate &&
            lhs.billingProfile == rhs.billingProfile &&
            lhs.canUpgrade == rhs.canUpgrade &&
            lhs.connectPermission == rhs.connectPermission &&
            lhs.createdDate == rhs.createdDate &&
            lhs.currencyCode == rhs.currencyCode &&
            lhs.currentPlanId == rhs.currentPlanId &&
            lhs.distributorCode == rhs.distributorCode &&
            lhs.docuSignLandingUrl == rhs.docuSignLandingUrl &&
            lhs.dssValues == rhs.dssValues &&
            lhs.envelopeSendingBlocked == rhs.envelopeSendingBlocked &&
            lhs.envelopeUnitPrice == rhs.envelopeUnitPrice &&
            lhs.externalAccountId == rhs.externalAccountId &&
            lhs.forgottenPasswordQuestionsCount == rhs.forgottenPasswordQuestionsCount &&
            lhs.isDowngrade == rhs.isDowngrade &&
            lhs.paymentMethod == rhs.paymentMethod &&
            lhs.planClassification == rhs.planClassification &&
            lhs.planEndDate == rhs.planEndDate &&
            lhs.planName == rhs.planName &&
            lhs.planStartDate == rhs.planStartDate &&
            lhs.recipientDomains == rhs.recipientDomains &&
            lhs.seatsAllowed == rhs.seatsAllowed &&
            lhs.seatsInUse == rhs.seatsInUse &&
            lhs.status21CFRPart11 == rhs.status21CFRPart11 &&
            lhs.suspensionDate == rhs.suspensionDate &&
            lhs.suspensionStatus == rhs.suspensionStatus
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accountIdGuid?.hashValue)
        hasher.combine(accountName?.hashValue)
        hasher.combine(accountSettings?.hashValue)
        hasher.combine(allowTransactionRooms?.hashValue)
        hasher.combine(billingPeriodDaysRemaining?.hashValue)
        hasher.combine(billingPeriodEndDate?.hashValue)
        hasher.combine(billingPeriodEnvelopesAllowed?.hashValue)
        hasher.combine(billingPeriodEnvelopesSent?.hashValue)
        hasher.combine(billingPeriodStartDate?.hashValue)
        hasher.combine(billingProfile?.hashValue)
        hasher.combine(canUpgrade?.hashValue)
        hasher.combine(connectPermission?.hashValue)
        hasher.combine(createdDate?.hashValue)
        hasher.combine(currencyCode?.hashValue)
        hasher.combine(currentPlanId?.hashValue)
        hasher.combine(distributorCode?.hashValue)
        hasher.combine(docuSignLandingUrl?.hashValue)
        hasher.combine(dssValues?.hashValue)
        hasher.combine(envelopeSendingBlocked?.hashValue)
        hasher.combine(envelopeUnitPrice?.hashValue)
        hasher.combine(externalAccountId?.hashValue)
        hasher.combine(forgottenPasswordQuestionsCount?.hashValue)
        hasher.combine(isDowngrade?.hashValue)
        hasher.combine(paymentMethod?.hashValue)
        hasher.combine(planClassification?.hashValue)
        hasher.combine(planEndDate?.hashValue)
        hasher.combine(planName?.hashValue)
        hasher.combine(planStartDate?.hashValue)
        hasher.combine(recipientDomains?.hashValue)
        hasher.combine(seatsAllowed?.hashValue)
        hasher.combine(seatsInUse?.hashValue)
        hasher.combine(status21CFRPart11?.hashValue)
        hasher.combine(suspensionDate?.hashValue)
        hasher.combine(suspensionStatus?.hashValue)
    }
}
