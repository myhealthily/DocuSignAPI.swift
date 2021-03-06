//
// AddOn.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Contains information about add ons. */
public final class AddOn: Content, Hashable {
    /** Reserved for DocuSign. */
    public var active: String?
    /** Reserved for DocuSign. */
    public var addOnId: String?
    /** A unique ID for the Salesforce object. */
    public var id: String?
    /** Reserved for DocuSign. */
    public var name: String?

    public init(active: String? = nil, addOnId: String? = nil, id: String? = nil, name: String? = nil) {
        self.active = active
        self.addOnId = addOnId
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case addOnId
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(addOnId, forKey: .addOnId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public static func == (lhs: AddOn, rhs: AddOn) -> Bool {
        lhs.active == rhs.active &&
            lhs.addOnId == rhs.addOnId &&
            lhs.id == rhs.id &&
            lhs.name == rhs.name
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(active?.hashValue)
        hasher.combine(addOnId?.hashValue)
        hasher.combine(id?.hashValue)
        hasher.combine(name?.hashValue)
    }
}
