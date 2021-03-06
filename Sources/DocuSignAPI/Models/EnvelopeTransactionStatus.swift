//
// EnvelopeTransactionStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EnvelopeTransactionStatus: Content, Hashable {
    /** The envelope ID of the envelope status that failed to post. */
    public var envelopeId: String?
    public var errorDetails: ErrorDetails?
    /** Indicates the envelope status. Valid values are:  * `completed`: The recipients have finished working with the envelope: the documents are signed and all required tabs are filled in. * `created`: The envelope is created as a draft. It can be modified and sent later. * `declined`: The envelope has been declined by the recipients. * `delivered`: The envelope has been delivered to the recipients. * `sent`: The envelope will be sent to the recipients after the envelope is created. * `signed`: The envelope has been signed by the recipients. * `voided`: The envelope is no longer valid and recipients cannot access or sign the envelope.  */
    public var status: String?
    /**  Used to identify an envelope. The id is a sender-generated value and is valid in the DocuSign system for 7 days. It is recommended that a transaction ID is used for offline signing to ensure that an envelope is not sent multiple times. The `transactionId` property can be used determine an envelope's status (i.e. was it created or not) in cases where the internet connection was lost before the envelope status was returned. */
    public var transactionId: String?

    public init(envelopeId: String? = nil, errorDetails: ErrorDetails? = nil, status: String? = nil, transactionId: String? = nil) {
        self.envelopeId = envelopeId
        self.errorDetails = errorDetails
        self.status = status
        self.transactionId = transactionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case envelopeId
        case errorDetails
        case status
        case transactionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(envelopeId, forKey: .envelopeId)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
    }

    public static func == (lhs: EnvelopeTransactionStatus, rhs: EnvelopeTransactionStatus) -> Bool {
        lhs.envelopeId == rhs.envelopeId &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.status == rhs.status &&
            lhs.transactionId == rhs.transactionId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(envelopeId?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(status?.hashValue)
        hasher.combine(transactionId?.hashValue)
    }
}
