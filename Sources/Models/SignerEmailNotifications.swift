//
// SignerEmailNotifications.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** An array of email notifications that specifies the email the user receives when they are a sender. When the specific email notification is set to true, the user receives those types of email notifications from DocuSign. The user inherits the default account sender email notification settings when the user is created. */
public final class SignerEmailNotifications: Content {
    /** When set to **true**, the user receives agent notification emails. */
    public var agentNotification: String?
    /** When set to **true**, the user receives notifications of carbon copy deliveries. */
    public var carbonCopyNotification: String?
    /** When set to **true**, the user receives notifications of certified deliveries. */
    public var certifiedDeliveryNotification: String?
    /** When set to **true**, the user receives only comments that mention their own user name. */
    public var commentsOnlyPrivateAndMention: String?
    /** When set to **true**, the user receives all comments. */
    public var commentsReceiveAll: String?
    /** When set to **true**, the user receives notification that document markup has been activated. */
    public var documentMarkupActivation: String?
    /** When set to **true**, the user receives notification that the envelope has been activated. */
    public var envelopeActivation: String?
    /** When set to **true**, the user receives an email notification when the envelope has been completed. */
    public var envelopeComplete: String?
    /** When set to **true**, the user receives notification that the envelope has been corrected. */
    public var envelopeCorrected: String?
    /** When set to **true**, the user receives notification that the envelope has been declined. */
    public var envelopeDeclined: String?
    /** When set to **true**, the user receives notification that the envelope has been voided. */
    public var envelopeVoided: String?
    /** Reserved for DocuSign. */
    public var faxReceived: String?
    /** When set to **true**, the user receives an email notification if offline signing failed. */
    public var offlineSigningFailed: String?
    /** When set to **true**, the user receives an email notification when a document purge occurs. */
    public var purgeDocuments: String?
    /** When set to **true**, the user receives notification that the envelope has been reassigned. */
    public var reassignedSigner: String?
    /** When set to **true**, the user receives notification that he or she is a member of the signing group. */
    public var whenSigningGroupMember: String?

    public init(agentNotification: String? = nil, carbonCopyNotification: String? = nil, certifiedDeliveryNotification: String? = nil, commentsOnlyPrivateAndMention: String? = nil, commentsReceiveAll: String? = nil, documentMarkupActivation: String? = nil, envelopeActivation: String? = nil, envelopeComplete: String? = nil, envelopeCorrected: String? = nil, envelopeDeclined: String? = nil, envelopeVoided: String? = nil, faxReceived: String? = nil, offlineSigningFailed: String? = nil, purgeDocuments: String? = nil, reassignedSigner: String? = nil, whenSigningGroupMember: String? = nil) {
        self.agentNotification = agentNotification
        self.carbonCopyNotification = carbonCopyNotification
        self.certifiedDeliveryNotification = certifiedDeliveryNotification
        self.commentsOnlyPrivateAndMention = commentsOnlyPrivateAndMention
        self.commentsReceiveAll = commentsReceiveAll
        self.documentMarkupActivation = documentMarkupActivation
        self.envelopeActivation = envelopeActivation
        self.envelopeComplete = envelopeComplete
        self.envelopeCorrected = envelopeCorrected
        self.envelopeDeclined = envelopeDeclined
        self.envelopeVoided = envelopeVoided
        self.faxReceived = faxReceived
        self.offlineSigningFailed = offlineSigningFailed
        self.purgeDocuments = purgeDocuments
        self.reassignedSigner = reassignedSigner
        self.whenSigningGroupMember = whenSigningGroupMember
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agentNotification
        case carbonCopyNotification
        case certifiedDeliveryNotification
        case commentsOnlyPrivateAndMention
        case commentsReceiveAll
        case documentMarkupActivation
        case envelopeActivation
        case envelopeComplete
        case envelopeCorrected
        case envelopeDeclined
        case envelopeVoided
        case faxReceived
        case offlineSigningFailed
        case purgeDocuments
        case reassignedSigner
        case whenSigningGroupMember
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(agentNotification, forKey: .agentNotification)
        try container.encodeIfPresent(carbonCopyNotification, forKey: .carbonCopyNotification)
        try container.encodeIfPresent(certifiedDeliveryNotification, forKey: .certifiedDeliveryNotification)
        try container.encodeIfPresent(commentsOnlyPrivateAndMention, forKey: .commentsOnlyPrivateAndMention)
        try container.encodeIfPresent(commentsReceiveAll, forKey: .commentsReceiveAll)
        try container.encodeIfPresent(documentMarkupActivation, forKey: .documentMarkupActivation)
        try container.encodeIfPresent(envelopeActivation, forKey: .envelopeActivation)
        try container.encodeIfPresent(envelopeComplete, forKey: .envelopeComplete)
        try container.encodeIfPresent(envelopeCorrected, forKey: .envelopeCorrected)
        try container.encodeIfPresent(envelopeDeclined, forKey: .envelopeDeclined)
        try container.encodeIfPresent(envelopeVoided, forKey: .envelopeVoided)
        try container.encodeIfPresent(faxReceived, forKey: .faxReceived)
        try container.encodeIfPresent(offlineSigningFailed, forKey: .offlineSigningFailed)
        try container.encodeIfPresent(purgeDocuments, forKey: .purgeDocuments)
        try container.encodeIfPresent(reassignedSigner, forKey: .reassignedSigner)
        try container.encodeIfPresent(whenSigningGroupMember, forKey: .whenSigningGroupMember)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        agentNotification = try container.decodeIfPresent(String.self, forKey: .agentNotification)
        carbonCopyNotification = try container.decodeIfPresent(String.self, forKey: .carbonCopyNotification)
        certifiedDeliveryNotification = try container.decodeIfPresent(String.self, forKey: .certifiedDeliveryNotification)
        commentsOnlyPrivateAndMention = try container.decodeIfPresent(String.self, forKey: .commentsOnlyPrivateAndMention)
        commentsReceiveAll = try container.decodeIfPresent(String.self, forKey: .commentsReceiveAll)
        documentMarkupActivation = try container.decodeIfPresent(String.self, forKey: .documentMarkupActivation)
        envelopeActivation = try container.decodeIfPresent(String.self, forKey: .envelopeActivation)
        envelopeComplete = try container.decodeIfPresent(String.self, forKey: .envelopeComplete)
        envelopeCorrected = try container.decodeIfPresent(String.self, forKey: .envelopeCorrected)
        envelopeDeclined = try container.decodeIfPresent(String.self, forKey: .envelopeDeclined)
        envelopeVoided = try container.decodeIfPresent(String.self, forKey: .envelopeVoided)
        faxReceived = try container.decodeIfPresent(String.self, forKey: .faxReceived)
        offlineSigningFailed = try container.decodeIfPresent(String.self, forKey: .offlineSigningFailed)
        purgeDocuments = try container.decodeIfPresent(String.self, forKey: .purgeDocuments)
        reassignedSigner = try container.decodeIfPresent(String.self, forKey: .reassignedSigner)
        whenSigningGroupMember = try container.decodeIfPresent(String.self, forKey: .whenSigningGroupMember)
    }
}

