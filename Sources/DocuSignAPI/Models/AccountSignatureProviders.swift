//
// AccountSignatureProviders.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This resource provides information on the Standards Based Signature providers that have been provisioned for an account.  */
public final class AccountSignatureProviders: Content, Hashable {
    /** Names of electronic or digital signature providers that can be used. */
    public var signatureProviders: [AccountSignatureProvider]?

    public init(signatureProviders: [AccountSignatureProvider]? = nil) {
        self.signatureProviders = signatureProviders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signatureProviders
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(signatureProviders, forKey: .signatureProviders)
    }

    public static func == (lhs: AccountSignatureProviders, rhs: AccountSignatureProviders) -> Bool {
        lhs.signatureProviders == rhs.signatureProviders
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(signatureProviders?.hashValue)
    }
}