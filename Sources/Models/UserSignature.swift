//
// UserSignature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class UserSignature: Content {
    /** The UTC date and time when the user adopted the signature. */
    public var adoptedDateTime: String?
    /** The UTC DateTime when the item was created. */
    public var createdDateTime: String?
    /**  */
    public var customField: String?
    public var dateStampProperties: DateStampProperties?
    /** When set to **true**, users may not resize the stamp. */
    public var disallowUserResizeStamp: String?
    public var errorDetails: ErrorDetails?
    /** Optionally specify an external identifier for the user's signature. */
    public var externalID: String?
    /** A Base64-encoded representation of the signature image. */
    public var imageBase64: String?
    /** Specificies the type of image. Valid values are:  - `signature_image` - `initials_image` */
    public var imageType: String?
    /** The ID of the user's initials image. */
    public var initials150ImageId: String?
    /** The URI for retrieving the image of the user's initials. */
    public var initialsImageUri: String?
    /** Boolean that specifies whether the signature is the default signature for the user. */
    public var isDefault: String?
    /** The date and time that the item was last modified. */
    public var lastModifiedDateTime: String?
    /** The National Association of Realtors (NAR) membership ID for a user who is a realtor. */
    public var nrdsId: String?
    /** The realtor's last name. */
    public var nrdsLastName: String?
    /** The realtor's NAR membership status. The value `active` verifies that the user is a current NAR member. Valid values are:  - `Active` - `Inactive` - `Terminate` - `Provisional` - `Deceased` - `Suspend` - `Unknown` */
    public var nrdsStatus: String?
    /** The phonetic spelling of the `signatureName`. */
    public var phoneticName: String?
    /** The ID of the user's signature image. */
    public var signature150ImageId: String?
    /** The font type to use for the signature if the signature is not drawn. The following font styles  are supported. The quotes are to indicate that these values are strings, not `enums`.  - `\"1_DocuSign\"` - `\"2_DocuSign\"` - `\"3_DocuSign\"` - `\"4_DocuSign\"` - `\"5_DocuSign\"` - `\"6_DocuSign\"` - `\"7_DocuSign\"` - `\"8_DocuSign\"` - `\"Mistral\"` - `\"Rage Italic\"`  */
    public var signatureFont: String?
    /** The ID of the signature being accessed. */
    public var signatureId: String?
    /** An endpoint URI that you can use to retrieve the user's signature image. */
    public var signatureImageUri: String?
    /** Specifies the user's signature in initials format. */
    public var signatureInitials: String?
    /** Specifies the user's signature name. */
    public var signatureName: String?
    /** The rights that the user has to the signature. Valid values are:  - `none` - `read` - `admin` */
    public var signatureRights: String?
    /** Specifies the type of signature. */
    public var signatureType: String?
    /** The format of a stamp. Valid values are:  - `NameHanko`: The stamp represents only the signer's name. - `NameDateHanko`: The stamp represents the signer's name and the date.  */
    public var stampFormat: String?
    /** The URI for retrieving the image of the user's stamp. */
    public var stampImageUri: String?
    /** The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. */
    public var stampSizeMM: String?
    /** The type of stamp. Valid values are:  - `signature`: A signature image. This is the default value. - `stamp`: A stamp image. - null */
    public var stampType: String?
    /** The status of the item. */
    public var status: String?

    public init(adoptedDateTime: String? = nil, createdDateTime: String? = nil, customField: String? = nil, dateStampProperties: DateStampProperties? = nil, disallowUserResizeStamp: String? = nil, errorDetails: ErrorDetails? = nil, externalID: String? = nil, imageBase64: String? = nil, imageType: String? = nil, initials150ImageId: String? = nil, initialsImageUri: String? = nil, isDefault: String? = nil, lastModifiedDateTime: String? = nil, nrdsId: String? = nil, nrdsLastName: String? = nil, nrdsStatus: String? = nil, phoneticName: String? = nil, signature150ImageId: String? = nil, signatureFont: String? = nil, signatureId: String? = nil, signatureImageUri: String? = nil, signatureInitials: String? = nil, signatureName: String? = nil, signatureRights: String? = nil, signatureType: String? = nil, stampFormat: String? = nil, stampImageUri: String? = nil, stampSizeMM: String? = nil, stampType: String? = nil, status: String? = nil) {
        self.adoptedDateTime = adoptedDateTime
        self.createdDateTime = createdDateTime
        self.customField = customField
        self.dateStampProperties = dateStampProperties
        self.disallowUserResizeStamp = disallowUserResizeStamp
        self.errorDetails = errorDetails
        self.externalID = externalID
        self.imageBase64 = imageBase64
        self.imageType = imageType
        self.initials150ImageId = initials150ImageId
        self.initialsImageUri = initialsImageUri
        self.isDefault = isDefault
        self.lastModifiedDateTime = lastModifiedDateTime
        self.nrdsId = nrdsId
        self.nrdsLastName = nrdsLastName
        self.nrdsStatus = nrdsStatus
        self.phoneticName = phoneticName
        self.signature150ImageId = signature150ImageId
        self.signatureFont = signatureFont
        self.signatureId = signatureId
        self.signatureImageUri = signatureImageUri
        self.signatureInitials = signatureInitials
        self.signatureName = signatureName
        self.signatureRights = signatureRights
        self.signatureType = signatureType
        self.stampFormat = stampFormat
        self.stampImageUri = stampImageUri
        self.stampSizeMM = stampSizeMM
        self.stampType = stampType
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case adoptedDateTime
        case createdDateTime
        case customField
        case dateStampProperties
        case disallowUserResizeStamp
        case errorDetails
        case externalID
        case imageBase64
        case imageType
        case initials150ImageId
        case initialsImageUri
        case isDefault
        case lastModifiedDateTime
        case nrdsId
        case nrdsLastName
        case nrdsStatus
        case phoneticName
        case signature150ImageId
        case signatureFont
        case signatureId
        case signatureImageUri
        case signatureInitials
        case signatureName
        case signatureRights
        case signatureType
        case stampFormat
        case stampImageUri
        case stampSizeMM
        case stampType
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(adoptedDateTime, forKey: .adoptedDateTime)
        try container.encodeIfPresent(createdDateTime, forKey: .createdDateTime)
        try container.encodeIfPresent(customField, forKey: .customField)
        try container.encodeIfPresent(dateStampProperties, forKey: .dateStampProperties)
        try container.encodeIfPresent(disallowUserResizeStamp, forKey: .disallowUserResizeStamp)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(externalID, forKey: .externalID)
        try container.encodeIfPresent(imageBase64, forKey: .imageBase64)
        try container.encodeIfPresent(imageType, forKey: .imageType)
        try container.encodeIfPresent(initials150ImageId, forKey: .initials150ImageId)
        try container.encodeIfPresent(initialsImageUri, forKey: .initialsImageUri)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
        try container.encodeIfPresent(lastModifiedDateTime, forKey: .lastModifiedDateTime)
        try container.encodeIfPresent(nrdsId, forKey: .nrdsId)
        try container.encodeIfPresent(nrdsLastName, forKey: .nrdsLastName)
        try container.encodeIfPresent(nrdsStatus, forKey: .nrdsStatus)
        try container.encodeIfPresent(phoneticName, forKey: .phoneticName)
        try container.encodeIfPresent(signature150ImageId, forKey: .signature150ImageId)
        try container.encodeIfPresent(signatureFont, forKey: .signatureFont)
        try container.encodeIfPresent(signatureId, forKey: .signatureId)
        try container.encodeIfPresent(signatureImageUri, forKey: .signatureImageUri)
        try container.encodeIfPresent(signatureInitials, forKey: .signatureInitials)
        try container.encodeIfPresent(signatureName, forKey: .signatureName)
        try container.encodeIfPresent(signatureRights, forKey: .signatureRights)
        try container.encodeIfPresent(signatureType, forKey: .signatureType)
        try container.encodeIfPresent(stampFormat, forKey: .stampFormat)
        try container.encodeIfPresent(stampImageUri, forKey: .stampImageUri)
        try container.encodeIfPresent(stampSizeMM, forKey: .stampSizeMM)
        try container.encodeIfPresent(stampType, forKey: .stampType)
        try container.encodeIfPresent(status, forKey: .status)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        adoptedDateTime = try container.decodeIfPresent(String.self, forKey: .adoptedDateTime)
        createdDateTime = try container.decodeIfPresent(String.self, forKey: .createdDateTime)
        customField = try container.decodeIfPresent(String.self, forKey: .customField)
        dateStampProperties = try container.decodeIfPresent(DateStampProperties.self, forKey: .dateStampProperties)
        disallowUserResizeStamp = try container.decodeIfPresent(String.self, forKey: .disallowUserResizeStamp)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        externalID = try container.decodeIfPresent(String.self, forKey: .externalID)
        imageBase64 = try container.decodeIfPresent(String.self, forKey: .imageBase64)
        imageType = try container.decodeIfPresent(String.self, forKey: .imageType)
        initials150ImageId = try container.decodeIfPresent(String.self, forKey: .initials150ImageId)
        initialsImageUri = try container.decodeIfPresent(String.self, forKey: .initialsImageUri)
        isDefault = try container.decodeIfPresent(String.self, forKey: .isDefault)
        lastModifiedDateTime = try container.decodeIfPresent(String.self, forKey: .lastModifiedDateTime)
        nrdsId = try container.decodeIfPresent(String.self, forKey: .nrdsId)
        nrdsLastName = try container.decodeIfPresent(String.self, forKey: .nrdsLastName)
        nrdsStatus = try container.decodeIfPresent(String.self, forKey: .nrdsStatus)
        phoneticName = try container.decodeIfPresent(String.self, forKey: .phoneticName)
        signature150ImageId = try container.decodeIfPresent(String.self, forKey: .signature150ImageId)
        signatureFont = try container.decodeIfPresent(String.self, forKey: .signatureFont)
        signatureId = try container.decodeIfPresent(String.self, forKey: .signatureId)
        signatureImageUri = try container.decodeIfPresent(String.self, forKey: .signatureImageUri)
        signatureInitials = try container.decodeIfPresent(String.self, forKey: .signatureInitials)
        signatureName = try container.decodeIfPresent(String.self, forKey: .signatureName)
        signatureRights = try container.decodeIfPresent(String.self, forKey: .signatureRights)
        signatureType = try container.decodeIfPresent(String.self, forKey: .signatureType)
        stampFormat = try container.decodeIfPresent(String.self, forKey: .stampFormat)
        stampImageUri = try container.decodeIfPresent(String.self, forKey: .stampImageUri)
        stampSizeMM = try container.decodeIfPresent(String.self, forKey: .stampSizeMM)
        stampType = try container.decodeIfPresent(String.self, forKey: .stampType)
        status = try container.decodeIfPresent(String.self, forKey: .status)
    }
}

