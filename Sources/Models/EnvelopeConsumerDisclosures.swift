//
// EnvelopeConsumerDisclosures.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Details about envelope consumer disclosures. */
public final class EnvelopeConsumerDisclosures: Content {
    /** The GUID of the account associated with the consumer disclosure. */
    public var accountEsignId: String?
    /** When set to **true**, indicates that the customer can withdraw their consent to the consumer disclosure when they decline to sign documents. If these recipients sign documents sent to them from your account in the future, they will be required to agree to the terms in the disclosure. The default value is **false**. **Note**: Only Admin users can change this setting. */
    public var allowCDWithdraw: String?
    public var allowCDWithdrawMetadata: SettingsMetadata?
    /** If the customer needs to change their email address, this is the email address to which they should the change request. */
    public var changeEmail: String?
    /** Other information about the requirements for the user to change their email address.  Example:   `We do not require any other information from you to change your email address.` */
    public var changeEmailOther: String?
    /** Specifies the company name used in the disclosure. The default value is the account name.  However, if your account uses signing brands that specify a company name, you can substitute the brand's company name by setting the `useBrand` property to **true**. Whenever an envelope is sent from the account that uses a signing brand with a specified `companyName`, that value is used in email notifications and in the signing experience.  **Note**: This substitution only works if you use the default legal disclosure or if you apply the `companyName` to the merge fields in a custom ERSD. You must also set the value of the `useBrand` property to **true**.  */
    public var companyName: String?
    /** The phone number of the company associated with the consumer disclosure, as a free-formatted string. */
    public var companyPhone: String?
    /** The cost per page if the customer requests paper copies.  Example:   `0.0000` */
    public var copyCostPerPage: String?
    /** Specifies the fee collection method for cases in which the customer requires paper copies of the document.  Maximum length: 255 characters.  Example:   `We will bill you for any fees at that time, if any.` */
    public var copyFeeCollectionMethod: String?
    /** The email address to which the customer should send a request for copies of a document.  Maximum length: 100 characters. */
    public var copyRequestEmail: String?
    /** When set to **true**, indicates that the consumer disclosure is a custom disclosure. The default is **false**. */
    public var custom: String?
    /** When set to **true** (default), indicates that eSign is enabled. */
    public var enableEsign: String?
    /** The final, assembled text of the Electronic Record and Signature Disclosure that includes the appropriate `companyName` and other specifics. It also includes the HTML tags used for formatting. */
    public var esignAgreement: String?
    /** The template for the Electronic Record and Signature Disclosure, which contains placeholders for information such as the `companyName`. It also includes the HTML tags used for formatting.  **Note**: If you are switching to or updating a custom disclosure, you can edit both the text and the HTML formatting. */
    public var esignText: String?
    /** The simple type enumeration for the language to use when displaying the disclosure. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`. */
    public var languageCode: String?
    /** When set to **true**, the  recipient must agree to the consumer disclosure. The value of this property is read only. It is calculated based on the account setting `consumerDisclosureFrequency` and the user's actions. */
    public var mustAgreeToEsign: String?
    /** **Deprecated**.   The `pdfId` property in the consumer_disclosure PUT request is deprecated. For security reasons going forward, any value provided in the request packet must be ignored.  */
    public var pdfId: String?
    /** When set to **true**, specifies that the company name in the signing brand is used for the disclosure. Whenever an envelope is sent from the account that uses a signing brand with a specified company name, that value is used in email notifications and in the signing experience.    When set to **false** (default), or if the signing brand does not specify a company name, the account name is used instead.  **Note**: This substitution only works if you use the default legal disclosure or if you apply the `companyName` to the merge fields in a custom ERSD.  */
    public var useBrand: String?
    /** When set to **true**, specifies that recipients in the same account as the sender must agree to eSign an Electronic Record and Signature Disclosure Statement. */
    public var useConsumerDisclosureWithinAccount: String?
    public var useConsumerDisclosureWithinAccountMetadata: SettingsMetadata?
    /** Contains the first address line of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters.  */
    public var withdrawAddressLine1: String?
    /** Contains the second address line of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters.  */
    public var withdrawAddressLine2: String?
    /** When set to **true** (default), indicates that the customer can withdraw consent by email. */
    public var withdrawByEmail: String?
    /** When set to **true**, indicates that the customer can withdraw consent by postal mail. The default is **false**. */
    public var withdrawByMail: String?
    /** When set to **true**, indicates that the customer can withdraw consent by phone. The default is **false**. */
    public var withdrawByPhone: String?
    /** Contains the city of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 50 characters.  */
    public var withdrawCity: String?
    /** Text indicating the consequences of withdrawing consent.  Maximum length: 255 characters. */
    public var withdrawConsequences: String?
    /** Contains the email address to which a customer can send a consent withdrawal notification.  Maximum length: 100 characters.  */
    public var withdrawEmail: String?
    /** Contains any other information needed to withdraw consent.  Maximum length: 255 characters.  Example:  `We do not need any other information from you to withdraw consent.` */
    public var withdrawOther: String?
    /** Contains the phone number that a customer can call to register consent withdrawal notification as a free-formatted string.  Maximum length: 20 characters.  */
    public var withdrawPhone: String?
    /** Contains the postal code of the postal address to which a customer can send a consent withdrawal notification.  Maximum length: 20 characters.  */
    public var withdrawPostalCode: String?
    /** Contains the state of the postal address to which a customer can send a consent withdrawal notification.  Example: `PA` */
    public var withdrawState: String?