extension SignerEmailNotifications: Hashable {
    public static func == (lhs: SignerEmailNotifications, rhs: SignerEmailNotifications) -> Bool {
        lhs.agentNotification == rhs.agentNotification &&
            lhs.carbonCopyNotification == rhs.carbonCopyNotification &&
            lhs.certifiedDeliveryNotification == rhs.certifiedDeliveryNotification &&
            lhs.commentsOnlyPrivateAndMention == rhs.commentsOnlyPrivateAndMention &&
            lhs.commentsReceiveAll == rhs.commentsReceiveAll &&
            lhs.documentMarkupActivation == rhs.documentMarkupActivation &&
            lhs.envelopeActivation == rhs.envelopeActivation &&
            lhs.envelopeComplete == rhs.envelopeComplete &&
            lhs.envelopeCorrected == rhs.envelopeCorrected &&
            lhs.envelopeDeclined == rhs.envelopeDeclined &&
            lhs.envelopeVoided == rhs.envelopeVoided &&
            lhs.faxReceived == rhs.faxReceived &&
            lhs.offlineSigningFailed == rhs.offlineSigningFailed &&
            lhs.purgeDocuments == rhs.purgeDocuments &&
            lhs.reassignedSigner == rhs.reassignedSigner &&
            lhs.whenSigningGroupMember == rhs.whenSigningGroupMember
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(agentNotification?.hashValue)
        hasher.combine(carbonCopyNotification?.hashValue)
        hasher.combine(certifiedDeliveryNotification?.hashValue)
        hasher.combine(commentsOnlyPrivateAndMention?.hashValue)
        hasher.combine(commentsReceiveAll?.hashValue)
        hasher.combine(documentMarkupActivation?.hashValue)
        hasher.combine(envelopeActivation?.hashValue)
        hasher.combine(envelopeComplete?.hashValue)
        hasher.combine(envelopeCorrected?.hashValue)
        hasher.combine(envelopeDeclined?.hashValue)
        hasher.combine(envelopeVoided?.hashValue)
        hasher.combine(faxReceived?.hashValue)
        hasher.combine(offlineSigningFailed?.hashValue)
        hasher.combine(purgeDocuments?.hashValue)
        hasher.combine(reassignedSigner?.hashValue)
        hasher.combine(whenSigningGroupMember?.hashValue)
    }
}
