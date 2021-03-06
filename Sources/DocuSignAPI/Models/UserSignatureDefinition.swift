//
// UserSignatureDefinition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class UserSignatureDefinition: Content, Hashable {
    public var dateStampProperties: DateStampProperties?
    /** When set to **true**, users may not resize the stamp. */
    public var disallowUserResizeStamp: String?
    /** Optionally specify an external identifier for the user's signature. */
    public var externalID: String?
    /** Specificies the type of image. Valid values are:  - `signature_image` - `initials_image` */
    public var imageType: String?
    /** Boolean that specifies whether the signature is the default signature for the user. */
    public var isDefault: String?
    /** The National Association of Realtors (NAR) membership ID for a user who is a realtor. */
    public var nrdsId: String?
    /** The realtor's last name. */
    public var nrdsLastName: String?
    /** The phonetic spelling of the `signatureName`. */
    public var phoneticName: String?
    /** The font type to use for the signature if the signature is not drawn. The following font styles  are supported. The quotes are to indicate that these values are strings, not `enums`.  - `\"1_DocuSign\"` - `\"2_DocuSign\"` - `\"3_DocuSign\"` - `\"4_DocuSign\"` - `\"5_DocuSign\"` - `\"6_DocuSign\"` - `\"7_DocuSign\"` - `\"8_DocuSign\"` - `\"Mistral\"` - `\"Rage Italic\"`  */
    public var signatureFont: String?
    /** Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the `signatureName` property in the body is used. This allows the use of special characters (such as \"&\", \"<\", \">\") in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID. */
    public var signatureId: String?
    /** Specifies the user's signature in initials format. */
    public var signatureInitials: String?
    /** Specifies the user's signature name. */
    public var signatureName: String?
    /** The format of a stamp. Valid values are:  - `NameHanko`: The stamp represents only the signer's name. - `NameDateHanko`: The stamp represents the signer's name and the date.  */
    public var stampFormat: String?
    /** The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. */
    public var stampSizeMM: String?

    public init(dateStampProperties: DateStampProperties? = nil, disallowUserResizeStamp: String? = nil, externalID: String? = nil, imageType: String? = nil, isDefault: String? = nil, nrdsId: String? = nil, nrdsLastName: String? = nil, phoneticName: String? = nil, signatureFont: String? = nil, signatureId: String? = nil, signatureInitials: String? = nil, signatureName: String? = nil, stampFormat: String? = nil, stampSizeMM: String? = nil) {
        self.dateStampProperties = dateStampProperties
        self.disallowUserResizeStamp = disallowUserResizeStamp
        self.externalID = externalID
        self.imageType = imageType
        self.isDefault = isDefault
        self.nrdsId = nrdsId
        self.nrdsLastName = nrdsLastName
        self.phoneticName = phoneticName
        self.signatureFont = signatureFont
        self.signatureId = signatureId
        self.signatureInitials = signatureInitials
        self.signatureName = signatureName
        self.stampFormat = stampFormat
        self.stampSizeMM = stampSizeMM
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dateStampProperties
        case disallowUserResizeStamp
        case externalID
        case imageType
        case isDefault
        case nrdsId
        case nrdsLastName
        case phoneticName
        case signatureFont
        case signatureId
        case signatureInitials
        case signatureName
        case stampFormat
        case stampSizeMM
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dateStampProperties, forKey: .dateStampProperties)
        try container.encodeIfPresent(disallowUserResizeStamp, forKey: .disallowUserResizeStamp)
        try container.encodeIfPresent(externalID, forKey: .externalID)
        try container.encodeIfPresent(imageType, forKey: .imageType)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
        try container.encodeIfPresent(nrdsId, forKey: .nrdsId)
        try container.encodeIfPresent(nrdsLastName, forKey: .nrdsLastName)
        try container.encodeIfPresent(phoneticName, forKey: .phoneticName)
        try container.encodeIfPresent(signatureFont, forKey: .signatureFont)
        try container.encodeIfPresent(signatureId, forKey: .signatureId)
        try container.encodeIfPresent(signatureInitials, forKey: .signatureInitials)
        try container.encodeIfPresent(signatureName, forKey: .signatureName)
        try container.encodeIfPresent(stampFormat, forKey: .stampFormat)
        try container.encodeIfPresent(stampSizeMM, forKey: .stampSizeMM)
    }

    public static func == (lhs: UserSignatureDefinition, rhs: UserSignatureDefinition) -> Bool {
        lhs.dateStampProperties == rhs.dateStampProperties &&
            lhs.disallowUserResizeStamp == rhs.disallowUserResizeStamp &&
            lhs.externalID == rhs.externalID &&
            lhs.imageType == rhs.imageType &&
            lhs.isDefault == rhs.isDefault &&
            lhs.nrdsId == rhs.nrdsId &&
            lhs.nrdsLastName == rhs.nrdsLastName &&
            lhs.phoneticName == rhs.phoneticName &&
            lhs.signatureFont == rhs.signatureFont &&
            lhs.signatureId == rhs.signatureId &&
            lhs.signatureInitials == rhs.signatureInitials &&
            lhs.signatureName == rhs.signatureName &&
            lhs.stampFormat == rhs.stampFormat &&
            lhs.stampSizeMM == rhs.stampSizeMM
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(dateStampProperties?.hashValue)
        hasher.combine(disallowUserResizeStamp?.hashValue)
        hasher.combine(externalID?.hashValue)
        hasher.combine(imageType?.hashValue)
        hasher.combine(isDefault?.hashValue)
        hasher.combine(nrdsId?.hashValue)
        hasher.combine(nrdsLastName?.hashValue)
        hasher.combine(phoneticName?.hashValue)
        hasher.combine(signatureFont?.hashValue)
        hasher.combine(signatureId?.hashValue)
        hasher.combine(signatureInitials?.hashValue)
        hasher.combine(signatureName?.hashValue)
        hasher.combine(stampFormat?.hashValue)
        hasher.combine(stampSizeMM?.hashValue)
    }
}
