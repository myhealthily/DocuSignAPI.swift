//
// AuthenticationStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** A complex element that contains information about a user&#39;s authentication status. */
public final class AuthenticationStatus: Content {
    public var accessCodeResult: EventResult?
    public var ageVerifyResult: EventResult?
    public var anySocialIDResult: EventResult?
    public var facebookResult: EventResult?
    public var googleResult: EventResult?
    public var identityVerificationResult: EventResult?
    public var idLookupResult: EventResult?
    public var idQuestionsResult: EventResult?
    public var linkedinResult: EventResult?
    public var liveIDResult: EventResult?
    public var ofacResult: EventResult?
    public var openIDResult: EventResult?
    public var phoneAuthResult: EventResult?
    public var salesforceResult: EventResult?
    public var signatureProviderResult: EventResult?
    public var smsAuthResult: EventResult?
    public var sTANPinResult: EventResult?
    public var twitterResult: EventResult?
    public var yahooResult: EventResult?

    public init(accessCodeResult: EventResult? = nil, ageVerifyResult: EventResult? = nil, anySocialIDResult: EventResult? = nil, facebookResult: EventResult? = nil, googleResult: EventResult? = nil, identityVerificationResult: EventResult? = nil, idLookupResult: EventResult? = nil, idQuestionsResult: EventResult? = nil, linkedinResult: EventResult? = nil, liveIDResult: EventResult? = nil, ofacResult: EventResult? = nil, openIDResult: EventResult? = nil, phoneAuthResult: EventResult? = nil, salesforceResult: EventResult? = nil, signatureProviderResult: EventResult? = nil, smsAuthResult: EventResult? = nil, sTANPinResult: EventResult? = nil, twitterResult: EventResult? = nil, yahooResult: EventResult? = nil) {
        self.accessCodeResult = accessCodeResult
        self.ageVerifyResult = ageVerifyResult
        self.anySocialIDResult = anySocialIDResult
        self.facebookResult = facebookResult
        self.googleResult = googleResult
        self.identityVerificationResult = identityVerificationResult
        self.idLookupResult = idLookupResult
        self.idQuestionsResult = idQuestionsResult
        self.linkedinResult = linkedinResult
        self.liveIDResult = liveIDResult
        self.ofacResult = ofacResult
        self.openIDResult = openIDResult
        self.phoneAuthResult = phoneAuthResult
        self.salesforceResult = salesforceResult
        self.signatureProviderResult = signatureProviderResult
        self.smsAuthResult = smsAuthResult
        self.sTANPinResult = sTANPinResult
        self.twitterResult = twitterResult
        self.yahooResult = yahooResult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessCodeResult
        case ageVerifyResult
        case anySocialIDResult
        case facebookResult
        case googleResult
        case identityVerificationResult
        case idLookupResult
        case idQuestionsResult
        case linkedinResult
        case liveIDResult
        case ofacResult
        case openIDResult
        case phoneAuthResult
        case salesforceResult
        case signatureProviderResult
        case smsAuthResult
        case sTANPinResult
        case twitterResult
        case yahooResult
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accessCodeResult, forKey: .accessCodeResult)
        try container.encodeIfPresent(ageVerifyResult, forKey: .ageVerifyResult)
        try container.encodeIfPresent(anySocialIDResult, forKey: .anySocialIDResult)
        try container.encodeIfPresent(facebookResult, forKey: .facebookResult)
        try container.encodeIfPresent(googleResult, forKey: .googleResult)
        try container.encodeIfPresent(identityVerificationResult, forKey: .identityVerificationResult)
        try container.encodeIfPresent(idLookupResult, forKey: .idLookupResult)
        try container.encodeIfPresent(idQuestionsResult, forKey: .idQuestionsResult)
        try container.encodeIfPresent(linkedinResult, forKey: .linkedinResult)
        try container.encodeIfPresent(liveIDResult, forKey: .liveIDResult)
        try container.encodeIfPresent(ofacResult, forKey: .ofacResult)
        try container.encodeIfPresent(openIDResult, forKey: .openIDResult)
        try container.encodeIfPresent(phoneAuthResult, forKey: .phoneAuthResult)
        try container.encodeIfPresent(salesforceResult, forKey: .salesforceResult)
        try container.encodeIfPresent(signatureProviderResult, forKey: .signatureProviderResult)
        try container.encodeIfPresent(smsAuthResult, forKey: .smsAuthResult)
        try container.encodeIfPresent(sTANPinResult, forKey: .sTANPinResult)
        try container.encodeIfPresent(twitterResult, forKey: .twitterResult)
        try container.encodeIfPresent(yahooResult, forKey: .yahooResult)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accessCodeResult = try container.decodeIfPresent(EventResult.self, forKey: .accessCodeResult)
        ageVerifyResult = try container.decodeIfPresent(EventResult.self, forKey: .ageVerifyResult)
        anySocialIDResult = try container.decodeIfPresent(EventResult.self, forKey: .anySocialIDResult)
        facebookResult = try container.decodeIfPresent(EventResult.self, forKey: .facebookResult)
        googleResult = try container.decodeIfPresent(EventResult.self, forKey: .googleResult)
        identityVerificationResult = try container.decodeIfPresent(EventResult.self, forKey: .identityVerificationResult)
        idLookupResult = try container.decodeIfPresent(EventResult.self, forKey: .idLookupResult)
        idQuestionsResult = try container.decodeIfPresent(EventResult.self, forKey: .idQuestionsResult)
        linkedinResult = try container.decodeIfPresent(EventResult.self, forKey: .linkedinResult)
        liveIDResult = try container.decodeIfPresent(EventResult.self, forKey: .liveIDResult)
        ofacResult = try container.decodeIfPresent(EventResult.self, forKey: .ofacResult)
        openIDResult = try container.decodeIfPresent(EventResult.self, forKey: .openIDResult)
        phoneAuthResult = try container.decodeIfPresent(EventResult.self, forKey: .phoneAuthResult)
        salesforceResult = try container.decodeIfPresent(EventResult.self, forKey: .salesforceResult)
        signatureProviderResult = try container.decodeIfPresent(EventResult.self, forKey: .signatureProviderResult)
        smsAuthResult = try container.decodeIfPresent(EventResult.self, forKey: .smsAuthResult)
        sTANPinResult = try container.decodeIfPresent(EventResult.self, forKey: .sTANPinResult)
        twitterResult = try container.decodeIfPresent(EventResult.self, forKey: .twitterResult)
        yahooResult = try container.decodeIfPresent(EventResult.self, forKey: .yahooResult)
    }
}

