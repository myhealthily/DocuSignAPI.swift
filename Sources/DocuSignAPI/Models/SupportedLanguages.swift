//
// SupportedLanguages.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** A list of supported languages. */
public final class SupportedLanguages: Content, Hashable {
    /** A list of languages that you can use for a recipient's language setting. These are the languages that you can set for the standard email format and signing view for each recipient.  For example, in the recipient's email notification, this setting affects elements such as the standard introductory text describing the request to sign. It also determines the language used for buttons and tabs in both the email notification and the signing experience.  **Note**: Setting a language for a recipient affects only the DocuSign standard text. Any custom text that you enter for the `emailBody` and `emailSubject` of the notification is not translated, and appears exactly as you enter it.  Example:  ``` {     \"languages\": [         {             \"name\": \"Arabic (ar)\",             \"value\": \"ar\"         },         {             \"name\": \"Bulgarian (bg)\",             \"value\": \"bg\"         },         .         .         . } ``` */
    public var languages: [NameValue]?

    public init(languages: [NameValue]? = nil) {
        self.languages = languages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case languages
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(languages, forKey: .languages)
    }

    public static func == (lhs: SupportedLanguages, rhs: SupportedLanguages) -> Bool {
        lhs.languages == rhs.languages
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(languages?.hashValue)
    }
}
