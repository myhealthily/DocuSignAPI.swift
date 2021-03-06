//
// ContactUpdateResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This response objects shows the updated details for the contacts. */
public final class ContactUpdateResponse: Content, Hashable {
    /** A list of contacts. */
    public var contacts: [Contact]?

    public init(contacts: [Contact]? = nil) {
        self.contacts = contacts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contacts
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contacts, forKey: .contacts)
    }

    public static func == (lhs: ContactUpdateResponse, rhs: ContactUpdateResponse) -> Bool {
        lhs.contacts == rhs.contacts
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(contacts?.hashValue)
    }
}
