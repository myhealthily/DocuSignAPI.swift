//
// SettingsMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Metadata that indicates whether a property is editable and describes setting-specific options. */
public final class SettingsMetadata: Content {
    /** When **true**, indicates compliance with United States Food and Drug Administration (FDA) regulations on electronic records and electronic signatures (ERES). */
    public var is21CFRPart11: String?
    /** An array of option strings supported by this setting. */
    public var options: [String]?
    /** Indicates whether the property is editable. Valid values are:  - `editable` - `read_only` */
    public var rights: String?
    /** Reserved for DocuSign. */
    public var uiHint: String?
    /** Reserved for DocuSign. */
    public var uiOrder: String?
    /** Reserved for DocuSign. */
    public var uiType: String?

    public init(is21CFRPart11: String? = nil, options: [String]? = nil, rights: String? = nil, uiHint: String? = nil, uiOrder: String? = nil, uiType: String? = nil) {
        self.is21CFRPart11 = is21CFRPart11
        self.options = options
        self.rights = rights
        self.uiHint = uiHint
        self.uiOrder = uiOrder
        self.uiType = uiType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case is21CFRPart11
        case options
        case rights
        case uiHint
        case uiOrder
        case uiType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(is21CFRPart11, forKey: .is21CFRPart11)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(rights, forKey: .rights)
        try container.encodeIfPresent(uiHint, forKey: .uiHint)
        try container.encodeIfPresent(uiOrder, forKey: .uiOrder)
        try container.encodeIfPresent(uiType, forKey: .uiType)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        is21CFRPart11 = try container.decodeIfPresent(String.self, forKey: .is21CFRPart11)
        options = try container.decodeIfPresent([String].self, forKey: .options)
        rights = try container.decodeIfPresent(String.self, forKey: .rights)
        uiHint = try container.decodeIfPresent(String.self, forKey: .uiHint)
        uiOrder = try container.decodeIfPresent(String.self, forKey: .uiOrder)
        uiType = try container.decodeIfPresent(String.self, forKey: .uiType)
    }
}

extension SettingsMetadata: Hashable {
    public static func == (lhs: SettingsMetadata, rhs: SettingsMetadata) -> Bool {
        lhs.is21CFRPart11 == rhs.is21CFRPart11 &&
            lhs.options == rhs.options &&
            lhs.rights == rhs.rights &&
            lhs.uiHint == rhs.uiHint &&
            lhs.uiOrder == rhs.uiOrder &&
            lhs.uiType == rhs.uiType
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(is21CFRPart11?.hashValue)
        hasher.combine(options?.hashValue)
        hasher.combine(rights?.hashValue)
        hasher.combine(uiHint?.hashValue)
        hasher.combine(uiOrder?.hashValue)
        hasher.combine(uiType?.hashValue)
    }
}
