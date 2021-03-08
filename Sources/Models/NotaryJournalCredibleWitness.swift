//
// NotaryJournalCredibleWitness.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class NotaryJournalCredibleWitness: Content {
    /** The user's address. */
    public var address: String?
    /**  */
    public var name: String?
    /**  */
    public var signatureImage: String?

    public init(address: String? = nil, name: String? = nil, signatureImage: String? = nil) {
        self.address = address
        self.name = name
        self.signatureImage = signatureImage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case name
        case signatureImage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(signatureImage, forKey: .signatureImage)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        address = try container.decodeIfPresent(String.self, forKey: .address)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        signatureImage = try container.decodeIfPresent(String.self, forKey: .signatureImage)
    }
}

extension NotaryJournalCredibleWitness: Hashable {
    public static func == (lhs: NotaryJournalCredibleWitness, rhs: NotaryJournalCredibleWitness) -> Bool {
        lhs.address == rhs.address &&
            lhs.name == rhs.name &&
            lhs.signatureImage == rhs.signatureImage
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(address?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(signatureImage?.hashValue)
    }
}
