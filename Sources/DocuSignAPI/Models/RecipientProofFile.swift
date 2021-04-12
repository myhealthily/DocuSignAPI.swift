//
// RecipientProofFile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** The proof file of the recipient. [ID Evidence](https://developers.docusign.com/idevidence-api) uses proof files to store the identification data that recipients submit when verifying their ID with [ID Verification](https://developers.docusign.com/esign-rest-api/reference/Accounts/IdentityVerifications) */
public final class RecipientProofFile: Content, Hashable {
    /** Indicates whether a proof file is available for this recipient. */
    public var isInProofFile: String?

    public init(isInProofFile: String? = nil) {
        self.isInProofFile = isInProofFile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isInProofFile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isInProofFile, forKey: .isInProofFile)
    }

    public static func == (lhs: RecipientProofFile, rhs: RecipientProofFile) -> Bool {
        lhs.isInProofFile == rhs.isInProofFile
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(isInProofFile?.hashValue)
    }
}