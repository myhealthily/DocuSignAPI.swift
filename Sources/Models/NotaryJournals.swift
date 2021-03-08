//
// NotaryJournals.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class NotaryJournals: Content {
    /** The creation date of the account in UTC timedate format. */
    public var createdDate: String?
    /**  */
    public var documentName: String?
    public var jurisdiction: Jurisdiction?
    /**  */
    public var notaryJournalId: String?
    public var notaryJournalMetaData: NotaryJournalMetaData?
    /** The in-person signer's full legal name.  Required when `inPersonSigningType` is `inPersonSigner`. For eNotary flow, use `name` instead.  Maximum Length: 100 characters.  */
    public var signerName: String?

    public init(createdDate: String? = nil, documentName: String? = nil, jurisdiction: Jurisdiction? = nil, notaryJournalId: String? = nil, notaryJournalMetaData: NotaryJournalMetaData? = nil, signerName: String? = nil) {
        self.createdDate = createdDate
        self.documentName = documentName
        self.jurisdiction = jurisdiction
        self.notaryJournalId = notaryJournalId
        self.notaryJournalMetaData = notaryJournalMetaData
        self.signerName = signerName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdDate
        case documentName
        case jurisdiction
        case notaryJournalId
        case notaryJournalMetaData
        case signerName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(documentName, forKey: .documentName)
        try container.encodeIfPresent(jurisdiction, forKey: .jurisdiction)
        try container.encodeIfPresent(notaryJournalId, forKey: .notaryJournalId)
        try container.encodeIfPresent(notaryJournalMetaData, forKey: .notaryJournalMetaData)
        try container.encodeIfPresent(signerName, forKey: .signerName)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        createdDate = try container.decodeIfPresent(String.self, forKey: .createdDate)
        documentName = try container.decodeIfPresent(String.self, forKey: .documentName)
        jurisdiction = try container.decodeIfPresent(Jurisdiction.self, forKey: .jurisdiction)
        notaryJournalId = try container.decodeIfPresent(String.self, forKey: .notaryJournalId)
        notaryJournalMetaData = try container.decodeIfPresent(NotaryJournalMetaData.self, forKey: .notaryJournalMetaData)
        signerName = try container.decodeIfPresent(String.self, forKey: .signerName)
    }
}

extension NotaryJournals: Hashable {
    public static func == (lhs: NotaryJournals, rhs: NotaryJournals) -> Bool {
        lhs.createdDate == rhs.createdDate &&
            lhs.documentName == rhs.documentName &&
            lhs.jurisdiction == rhs.jurisdiction &&
            lhs.notaryJournalId == rhs.notaryJournalId &&
            lhs.notaryJournalMetaData == rhs.notaryJournalMetaData &&
            lhs.signerName == rhs.signerName
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(createdDate?.hashValue)
        hasher.combine(documentName?.hashValue)
        hasher.combine(jurisdiction?.hashValue)
        hasher.combine(notaryJournalId?.hashValue)
        hasher.combine(notaryJournalMetaData?.hashValue)
        hasher.combine(signerName?.hashValue)
    }
}
