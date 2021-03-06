//
// EnvelopeCustomFields.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** An envelope custom field enables you to collect custom data about envelopes on a per-envelope basis. You can then use the custom data for sorting, organizing, searching, and other downstream processes. For example, you can use custom fields to copy envelopes or data to multiple areas in Salesforce. eOriginal customers can eVault their documents from the web app on a per-envelope basis by setting an envelope custom field with a name like \&quot;eVault with eOriginal?\&quot; to \&quot;Yes\&quot; or \&quot;No\&quot;.  When a user creates an envelope, the envelope custom fields display in the **Envelope Settings** section of the DocuSign console. Envelope recipients do not see the envelope custom fields. For more information, see [Envelope Custom Fields](https://support.docusign.com/en/guides/ndse-admin-guide-document-labels). */
public final class EnvelopeCustomFields: Content, Hashable {
    /** An array of list custom fields. */
    public var listCustomFields: [ListCustomField]?
    /** An array of text custom fields. */
    public var textCustomFields: [TextCustomField]?

    public init(listCustomFields: [ListCustomField]? = nil, textCustomFields: [TextCustomField]? = nil) {
        self.listCustomFields = listCustomFields
        self.textCustomFields = textCustomFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case listCustomFields
        case textCustomFields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(listCustomFields, forKey: .listCustomFields)
        try container.encodeIfPresent(textCustomFields, forKey: .textCustomFields)
    }

    public static func == (lhs: EnvelopeCustomFields, rhs: EnvelopeCustomFields) -> Bool {
        lhs.listCustomFields == rhs.listCustomFields &&
            lhs.textCustomFields == rhs.textCustomFields
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(listCustomFields?.hashValue)
        hasher.combine(textCustomFields?.hashValue)
    }
}