extension UserSignature: Hashable {
    public static func == (lhs: UserSignature, rhs: UserSignature) -> Bool {
        lhs.adoptedDateTime == rhs.adoptedDateTime &&
            lhs.createdDateTime == rhs.createdDateTime &&
            lhs.customField == rhs.customField &&
            lhs.dateStampProperties == rhs.dateStampProperties &&
            lhs.disallowUserResizeStamp == rhs.disallowUserResizeStamp &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.externalID == rhs.externalID &&
            lhs.imageBase64 == rhs.imageBase64 &&
            lhs.imageType == rhs.imageType &&
            lhs.initials150ImageId == rhs.initials150ImageId &&
            lhs.initialsImageUri == rhs.initialsImageUri &&
            lhs.isDefault == rhs.isDefault &&
            lhs.lastModifiedDateTime == rhs.lastModifiedDateTime &&
            lhs.nrdsId == rhs.nrdsId &&
            lhs.nrdsLastName == rhs.nrdsLastName &&
            lhs.nrdsStatus == rhs.nrdsStatus &&
            lhs.phoneticName == rhs.phoneticName &&
            lhs.signature150ImageId == rhs.signature150ImageId &&
            lhs.signatureFont == rhs.signatureFont &&
            lhs.signatureId == rhs.signatureId &&
            lhs.signatureImageUri == rhs.signatureImageUri &&
            lhs.signatureInitials == rhs.signatureInitials &&
            lhs.signatureName == rhs.signatureName &&
            lhs.signatureRights == rhs.signatureRights &&
            lhs.signatureType == rhs.signatureType &&
            lhs.stampFormat == rhs.stampFormat &&
            lhs.stampImageUri == rhs.stampImageUri &&
            lhs.stampSizeMM == rhs.stampSizeMM &&
            lhs.stampType == rhs.stampType &&
            lhs.status == rhs.status
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(adoptedDateTime?.hashValue)
        hasher.combine(createdDateTime?.hashValue)
        hasher.combine(customField?.hashValue)
        hasher.combine(dateStampProperties?.hashValue)
        hasher.combine(disallowUserResizeStamp?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(externalID?.hashValue)
        hasher.combine(imageBase64?.hashValue)
        hasher.combine(imageType?.hashValue)
        hasher.combine(initials150ImageId?.hashValue)
        hasher.combine(initialsImageUri?.hashValue)
        hasher.combine(isDefault?.hashValue)
        hasher.combine(lastModifiedDateTime?.hashValue)
        hasher.combine(nrdsId?.hashValue)
        hasher.combine(nrdsLastName?.hashValue)
        hasher.combine(nrdsStatus?.hashValue)
        hasher.combine(phoneticName?.hashValue)
        hasher.combine(signature150ImageId?.hashValue)
        hasher.combine(signatureFont?.hashValue)
        hasher.combine(signatureId?.hashValue)
        hasher.combine(signatureImageUri?.hashValue)
        hasher.combine(signatureInitials?.hashValue)
        hasher.combine(signatureName?.hashValue)
        hasher.combine(signatureRights?.hashValue)
        hasher.combine(signatureType?.hashValue)
        hasher.combine(stampFormat?.hashValue)
        hasher.combine(stampImageUri?.hashValue)
        hasher.combine(stampSizeMM?.hashValue)
        hasher.combine(stampType?.hashValue)
        hasher.combine(status?.hashValue)
    }
}
