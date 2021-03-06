//
// ConnectFailureResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** This object contains details about a Connect failure result. */
public final class ConnectFailureResult: Content, Hashable {
    /** Reserved for DocuSign. */
    public var configId: String?
    /** Reserved for DocuSign.  */
    public var configUrl: String?
    /** The envelope ID of the envelope status that failed to post. */
    public var envelopeId: String?
    /** The connection status. */
    public var status: String?
    /** A human-readable message describing the connection status. */
    public var statusMessage: String?

    public init(configId: String? = nil, configUrl: String? = nil, envelopeId: String? = nil, status: String? = nil, statusMessage: String? = nil) {
        self.configId = configId
        self.configUrl = configUrl
        self.envelopeId = envelopeId
        self.status = status
        self.statusMessage = statusMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case configId
        case configUrl
        case envelopeId
        case status
        case statusMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(configId, forKey: .configId)
        try container.encodeIfPresent(configUrl, forKey: .configUrl)
        try container.encodeIfPresent(envelopeId, forKey: .envelopeId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusMessage, forKey: .statusMessage)
    }

    public static func == (lhs: ConnectFailureResult, rhs: ConnectFailureResult) -> Bool {
        lhs.configId == rhs.configId &&
            lhs.configUrl == rhs.configUrl &&
            lhs.envelopeId == rhs.envelopeId &&
            lhs.status == rhs.status &&
            lhs.statusMessage == rhs.statusMessage
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(configId?.hashValue)
        hasher.combine(configUrl?.hashValue)
        hasher.combine(envelopeId?.hashValue)
        hasher.combine(status?.hashValue)
        hasher.combine(statusMessage?.hashValue)
    }
}
