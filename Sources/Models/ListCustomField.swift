//
// ListCustomField.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object represents a list custom field from which envelope creators and senders can select custom data. */
public final class ListCustomField: Content {
    /** If you are using merge fields, this property specifies the type of the merge field. The only supported value is `salesforce`. */
    public var configurationType: String?
    public var errorDetails: ErrorDetails?
    /** The id of the custom field. */
    public var fieldId: String?
    /** An array of strings that represents the options in a list.  Maximum length: 2048 characters, but each individual option string can only be a maximum of 100 characters. */
    public var listItems: [String]?
    /** The name of the custom field. */
    public var name: String?
    /** When set to **true**, senders are required to select an option from the list before they can send the envelope. */
    public var required: String?
    /** When set to **true**, the field displays in the **Envelope Custom Fields** section when a user creates or sends an envelope. */
    public var show: String?
    /** The value of the custom field. This is the value that the user who creates or sends the envelope selects from the list. */
    public var value: String?

    public init(configurationType: String? = nil, errorDetails: ErrorDetails? = nil, fieldId: String? = nil, listItems: [String]? = nil, name: String? = nil, required: String? = nil, show: String? = nil, value: String? = nil) {
        self.configurationType = configurationType
        self.errorDetails = errorDetails
        self.fieldId = fieldId
        self.listItems = listItems
        self.name = name
        self.required = required
        self.show = show
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case configurationType
        case errorDetails
        case fieldId
        case listItems
        case name
        case required
        case show
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(configurationType, forKey: .configurationType)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(fieldId, forKey: .fieldId)
        try container.encodeIfPresent(listItems, forKey: .listItems)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(required, forKey: .required)
        try container.encodeIfPresent(show, forKey: .show)
        try container.encodeIfPresent(value, forKey: .value)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        configurationType = try container.decodeIfPresent(String.self, forKey: .configurationType)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        fieldId = try container.decodeIfPresent(String.self, forKey: .fieldId)
        listItems = try container.decodeIfPresent([String].self, forKey: .listItems)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        required = try container.decodeIfPresent(String.self, forKey: .required)
        show = try container.decodeIfPresent(String.self, forKey: .show)
        value = try container.decodeIfPresent(String.self, forKey: .value)
    }
}

extension ListCustomField: Hashable {
    public static func == (lhs: ListCustomField, rhs: ListCustomField) -> Bool {
        lhs.configurationType == rhs.configurationType &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.fieldId == rhs.fieldId &&
            lhs.listItems == rhs.listItems &&
            lhs.name == rhs.name &&
            lhs.required == rhs.required &&
            lhs.show == rhs.show &&
            lhs.value == rhs.value
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(configurationType?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(fieldId?.hashValue)
        hasher.combine(listItems?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(required?.hashValue)
        hasher.combine(show?.hashValue)
        hasher.combine(value?.hashValue)
    }
}