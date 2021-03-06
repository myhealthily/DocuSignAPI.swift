//
// AccountPasswordStrengthTypeOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class AccountPasswordStrengthTypeOption: Content, Hashable {
    /** Minimum length of the access code string. */
    public var minimumLength: String?
    /**  */
    public var name: String?
    /** When set to **true**, passwords must include a digit. The default value is `false`. */
    public var passwordIncludeDigit: String?
    /** When set to **true**, passwords must include either a digit or a special character. The default value is `false`.  **Note**: Passwords cannot include angle brackets (`<` `>`) or spaces. */
    public var passwordIncludeDigitOrSpecialCharacter: String?
    /** When set to **true**, passwords must include a lowercase letter. The default value is `false`. */
    public var passwordIncludeLowerCase: String?
    /** When set to **true**, passwords must include a special character. The default value is `false`.  **Note**: Passwords cannot include angle brackets (`<` `>`) or spaces. */
    public var passwordIncludeSpecialCharacter: String?
    /** When set to **true**, passwords must include an uppercase letter. The default value is `false`. */
    public var passwordIncludeUpperCase: String?

    public init(minimumLength: String? = nil, name: String? = nil, passwordIncludeDigit: String? = nil, passwordIncludeDigitOrSpecialCharacter: String? = nil, passwordIncludeLowerCase: String? = nil, passwordIncludeSpecialCharacter: String? = nil, passwordIncludeUpperCase: String? = nil) {
        self.minimumLength = minimumLength
        self.name = name
        self.passwordIncludeDigit = passwordIncludeDigit
        self.passwordIncludeDigitOrSpecialCharacter = passwordIncludeDigitOrSpecialCharacter
        self.passwordIncludeLowerCase = passwordIncludeLowerCase
        self.passwordIncludeSpecialCharacter = passwordIncludeSpecialCharacter
        self.passwordIncludeUpperCase = passwordIncludeUpperCase
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minimumLength
        case name
        case passwordIncludeDigit
        case passwordIncludeDigitOrSpecialCharacter
        case passwordIncludeLowerCase
        case passwordIncludeSpecialCharacter
        case passwordIncludeUpperCase
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(minimumLength, forKey: .minimumLength)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(passwordIncludeDigit, forKey: .passwordIncludeDigit)
        try container.encodeIfPresent(passwordIncludeDigitOrSpecialCharacter, forKey: .passwordIncludeDigitOrSpecialCharacter)
        try container.encodeIfPresent(passwordIncludeLowerCase, forKey: .passwordIncludeLowerCase)
        try container.encodeIfPresent(passwordIncludeSpecialCharacter, forKey: .passwordIncludeSpecialCharacter)
        try container.encodeIfPresent(passwordIncludeUpperCase, forKey: .passwordIncludeUpperCase)
    }

    public static func == (lhs: AccountPasswordStrengthTypeOption, rhs: AccountPasswordStrengthTypeOption) -> Bool {
        lhs.minimumLength == rhs.minimumLength &&
            lhs.name == rhs.name &&
            lhs.passwordIncludeDigit == rhs.passwordIncludeDigit &&
            lhs.passwordIncludeDigitOrSpecialCharacter == rhs.passwordIncludeDigitOrSpecialCharacter &&
            lhs.passwordIncludeLowerCase == rhs.passwordIncludeLowerCase &&
            lhs.passwordIncludeSpecialCharacter == rhs.passwordIncludeSpecialCharacter &&
            lhs.passwordIncludeUpperCase == rhs.passwordIncludeUpperCase
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(minimumLength?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(passwordIncludeDigit?.hashValue)
        hasher.combine(passwordIncludeDigitOrSpecialCharacter?.hashValue)
        hasher.combine(passwordIncludeLowerCase?.hashValue)
        hasher.combine(passwordIncludeSpecialCharacter?.hashValue)
        hasher.combine(passwordIncludeUpperCase?.hashValue)
    }
}
