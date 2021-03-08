//
// OauthAccess.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class OauthAccess: Content {
    /** Access token information. */
    public var accessToken: String?
    /** A Base64-encoded representation of the attachment that is used to upload and download the file. File attachments may be up to 50 MB in size. */
    public var data: [NameValue]?
    /**  */
    public var expiresIn: String?
    /**  */
    public var refreshToken: String?
    /** Must be set to \"api\". */
    public var scope: String?
    /**  */
    public var tokenType: String?

    public init(accessToken: String? = nil, data: [NameValue]? = nil, expiresIn: String? = nil, refreshToken: String? = nil, scope: String? = nil, tokenType: String? = nil) {
        self.accessToken = accessToken
        self.data = data
        self.expiresIn = expiresIn
        self.refreshToken = refreshToken
        self.scope = scope
        self.tokenType = tokenType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessToken = "access_token"
        case data
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
        case scope
        case tokenType = "token_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(tokenType, forKey: .tokenType)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accessToken = try container.decodeIfPresent(String.self, forKey: .accessToken)
        data = try container.decodeIfPresent([NameValue].self, forKey: .data)
        expiresIn = try container.decodeIfPresent(String.self, forKey: .expiresIn)
        refreshToken = try container.decodeIfPresent(String.self, forKey: .refreshToken)
        scope = try container.decodeIfPresent(String.self, forKey: .scope)
        tokenType = try container.decodeIfPresent(String.self, forKey: .tokenType)
    }
}

extension OauthAccess: Hashable {
    public static func == (lhs: OauthAccess, rhs: OauthAccess) -> Bool {
        lhs.accessToken == rhs.accessToken &&
            lhs.data == rhs.data &&
            lhs.expiresIn == rhs.expiresIn &&
            lhs.refreshToken == rhs.refreshToken &&
            lhs.scope == rhs.scope &&
            lhs.tokenType == rhs.tokenType
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accessToken?.hashValue)
        hasher.combine(data?.hashValue)
        hasher.combine(expiresIn?.hashValue)
        hasher.combine(refreshToken?.hashValue)
        hasher.combine(scope?.hashValue)
        hasher.combine(tokenType?.hashValue)
    }
}