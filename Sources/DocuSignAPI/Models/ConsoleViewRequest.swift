//
// ConsoleViewRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** The request object for the EnvelopeViews::createConsole method. */
public final class ConsoleViewRequest: Content, Hashable {
    /** The id of the envelope. */
    public var envelopeId: String?
    /** (Optional) The URL to which the user should be redirected after the console view session has ended.  Maximum Length: 500 characters. If the `returnUrl` exceeds this limit, the user is redirected to a truncated URL. */
    public var returnUrl: String?

    public init(envelopeId: String? = nil, returnUrl: String? = nil) {
        self.envelopeId = envelopeId
        self.returnUrl = returnUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case envelopeId
        case returnUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(envelopeId, forKey: .envelopeId)
        try container.encodeIfPresent(returnUrl, forKey: .returnUrl)
    }

    public static func == (lhs: ConsoleViewRequest, rhs: ConsoleViewRequest) -> Bool {
        lhs.envelopeId == rhs.envelopeId &&
            lhs.returnUrl == rhs.returnUrl
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(envelopeId?.hashValue)
        hasher.combine(returnUrl?.hashValue)
    }
}
