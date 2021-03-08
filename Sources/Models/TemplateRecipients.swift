//
// TemplateRecipients.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Template recipients */
public final class TemplateRecipients: Content {
    /** A list of agent recipients assigned to the documents. */
    public var agents: [Agent]?
    /** A list of carbon copy recipients assigned to the documents. */
    public var carbonCopies: [CarbonCopy]?
    /** A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents. */
    public var certifiedDeliveries: [CertifiedDelivery]?
    /** The routing order of the current recipient. If this value equals a particular signer's routing order, it indicates that the envelope has been sent to that recipient, but he or she has not completed the required actions. */
    public var currentRoutingOrder: String?
    /** A complex type defining the management and access rights of a recipient assigned assigned as an editor on the document. */
    public var editors: [Editor]?
    public var errorDetails: ErrorDetails?
    /** Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected. */
    public var inPersonSigners: [InPersonSigner]?
    /** Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added). */
    public var intermediaries: [Intermediary]?
    /**  */
    public var notaries: [NotaryRecipient]?
    /** The number of recipients in the envelope. */
    public var recipientCount: String?
    /** Specifies one or more electronic seals to apply on documents. For more information on Electronic Seals , see https://support.docusign.com/en/guides/ndse-user-guide-apply-electronic-seals */
    public var seals: [SealSign]?
    /** A list of signers on the envelope. */
    public var signers: [Signer]?
    /** A list of signers who act as witnesses on the envelope. */
    public var witnesses: [Witness]?

    public init(agents: [Agent]? = nil, carbonCopies: [CarbonCopy]? = nil, certifiedDeliveries: [CertifiedDelivery]? = nil, currentRoutingOrder: String? = nil, editors: [Editor]? = nil, errorDetails: ErrorDetails? = nil, inPersonSigners: [InPersonSigner]? = nil, intermediaries: [Intermediary]? = nil, notaries: [NotaryRecipient]? = nil, recipientCount: String? = nil, seals: [SealSign]? = nil, signers: [Signer]? = nil, witnesses: [Witness]? = nil) {
        self.agents = agents
        self.carbonCopies = carbonCopies
        self.certifiedDeliveries = certifiedDeliveries
        self.currentRoutingOrder = currentRoutingOrder
        self.editors = editors
        self.errorDetails = errorDetails
        self.inPersonSigners = inPersonSigners
        self.intermediaries = intermediaries
        self.notaries = notaries
        self.recipientCount = recipientCount
        self.seals = seals
        self.signers = signers
        self.witnesses = witnesses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agents
        case carbonCopies
        case certifiedDeliveries
        case currentRoutingOrder
        case editors
        case errorDetails
        case inPersonSigners
        case intermediaries
        case notaries
        case recipientCount
        case seals
        case signers
        case witnesses
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(agents, forKey: .agents)
        try container.encodeIfPresent(carbonCopies, forKey: .carbonCopies)
        try container.encodeIfPresent(certifiedDeliveries, forKey: .certifiedDeliveries)
        try container.encodeIfPresent(currentRoutingOrder, forKey: .currentRoutingOrder)
        try container.encodeIfPresent(editors, forKey: .editors)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(inPersonSigners, forKey: .inPersonSigners)
        try container.encodeIfPresent(intermediaries, forKey: .intermediaries)
        try container.encodeIfPresent(notaries, forKey: .notaries)
        try container.encodeIfPresent(recipientCount, forKey: .recipientCount)
        try container.encodeIfPresent(seals, forKey: .seals)
        try container.encodeIfPresent(signers, forKey: .signers)
        try container.encodeIfPresent(witnesses, forKey: .witnesses)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        agents = try container.decodeIfPresent([Agent].self, forKey: .agents)
        carbonCopies = try container.decodeIfPresent([CarbonCopy].self, forKey: .carbonCopies)
        certifiedDeliveries = try container.decodeIfPresent([CertifiedDelivery].self, forKey: .certifiedDeliveries)
        currentRoutingOrder = try container.decodeIfPresent(String.self, forKey: .currentRoutingOrder)
        editors = try container.decodeIfPresent([Editor].self, forKey: .editors)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        inPersonSigners = try container.decodeIfPresent([InPersonSigner].self, forKey: .inPersonSigners)
        intermediaries = try container.decodeIfPresent([Intermediary].self, forKey: .intermediaries)
        notaries = try container.decodeIfPresent([NotaryRecipient].self, forKey: .notaries)
        recipientCount = try container.decodeIfPresent(String.self, forKey: .recipientCount)
        seals = try container.decodeIfPresent([SealSign].self, forKey: .seals)
        signers = try container.decodeIfPresent([Signer].self, forKey: .signers)
        witnesses = try container.decodeIfPresent([Witness].self, forKey: .witnesses)
    }
}

extension TemplateRecipients: Hashable {
    public static func == (lhs: TemplateRecipients, rhs: TemplateRecipients) -> Bool {
        lhs.agents == rhs.agents &&
            lhs.carbonCopies == rhs.carbonCopies &&
            lhs.certifiedDeliveries == rhs.certifiedDeliveries &&
            lhs.currentRoutingOrder == rhs.currentRoutingOrder &&
            lhs.editors == rhs.editors &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.inPersonSigners == rhs.inPersonSigners &&
            lhs.intermediaries == rhs.intermediaries &&
            lhs.notaries == rhs.notaries &&
            lhs.recipientCount == rhs.recipientCount &&
            lhs.seals == rhs.seals &&
            lhs.signers == rhs.signers &&
            lhs.witnesses == rhs.witnesses
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(agents?.hashValue)
        hasher.combine(carbonCopies?.hashValue)
        hasher.combine(certifiedDeliveries?.hashValue)
        hasher.combine(currentRoutingOrder?.hashValue)
        hasher.combine(editors?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(inPersonSigners?.hashValue)
        hasher.combine(intermediaries?.hashValue)
        hasher.combine(notaries?.hashValue)
        hasher.combine(recipientCount?.hashValue)
        hasher.combine(seals?.hashValue)
        hasher.combine(signers?.hashValue)
        hasher.combine(witnesses?.hashValue)
    }
}