extension AuthenticationStatus: Hashable {
    public static func == (lhs: AuthenticationStatus, rhs: AuthenticationStatus) -> Bool {
        lhs.accessCodeResult == rhs.accessCodeResult &&
            lhs.ageVerifyResult == rhs.ageVerifyResult &&
            lhs.anySocialIDResult == rhs.anySocialIDResult &&
            lhs.facebookResult == rhs.facebookResult &&
            lhs.googleResult == rhs.googleResult &&
            lhs.identityVerificationResult == rhs.identityVerificationResult &&
            lhs.idLookupResult == rhs.idLookupResult &&
            lhs.idQuestionsResult == rhs.idQuestionsResult &&
            lhs.linkedinResult == rhs.linkedinResult &&
            lhs.liveIDResult == rhs.liveIDResult &&
            lhs.ofacResult == rhs.ofacResult &&
            lhs.openIDResult == rhs.openIDResult &&
            lhs.phoneAuthResult == rhs.phoneAuthResult &&
            lhs.salesforceResult == rhs.salesforceResult &&
            lhs.signatureProviderResult == rhs.signatureProviderResult &&
            lhs.smsAuthResult == rhs.smsAuthResult &&
            lhs.sTANPinResult == rhs.sTANPinResult &&
            lhs.twitterResult == rhs.twitterResult &&
            lhs.yahooResult == rhs.yahooResult
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accessCodeResult?.hashValue)
        hasher.combine(ageVerifyResult?.hashValue)
        hasher.combine(anySocialIDResult?.hashValue)
        hasher.combine(facebookResult?.hashValue)
        hasher.combine(googleResult?.hashValue)
        hasher.combine(identityVerificationResult?.hashValue)
        hasher.combine(idLookupResult?.hashValue)
        hasher.combine(idQuestionsResult?.hashValue)
        hasher.combine(linkedinResult?.hashValue)
        hasher.combine(liveIDResult?.hashValue)
        hasher.combine(ofacResult?.hashValue)
        hasher.combine(openIDResult?.hashValue)
        hasher.combine(phoneAuthResult?.hashValue)
        hasher.combine(salesforceResult?.hashValue)
        hasher.combine(signatureProviderResult?.hashValue)
        hasher.combine(smsAuthResult?.hashValue)
        hasher.combine(sTANPinResult?.hashValue)
        hasher.combine(twitterResult?.hashValue)
        hasher.combine(yahooResult?.hashValue)
    }
}
