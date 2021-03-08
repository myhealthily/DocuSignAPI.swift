//
// Brand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Information about a brand that is associated with an account. A brand applies custom styles and text to an envelope. */
public final class Brand: Content {
    /** The name of the company associated with the brand. */
    public var brandCompany: String?
    /** The id of the brand. */
    public var brandId: String?
    /** An array of two-letter codes for the languages that you want to use with the brand. The supported languages are:  - Arabic (`ar`) - Armenian (`hy`) - Bahasa Indonesia (`id`) - Bahasa Malay (`ms`) - Bulgarian (`bg`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Czech (`cs`) - Danish (`da`) - Dutch (`nl`) - English UK (`en_GB`) - English US (`en`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canada (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brasil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukranian (`uk`) - Vietnamese (`vi`) */
    public var brandLanguages: [String]?
    /** The name of the brand. */
    public var brandName: String?
    /** An array of name-value pairs specifying the colors that the brand uses for the following elements:  - Button background - Button text - Header background - Header text */
    public var colors: [NameValue]?
    /** The two-letter code for the language that you want to use as the brand default. The supported languages are:  - Arabic (`ar`) - Armenian (`hy`) - Bahasa Indonesia (`id`) - Bahasa Malay (`ms`) - Bulgarian (`bg`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Czech (`cs`) - Danish (`da`) - Dutch (`nl`) - English UK (`en_GB`) - English US (`en`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canada (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brasil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukranian (`uk`) - Vietnamese (`vi`) */
    public var defaultBrandLanguage: String?
    /** Deprecated. */
    public var emailContent: [BrandEmailContent]?
    public var errorDetails: ErrorDetails?
    /** When **true**, the `brandCompany` property is overriding the name of the company in the account settings. */
    public var isOverridingCompanyName: Bool?
    /** When **true**, the sending brand is the default brand for sending new envelopes. */
    public var isSendingDefault: Bool?
    /** When **true**, the siging brand is the default brand for the signing experience. */
    public var isSigningDefault: Bool?
    /** An array of name/value pairs specifying the pages to which the user is redirected after the following events occur:  - Signing Completed - Viewed Exit - Finish Later - Decline - Session Timeout - Authentication Failure  If you do not specify landing pages, the DocuSign default pages are used. */
    public var landingPages: [NameValue]?
    /** An array of `brandLink` objects that contain information about the links that the brand uses. */
    public var links: [BrandLink]?
    public var logos: BrandLogos?
    public var resources: BrandResourceUrls?

    public init(brandCompany: String? = nil, brandId: String? = nil, brandLanguages: [String]? = nil, brandName: String? = nil, colors: [NameValue]? = nil, defaultBrandLanguage: String? = nil, emailContent: [BrandEmailContent]? = nil, errorDetails: ErrorDetails? = nil, isOverridingCompanyName: Bool? = nil, isSendingDefault: Bool? = nil, isSigningDefault: Bool? = nil, landingPages: [NameValue]? = nil, links: [BrandLink]? = nil, logos: BrandLogos? = nil, resources: BrandResourceUrls? = nil) {
        self.brandCompany = brandCompany
        self.brandId = brandId
        self.brandLanguages = brandLanguages
        self.brandName = brandName
        self.colors = colors
        self.defaultBrandLanguage = defaultBrandLanguage
        self.emailContent = emailContent
        self.errorDetails = errorDetails
        self.isOverridingCompanyName = isOverridingCompanyName
        self.isSendingDefault = isSendingDefault
        self.isSigningDefault = isSigningDefault
        self.landingPages = landingPages
        self.links = links
        self.logos = logos
        self.resources = resources
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case brandCompany
        case brandId
        case brandLanguages
        case brandName
        case colors
        case defaultBrandLanguage
        case emailContent
        case errorDetails
        case isOverridingCompanyName
        case isSendingDefault
        case isSigningDefault
        case landingPages
        case links
        case logos
        case resources
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(brandCompany, forKey: .brandCompany)
        try container.encodeIfPresent(brandId, forKey: .brandId)
        try container.encodeIfPresent(brandLanguages, forKey: .brandLanguages)
        try container.encodeIfPresent(brandName, forKey: .brandName)
        try container.encodeIfPresent(colors, forKey: .colors)
        try container.encodeIfPresent(defaultBrandLanguage, forKey: .defaultBrandLanguage)
        try container.encodeIfPresent(emailContent, forKey: .emailContent)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(isOverridingCompanyName, forKey: .isOverridingCompanyName)
        try container.encodeIfPresent(isSendingDefault, forKey: .isSendingDefault)
        try container.encodeIfPresent(isSigningDefault, forKey: .isSigningDefault)
        try container.encodeIfPresent(landingPages, forKey: .landingPages)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(logos, forKey: .logos)
        try container.encodeIfPresent(resources, forKey: .resources)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        brandCompany = try container.decodeIfPresent(String.self, forKey: .brandCompany)
        brandId = try container.decodeIfPresent(String.self, forKey: .brandId)
        brandLanguages = try container.decodeIfPresent([String].self, forKey: .brandLanguages)
        brandName = try container.decodeIfPresent(String.self, forKey: .brandName)
        colors = try container.decodeIfPresent([NameValue].self, forKey: .colors)
        defaultBrandLanguage = try container.decodeIfPresent(String.self, forKey: .defaultBrandLanguage)
        emailContent = try container.decodeIfPresent([BrandEmailContent].self, forKey: .emailContent)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        isOverridingCompanyName = try container.decodeIfPresent(Bool.self, forKey: .isOverridingCompanyName)
        isSendingDefault = try container.decodeIfPresent(Bool.self, forKey: .isSendingDefault)
        isSigningDefault = try container.decodeIfPresent(Bool.self, forKey: .isSigningDefault)
        landingPages = try container.decodeIfPresent([NameValue].self, forKey: .landingPages)
        links = try container.decodeIfPresent([BrandLink].self, forKey: .links)
        logos = try container.decodeIfPresent(BrandLogos.self, forKey: .logos)
        resources = try container.decodeIfPresent(BrandResourceUrls.self, forKey: .resources)
    }
}

extension Brand: Hashable {
    public static func == (lhs: Brand, rhs: Brand) -> Bool {
        lhs.brandCompany == rhs.brandCompany &&
            lhs.brandId == rhs.brandId &&
            lhs.brandLanguages == rhs.brandLanguages &&
            lhs.brandName == rhs.brandName &&
            lhs.colors == rhs.colors &&
            lhs.defaultBrandLanguage == rhs.defaultBrandLanguage &&
            lhs.emailContent == rhs.emailContent &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.isOverridingCompanyName == rhs.isOverridingCompanyName &&
            lhs.isSendingDefault == rhs.isSendingDefault &&
            lhs.isSigningDefault == rhs.isSigningDefault &&
            lhs.landingPages == rhs.landingPages &&
            lhs.links == rhs.links &&
            lhs.logos == rhs.logos &&
            lhs.resources == rhs.resources
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(brandCompany?.hashValue)
        hasher.combine(brandId?.hashValue)
        hasher.combine(brandLanguages?.hashValue)
        hasher.combine(brandName?.hashValue)
        hasher.combine(colors?.hashValue)
        hasher.combine(defaultBrandLanguage?.hashValue)
        hasher.combine(emailContent?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(isOverridingCompanyName?.hashValue)
        hasher.combine(isSendingDefault?.hashValue)
        hasher.combine(isSigningDefault?.hashValue)
        hasher.combine(landingPages?.hashValue)
        hasher.combine(links?.hashValue)
        hasher.combine(logos?.hashValue)
        hasher.combine(resources?.hashValue)
    }
}