    public init(accountEsignId: String? = nil, allowCDWithdraw: String? = nil, allowCDWithdrawMetadata: SettingsMetadata? = nil, changeEmail: String? = nil, changeEmailOther: String? = nil, companyName: String? = nil, companyPhone: String? = nil, copyCostPerPage: String? = nil, copyFeeCollectionMethod: String? = nil, copyRequestEmail: String? = nil, custom: String? = nil, enableEsign: String? = nil, esignAgreement: String? = nil, esignText: String? = nil, languageCode: String? = nil, mustAgreeToEsign: String? = nil, pdfId: String? = nil, useBrand: String? = nil, useConsumerDisclosureWithinAccount: String? = nil, useConsumerDisclosureWithinAccountMetadata: SettingsMetadata? = nil, withdrawAddressLine1: String? = nil, withdrawAddressLine2: String? = nil, withdrawByEmail: String? = nil, withdrawByMail: String? = nil, withdrawByPhone: String? = nil, withdrawCity: String? = nil, withdrawConsequences: String? = nil, withdrawEmail: String? = nil, withdrawOther: String? = nil, withdrawPhone: String? = nil, withdrawPostalCode: String? = nil, withdrawState: String? = nil) {
        self.accountEsignId = accountEsignId
        self.allowCDWithdraw = allowCDWithdraw
        self.allowCDWithdrawMetadata = allowCDWithdrawMetadata
        self.changeEmail = changeEmail
        self.changeEmailOther = changeEmailOther
        self.companyName = companyName
        self.companyPhone = companyPhone
        self.copyCostPerPage = copyCostPerPage
        self.copyFeeCollectionMethod = copyFeeCollectionMethod
        self.copyRequestEmail = copyRequestEmail
        self.custom = custom
        self.enableEsign = enableEsign
        self.esignAgreement = esignAgreement
        self.esignText = esignText
        self.languageCode = languageCode
        self.mustAgreeToEsign = mustAgreeToEsign
        self.pdfId = pdfId
        self.useBrand = useBrand
        self.useConsumerDisclosureWithinAccount = useConsumerDisclosureWithinAccount
        self.useConsumerDisclosureWithinAccountMetadata = useConsumerDisclosureWithinAccountMetadata
        self.withdrawAddressLine1 = withdrawAddressLine1
        self.withdrawAddressLine2 = withdrawAddressLine2
        self.withdrawByEmail = withdrawByEmail
        self.withdrawByMail = withdrawByMail
        self.withdrawByPhone = withdrawByPhone
        self.withdrawCity = withdrawCity
        self.withdrawConsequences = withdrawConsequences
        self.withdrawEmail = withdrawEmail
        self.withdrawOther = withdrawOther
        self.withdrawPhone = withdrawPhone
        self.withdrawPostalCode = withdrawPostalCode
        self.withdrawState = withdrawState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountEsignId
        case allowCDWithdraw
        case allowCDWithdrawMetadata
        case changeEmail
        case changeEmailOther
        case companyName
        case companyPhone
        case copyCostPerPage
        case copyFeeCollectionMethod
        case copyRequestEmail
        case custom
        case enableEsign
        case esignAgreement
        case esignText
        case languageCode
        case mustAgreeToEsign
        case pdfId
        case useBrand
        case useConsumerDisclosureWithinAccount
        case useConsumerDisclosureWithinAccountMetadata
        case withdrawAddressLine1
        case withdrawAddressLine2
        case withdrawByEmail
        case withdrawByMail
        case withdrawByPhone
        case withdrawCity
        case withdrawConsequences
        case withdrawEmail
        case withdrawOther
        case withdrawPhone
        case withdrawPostalCode
        case withdrawState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accountEsignId, forKey: .accountEsignId)
        try container.encodeIfPresent(allowCDWithdraw, forKey: .allowCDWithdraw)
        try container.encodeIfPresent(allowCDWithdrawMetadata, forKey: .allowCDWithdrawMetadata)
        try container.encodeIfPresent(changeEmail, forKey: .changeEmail)
        try container.encodeIfPresent(changeEmailOther, forKey: .changeEmailOther)
        try container.encodeIfPresent(companyName, forKey: .companyName)
        try container.encodeIfPresent(companyPhone, forKey: .companyPhone)
        try container.encodeIfPresent(copyCostPerPage, forKey: .copyCostPerPage)
        try container.encodeIfPresent(copyFeeCollectionMethod, forKey: .copyFeeCollectionMethod)
        try container.encodeIfPresent(copyRequestEmail, forKey: .copyRequestEmail)
        try container.encodeIfPresent(custom, forKey: .custom)
        try container.encodeIfPresent(enableEsign, forKey: .enableEsign)
        try container.encodeIfPresent(esignAgreement, forKey: .esignAgreement)
        try container.encodeIfPresent(esignText, forKey: .esignText)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(mustAgreeToEsign, forKey: .mustAgreeToEsign)
        try container.encodeIfPresent(pdfId, forKey: .pdfId)
        try container.encodeIfPresent(useBrand, forKey: .useBrand)
        try container.encodeIfPresent(useConsumerDisclosureWithinAccount, forKey: .useConsumerDisclosureWithinAccount)
        try container.encodeIfPresent(useConsumerDisclosureWithinAccountMetadata, forKey: .useConsumerDisclosureWithinAccountMetadata)
        try container.encodeIfPresent(withdrawAddressLine1, forKey: .withdrawAddressLine1)
        try container.encodeIfPresent(withdrawAddressLine2, forKey: .withdrawAddressLine2)
        try container.encodeIfPresent(withdrawByEmail, forKey: .withdrawByEmail)
        try container.encodeIfPresent(withdrawByMail, forKey: .withdrawByMail)
        try container.encodeIfPresent(withdrawByPhone, forKey: .withdrawByPhone)
        try container.encodeIfPresent(withdrawCity, forKey: .withdrawCity)
        try container.encodeIfPresent(withdrawConsequences, forKey: .withdrawConsequences)
        try container.encodeIfPresent(withdrawEmail, forKey: .withdrawEmail)
        try container.encodeIfPresent(withdrawOther, forKey: .withdrawOther)
        try container.encodeIfPresent(withdrawPhone, forKey: .withdrawPhone)
        try container.encodeIfPresent(withdrawPostalCode, forKey: .withdrawPostalCode)
        try container.encodeIfPresent(withdrawState, forKey: .withdrawState)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accountEsignId = try container.decodeIfPresent(String.self, forKey: .accountEsignId)
        allowCDWithdraw = try container.decodeIfPresent(String.self, forKey: .allowCDWithdraw)
        allowCDWithdrawMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .allowCDWithdrawMetadata)
        changeEmail = try container.decodeIfPresent(String.self, forKey: .changeEmail)
        changeEmailOther = try container.decodeIfPresent(String.self, forKey: .changeEmailOther)
        companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        companyPhone = try container.decodeIfPresent(String.self, forKey: .companyPhone)
        copyCostPerPage = try container.decodeIfPresent(String.self, forKey: .copyCostPerPage)
        copyFeeCollectionMethod = try container.decodeIfPresent(String.self, forKey: .copyFeeCollectionMethod)
        copyRequestEmail = try container.decodeIfPresent(String.self, forKey: .copyRequestEmail)
        custom = try container.decodeIfPresent(String.self, forKey: .custom)
        enableEsign = try container.decodeIfPresent(String.self, forKey: .enableEsign)
        esignAgreement = try container.decodeIfPresent(String.self, forKey: .esignAgreement)
        esignText = try container.decodeIfPresent(String.self, forKey: .esignText)
        languageCode = try container.decodeIfPresent(String.self, forKey: .languageCode)
        mustAgreeToEsign = try container.decodeIfPresent(String.self, forKey: .mustAgreeToEsign)
        pdfId = try container.decodeIfPresent(String.self, forKey: .pdfId)
        useBrand = try container.decodeIfPresent(String.self, forKey: .useBrand)
        useConsumerDisclosureWithinAccount = try container.decodeIfPresent(String.self, forKey: .useConsumerDisclosureWithinAccount)
        useConsumerDisclosureWithinAccountMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .useConsumerDisclosureWithinAccountMetadata)
        withdrawAddressLine1 = try container.decodeIfPresent(String.self, forKey: .withdrawAddressLine1)
        withdrawAddressLine2 = try container.decodeIfPresent(String.self, forKey: .withdrawAddressLine2)
        withdrawByEmail = try container.decodeIfPresent(String.self, forKey: .withdrawByEmail)
        withdrawByMail = try container.decodeIfPresent(String.self, forKey: .withdrawByMail)
        withdrawByPhone = try container.decodeIfPresent(String.self, forKey: .withdrawByPhone)
        withdrawCity = try container.decodeIfPresent(String.self, forKey: .withdrawCity)
        withdrawConsequences = try container.decodeIfPresent(String.self, forKey: .withdrawConsequences)
        withdrawEmail = try container.decodeIfPresent(String.self, forKey: .withdrawEmail)
        withdrawOther = try container.decodeIfPresent(String.self, forKey: .withdrawOther)
        withdrawPhone = try container.decodeIfPresent(String.self, forKey: .withdrawPhone)
        withdrawPostalCode = try container.decodeIfPresent(String.self, forKey: .withdrawPostalCode)
        withdrawState = try container.decodeIfPresent(String.self, forKey: .withdrawState)
    }
}

