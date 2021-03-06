//
// Stamp.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class Stamp: Content, Hashable {
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
    /**  */
    public var imageBase64: String?
    /** Specificies the type of image. Valid values are:  - `signature_image` - `initials_image` */
    public var imageType: String?
    /** The date and time that the item was last modified. */
    public var lastModifiedDateTime: String?
    /** The phonetic spelling of the `signatureName`. */
    public var phoneticName: String?
    /** Specifies the user's signature name. */
    public var signatureName: String?
    /** The format of a stamp. Valid values are:  - `NameHanko`: The stamp represents only the signer's name. - `NameDateHanko`: The stamp represents the signer's name and the date.  */
    public var stampFormat: String?
    /** The URI for retrieving the image of the user's stamp. */
    public var stampImageUri: String?
    /** The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. */
    public var stampSizeMM: String?
    /** The status of the item. */
    public var status: String?

    public init(adoptedDateTime: String? = nil, createdDateTime: String? = nil, customField: String? = nil, dateStampProperties: DateStampProperties? = nil, disallowUserResizeStamp: String? = nil, errorDetails: ErrorDetails? = nil, externalID: String? = nil, imageBase64: String? = nil, imageType: String? = nil, lastModifiedDateTime: String? = nil, phoneticName: String? = nil, signatureName: String? = nil, stampFormat: String? = nil, stampImageUri: String? = nil, stampSizeMM: String? = nil, status: String? = nil) {
        self.adoptedDateTime = adoptedDateTime
        self.createdDateTime = createdDateTime
        self.customField = customField
        self.dateStampProperties = dateStampProperties
        self.disallowUserResizeStamp = disallowUserResizeStamp
        self.errorDetails = errorDetails
        self.externalID = externalID
        self.imageBase64 = imageBase64
        self.imageType = imageType
        self.lastModifiedDateTime = lastModifiedDateTime
        self.phoneticName = phoneticName
        self.signatureName = signatureName
        self.stampFormat = stampFormat
        self.stampImageUri = stampImageUri
        self.stampSizeMM = stampSizeMM
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
        case lastModifiedDateTime
        case phoneticName
        case signatureName
        case stampFormat
        case stampImageUri
        case stampSizeMM
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
        try container.encodeIfPresent(lastModifiedDateTime, forKey: .lastModifiedDateTime)
        try container.encodeIfPresent(phoneticName, forKey: .phoneticName)
        try container.encodeIfPresent(signatureName, forKey: .signatureName)
        try container.encodeIfPresent(stampFormat, forKey: .stampFormat)
        try container.encodeIfPresent(stampImageUri, forKey: .stampImageUri)
        try container.encodeIfPresent(stampSizeMM, forKey: .stampSizeMM)
        try container.encodeIfPresent(status, forKey: .status)
    }

    public static func == (lhs: Stamp, rhs: Stamp) -> Bool {
        lhs.adoptedDateTime == rhs.adoptedDateTime &&
            lhs.createdDateTime == rhs.createdDateTime &&
            lhs.customField == rhs.customField &&
            lhs.dateStampProperties == rhs.dateStampProperties &&
            lhs.disallowUserResizeStamp == rhs.disallowUserResizeStamp &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.externalID == rhs.externalID &&
            lhs.imageBase64 == rhs.imageBase64 &&
            lhs.imageType == rhs.imageType &&
            lhs.lastModifiedDateTime == rhs.lastModifiedDateTime &&
            lhs.phoneticName == rhs.phoneticName &&
            lhs.signatureName == rhs.signatureName &&
            lhs.stampFormat == rhs.stampFormat &&
            lhs.stampImageUri == rhs.stampImageUri &&
            lhs.stampSizeMM == rhs.stampSizeMM &&
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
        hasher.combine(lastModifiedDateTime?.hashValue)
        hasher.combine(phoneticName?.hashValue)
        hasher.combine(signatureName?.hashValue)
        hasher.combine(stampFormat?.hashValue)
        hasher.combine(stampImageUri?.hashValue)
        hasher.combine(stampSizeMM?.hashValue)
        hasher.combine(status?.hashValue)
    }
}
