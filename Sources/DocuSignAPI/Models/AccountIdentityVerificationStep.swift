//
// AccountIdentityVerificationStep.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Information about a specific step in an Identity Verification workflow. */
public final class AccountIdentityVerificationStep: Content, Hashable {
    /** The name of the Identity Verification workflow step. */
    public var name: String?
    /** Reserved for DocuSign. */
    public var type: String?

    public init(name: String? = nil, type: String? = nil) {
        self.name = name
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
    }

    public static func == (lhs: AccountIdentityVerificationStep, rhs: AccountIdentityVerificationStep) -> Bool {
        lhs.name == rhs.name &&
            lhs.type == rhs.type
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name?.hashValue)
        hasher.combine(type?.hashValue)
    }
}