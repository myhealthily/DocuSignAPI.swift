//
// AccessCodeFormat.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Object specifying the format of the string provided to a recipient in order to access an envelope. */
public final class AccessCodeFormat: Content {
    /** Boolean specifying whether this format configuration is required. */
    public var formatRequired: String?
    public var formatRequiredMetadata: SettingsMetadata?
    /** Boolean specifying whether alphabetical characters are required in the access code string. */
    public var letterRequired: String?
    public var letterRequiredMetadata: SettingsMetadata?
    /** Minimum length of the access code string. */
    public var minimumLength: String?
    public var minimumLengthMetadata: SettingsMetadata?
    /** Boolean specifying whether numerical characters (0-9) are required in the access code string. */
    public var numberRequired: String?
    public var numberRequiredMetadata: SettingsMetadata?
    /** Boolean specifying whether special characters are required in the access code string. The string cannot contain the special characters '<', '>', '&', or '#'. */
    public var specialCharacterRequired: String?
    public var specialCharacterRequiredMetadata: SettingsMetadata?

    public init(formatRequired: String? = nil, formatRequiredMetadata: SettingsMetadata? = nil, letterRequired: String? = nil, letterRequiredMetadata: SettingsMetadata? = nil, minimumLength: String? = nil, minimumLengthMetadata: SettingsMetadata? = nil, numberRequired: String? = nil, numberRequiredMetadata: SettingsMetadata? = nil, specialCharacterRequired: String? = nil, specialCharacterRequiredMetadata: SettingsMetadata? = nil) {
        self.formatRequired = formatRequired
        self.formatRequiredMetadata = formatRequiredMetadata
        self.letterRequired = letterRequired
        self.letterRequiredMetadata = letterRequiredMetadata
        self.minimumLength = minimumLength
        self.minimumLengthMetadata = minimumLengthMetadata
        self.numberRequired = numberRequired
        self.numberRequiredMetadata = numberRequiredMetadata
        self.specialCharacterRequired = specialCharacterRequired
        self.specialCharacterRequiredMetadata = specialCharacterRequiredMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case formatRequired
        case formatRequiredMetadata
        case letterRequired
        case letterRequiredMetadata
        case minimumLength
        case minimumLengthMetadata
        case numberRequired
        case numberRequiredMetadata
        case specialCharacterRequired
        case specialCharacterRequiredMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(formatRequired, forKey: .formatRequired)
        try container.encodeIfPresent(formatRequiredMetadata, forKey: .formatRequiredMetadata)
        try container.encodeIfPresent(letterRequired, forKey: .letterRequired)
        try container.encodeIfPresent(letterRequiredMetadata, forKey: .letterRequiredMetadata)
        try container.encodeIfPresent(minimumLength, forKey: .minimumLength)
        try container.encodeIfPresent(minimumLengthMetadata, forKey: .minimumLengthMetadata)
        try container.encodeIfPresent(numberRequired, forKey: .numberRequired)
        try container.encodeIfPresent(numberRequiredMetadata, forKey: .numberRequiredMetadata)
        try container.encodeIfPresent(specialCharacterRequired, forKey: .specialCharacterRequired)
        try container.encodeIfPresent(specialCharacterRequiredMetadata, forKey: .specialCharacterRequiredMetadata)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        formatRequired = try container.decodeIfPresent(String.self, forKey: .formatRequired)
        formatRequiredMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .formatRequiredMetadata)
        letterRequired = try container.decodeIfPresent(String.self, forKey: .letterRequired)
        letterRequiredMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .letterRequiredMetadata)
        minimumLength = try container.decodeIfPresent(String.self, forKey: .minimumLength)
        minimumLengthMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .minimumLengthMetadata)
        numberRequired = try container.decodeIfPresent(String.self, forKey: .numberRequired)
        numberRequiredMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .numberRequiredMetadata)
        specialCharacterRequired = try container.decodeIfPresent(String.self, forKey: .specialCharacterRequired)
        specialCharacterRequiredMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .specialCharacterRequiredMetadata)
    }
}

extension AccessCodeFormat: Hashable {
    public static func == (lhs: AccessCodeFormat, rhs: AccessCodeFormat) -> Bool {
        lhs.formatRequired == rhs.formatRequired &&
            lhs.formatRequiredMetadata == rhs.formatRequiredMetadata &&
            lhs.letterRequired == rhs.letterRequired &&
            lhs.letterRequiredMetadata == rhs.letterRequiredMetadata &&
            lhs.minimumLength == rhs.minimumLength &&
            lhs.minimumLengthMetadata == rhs.minimumLengthMetadata &&
            lhs.numberRequired == rhs.numberRequired &&
            lhs.numberRequiredMetadata == rhs.numberRequiredMetadata &&
            lhs.specialCharacterRequired == rhs.specialCharacterRequired &&
            lhs.specialCharacterRequiredMetadata == rhs.specialCharacterRequiredMetadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(formatRequired?.hashValue)
        hasher.combine(formatRequiredMetadata?.hashValue)
        hasher.combine(letterRequired?.hashValue)
        hasher.combine(letterRequiredMetadata?.hashValue)
        hasher.combine(minimumLength?.hashValue)
        hasher.combine(minimumLengthMetadata?.hashValue)
        hasher.combine(numberRequired?.hashValue)
        hasher.combine(numberRequiredMetadata?.hashValue)
        hasher.combine(specialCharacterRequired?.hashValue)
        hasher.combine(specialCharacterRequiredMetadata?.hashValue)
    }
}
