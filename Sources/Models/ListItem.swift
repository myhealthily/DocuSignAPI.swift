//
// ListItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** One of the selectable items in the &#x60;listItems&#x60; property of a [&#x60;list&#x60;](https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/list) tab. */
public final class ListItem: Content {
    /** When set to **true**, indicates that this item is the default selection shown to a signer.   Only one selection can be set as the default. */
    public var selected: String?
    public var selectedMetadata: PropertyMetadata?
    /** Specifies the text that is shown in the dropdown list.  */
    public var text: String?
    public var textMetadata: PropertyMetadata?
    /** Specifies the value that is used when the list item is selected. */
    public var value: String?
    public var valueMetadata: PropertyMetadata?

    public init(selected: String? = nil, selectedMetadata: PropertyMetadata? = nil, text: String? = nil, textMetadata: PropertyMetadata? = nil, value: String? = nil, valueMetadata: PropertyMetadata? = nil) {
        self.selected = selected
        self.selectedMetadata = selectedMetadata
        self.text = text
        self.textMetadata = textMetadata
        self.value = value
        self.valueMetadata = valueMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case selected
        case selectedMetadata
        case text
        case textMetadata
        case value
        case valueMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(selectedMetadata, forKey: .selectedMetadata)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textMetadata, forKey: .textMetadata)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(valueMetadata, forKey: .valueMetadata)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        selected = try container.decodeIfPresent(String.self, forKey: .selected)
        selectedMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .selectedMetadata)
        text = try container.decodeIfPresent(String.self, forKey: .text)
        textMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .textMetadata)
        value = try container.decodeIfPresent(String.self, forKey: .value)
        valueMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .valueMetadata)
    }
}

extension ListItem: Hashable {
    public static func == (lhs: ListItem, rhs: ListItem) -> Bool {
        lhs.selected == rhs.selected &&
            lhs.selectedMetadata == rhs.selectedMetadata &&
            lhs.text == rhs.text &&
            lhs.textMetadata == rhs.textMetadata &&
            lhs.value == rhs.value &&
            lhs.valueMetadata == rhs.valueMetadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(selected?.hashValue)
        hasher.combine(selectedMetadata?.hashValue)
        hasher.combine(text?.hashValue)
        hasher.combine(textMetadata?.hashValue)
        hasher.combine(value?.hashValue)
        hasher.combine(valueMetadata?.hashValue)
    }
}