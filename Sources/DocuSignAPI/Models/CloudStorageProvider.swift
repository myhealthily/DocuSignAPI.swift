//
// CloudStorageProvider.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Contains details about a specific cloud storage provider. */
public final class CloudStorageProvider: Content, Hashable {
    /** The authentication URL used for the cloud storage provider. This information is only included in the response if the user has not passed authentication for the cloud storage provider. If the redirectUrl query string is provided, the returnUrl is appended to the authenticationUrl.  */
    public var authenticationUrl: String?
    public var errorDetails: ErrorDetails?
    /** The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains. */
    public var redirectUrl: String?
    /** The service name for the cloud storage provider. */
    public var service: String?
    /** The DocuSign-generated ID for the cloud storage provider. */
    public var serviceId: String?

    public init(authenticationUrl: String? = nil, errorDetails: ErrorDetails? = nil, redirectUrl: String? = nil, service: String? = nil, serviceId: String? = nil) {
        self.authenticationUrl = authenticationUrl
        self.errorDetails = errorDetails
        self.redirectUrl = redirectUrl
        self.service = service
        self.serviceId = serviceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticationUrl
        case errorDetails
        case redirectUrl
        case service
        case serviceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(authenticationUrl, forKey: .authenticationUrl)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(serviceId, forKey: .serviceId)
    }

    public static func == (lhs: CloudStorageProvider, rhs: CloudStorageProvider) -> Bool {
        lhs.authenticationUrl == rhs.authenticationUrl &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.redirectUrl == rhs.redirectUrl &&
            lhs.service == rhs.service &&
            lhs.serviceId == rhs.serviceId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(authenticationUrl?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(redirectUrl?.hashValue)
        hasher.combine(service?.hashValue)
        hasher.combine(serviceId?.hashValue)
    }
}
