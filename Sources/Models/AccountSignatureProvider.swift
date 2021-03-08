//
// AccountSignatureProvider.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Contains information abotu the signature provider associated with the Identity Verification workflow.  If empty, then this specific workflow is not intended for signers.  */
public final class AccountSignatureProvider: Content {
    /** Reserved for DocuSign. */
    public var isRequired: String?
    /** Reserved for DocuSign. */
    public var priority: String?
    /** Reserved for DocuSign. */
    public var signatureProviderDisplayName: String?
    /** Reserved for DocuSign. */
    public var signatureProviderId: String?
    /** The name of an Electronic or Standards Based Signature (digital signature) provider for the signer to use. For details, see [the current provider list](https://developers.docusign.com/esign-rest-api/guides/standards-based-signatures). You can also retrieve the list by using the [AccountSignatureProviders::List](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountSignatureProviders/list/) method.  Example: `universalsignaturepen_default`   */
    public var signatureProviderName: String?
    /** Reserved for DocuSign. */
    public var signatureProviderOptionsMetadata: [AccountSignatureProviderOption]?
    /** Reserved for DocuSign. */
    public var signatureProviderRequiredOptions: [SignatureProviderRequiredOption]?

    public init(isRequired: String? = nil, priority: String? = nil, signatureProviderDisplayName: String? = nil, signatureProviderId: String? = nil, signatureProviderName: String? = nil, signatureProviderOptionsMetadata: [AccountSignatureProviderOption]? = nil, signatureProviderRequiredOptions: [SignatureProviderRequiredOption]? = nil) {
        self.isRequired = isRequired
        self.priority = priority
        self.signatureProviderDisplayName = signatureProviderDisplayName
        self.signatureProviderId = signatureProviderId
        self.signatureProviderName = signatureProviderName
        self.signatureProviderOptionsMetadata = signatureProviderOptionsMetadata
        self.signatureProviderRequiredOptions = signatureProviderRequiredOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isRequired
        case priority
        case signatureProviderDisplayName
        case signatureProviderId
        case signatureProviderName
        case signatureProviderOptionsMetadata
        case signatureProviderRequiredOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(isRequired, forKey: .isRequired)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(signatureProviderDisplayName, forKey: .signatureProviderDisplayName)
        try container.encodeIfPresent(signatureProviderId, forKey: .signatureProviderId)
        try container.encodeIfPresent(signatureProviderName, forKey: .signatureProviderName)
        try container.encodeIfPresent(signatureProviderOptionsMetadata, forKey: .signatureProviderOptionsMetadata)
        try container.encodeIfPresent(signatureProviderRequiredOptions, forKey: .signatureProviderRequiredOptions)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        isRequired = try container.decodeIfPresent(String.self, forKey: .isRequired)
        priority = try container.decodeIfPresent(String.self, forKey: .priority)
        signatureProviderDisplayName = try container.decodeIfPresent(String.self, forKey: .signatureProviderDisplayName)
        signatureProviderId = try container.decodeIfPresent(String.self, forKey: .signatureProviderId)
        signatureProviderName = try container.decodeIfPresent(String.self, forKey: .signatureProviderName)
        signatureProviderOptionsMetadata = try container.decodeIfPresent([AccountSignatureProviderOption].self, forKey: .signatureProviderOptionsMetadata)
        signatureProviderRequiredOptions = try container.decodeIfPresent([SignatureProviderRequiredOption].self, forKey: .signatureProviderRequiredOptions)
    }
}

extension AccountSignatureProvider: Hashable {
    public static func == (lhs: AccountSignatureProvider, rhs: AccountSignatureProvider) -> Bool {
        lhs.isRequired == rhs.isRequired &&
            lhs.priority == rhs.priority &&
            lhs.signatureProviderDisplayName == rhs.signatureProviderDisplayName &&
            lhs.signatureProviderId == rhs.signatureProviderId &&
            lhs.signatureProviderName == rhs.signatureProviderName &&
            lhs.signatureProviderOptionsMetadata == rhs.signatureProviderOptionsMetadata &&
            lhs.signatureProviderRequiredOptions == rhs.signatureProviderRequiredOptions
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(isRequired?.hashValue)
        hasher.combine(priority?.hashValue)
        hasher.combine(signatureProviderDisplayName?.hashValue)
        hasher.combine(signatureProviderId?.hashValue)
        hasher.combine(signatureProviderName?.hashValue)
        hasher.combine(signatureProviderOptionsMetadata?.hashValue)
        hasher.combine(signatureProviderRequiredOptions?.hashValue)
    }
}