extension EnvelopeConsumerDisclosures: Hashable {
    public static func == (lhs: EnvelopeConsumerDisclosures, rhs: EnvelopeConsumerDisclosures) -> Bool {
        lhs.accountEsignId == rhs.accountEsignId &&
            lhs.allowCDWithdraw == rhs.allowCDWithdraw &&
            lhs.allowCDWithdrawMetadata == rhs.allowCDWithdrawMetadata &&
            lhs.changeEmail == rhs.changeEmail &&
            lhs.changeEmailOther == rhs.changeEmailOther &&
            lhs.companyName == rhs.companyName &&
            lhs.companyPhone == rhs.companyPhone &&
            lhs.copyCostPerPage == rhs.copyCostPerPage &&
            lhs.copyFeeCollectionMethod == rhs.copyFeeCollectionMethod &&
            lhs.copyRequestEmail == rhs.copyRequestEmail &&
            lhs.custom == rhs.custom &&
            lhs.enableEsign == rhs.enableEsign &&
            lhs.esignAgreement == rhs.esignAgreement &&
            lhs.esignText == rhs.esignText &&
            lhs.languageCode == rhs.languageCode &&
            lhs.mustAgreeToEsign == rhs.mustAgreeToEsign &&
            lhs.pdfId == rhs.pdfId &&
            lhs.useBrand == rhs.useBrand &&
            lhs.useConsumerDisclosureWithinAccount == rhs.useConsumerDisclosureWithinAccount &&
            lhs.useConsumerDisclosureWithinAccountMetadata == rhs.useConsumerDisclosureWithinAccountMetadata &&
            lhs.withdrawAddressLine1 == rhs.withdrawAddressLine1 &&
            lhs.withdrawAddressLine2 == rhs.withdrawAddressLine2 &&
            lhs.withdrawByEmail == rhs.withdrawByEmail &&
            lhs.withdrawByMail == rhs.withdrawByMail &&
            lhs.withdrawByPhone == rhs.withdrawByPhone &&
            lhs.withdrawCity == rhs.withdrawCity &&
            lhs.withdrawConsequences == rhs.withdrawConsequences &&
            lhs.withdrawEmail == rhs.withdrawEmail &&
            lhs.withdrawOther == rhs.withdrawOther &&
            lhs.withdrawPhone == rhs.withdrawPhone &&
            lhs.withdrawPostalCode == rhs.withdrawPostalCode &&
            lhs.withdrawState == rhs.withdrawState
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accountEsignId?.hashValue)
        hasher.combine(allowCDWithdraw?.hashValue)
        hasher.combine(allowCDWithdrawMetadata?.hashValue)
        hasher.combine(changeEmail?.hashValue)
        hasher.combine(changeEmailOther?.hashValue)
        hasher.combine(companyName?.hashValue)
        hasher.combine(companyPhone?.hashValue)
        hasher.combine(copyCostPerPage?.hashValue)
        hasher.combine(copyFeeCollectionMethod?.hashValue)
        hasher.combine(copyRequestEmail?.hashValue)
        hasher.combine(custom?.hashValue)
        hasher.combine(enableEsign?.hashValue)
        hasher.combine(esignAgreement?.hashValue)
        hasher.combine(esignText?.hashValue)
        hasher.combine(languageCode?.hashValue)
        hasher.combine(mustAgreeToEsign?.hashValue)
        hasher.combine(pdfId?.hashValue)
        hasher.combine(useBrand?.hashValue)
        hasher.combine(useConsumerDisclosureWithinAccount?.hashValue)
        hasher.combine(useConsumerDisclosureWithinAccountMetadata?.hashValue)
        hasher.combine(withdrawAddressLine1?.hashValue)
        hasher.combine(withdrawAddressLine2?.hashValue)
        hasher.combine(withdrawByEmail?.hashValue)
        hasher.combine(withdrawByMail?.hashValue)
        hasher.combine(withdrawByPhone?.hashValue)
        hasher.combine(withdrawCity?.hashValue)
        hasher.combine(withdrawConsequences?.hashValue)
        hasher.combine(withdrawEmail?.hashValue)
        hasher.combine(withdrawOther?.hashValue)
        hasher.combine(withdrawPhone?.hashValue)
        hasher.combine(withdrawPostalCode?.hashValue)
        hasher.combine(withdrawState?.hashValue)
    }
}
