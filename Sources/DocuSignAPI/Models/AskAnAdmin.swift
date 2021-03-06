//
// AskAnAdmin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class AskAnAdmin: Content, Hashable {
    /**  */
    public var email: String?
    /**  */
    public var message: String?
    /**  */
    public var name: String?
    /**  */
    public var phone: String?

    public init(email: String? = nil, message: String? = nil, name: String? = nil, phone: String? = nil) {
        self.email = email
        self.message = message
        self.name = name
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case message
        case name
        case phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(phone, forKey: .phone)
    }

    public static func == (lhs: AskAnAdmin, rhs: AskAnAdmin) -> Bool {
        lhs.email == rhs.email &&
            lhs.message == rhs.message &&
            lhs.name == rhs.name &&
            lhs.phone == rhs.phone
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(email?.hashValue)
        hasher.combine(message?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(phone?.hashValue)
    }
}
