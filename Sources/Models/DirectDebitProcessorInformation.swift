//
// DirectDebitProcessorInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Contains information about a bank that processes a customer&#39;s direct debit payments. */
public final class DirectDebitProcessorInformation: Content {
    /** The branch code of the bank used for direct debit.  Maximum Length: 10 characters. */
    public var bankBranchCode: String?
    /** The check digit or digits in the international bank account number. These digits are used to confirm the validity of the account.  Maximum Length: 4 characters. */
    public var bankCheckDigit: String?
    /** The code or number that identifies the bank. This is also known as the sort code.  Example: `200000`  Maximum Length: 18 characters. */
    public var bankCode: String?
    /** The name of the direct debit bank.  Maximum Length: 80 characters. */
    public var bankName: String?
    /** The name on the direct debit bank account. This field is required for POST and PUT requests.  Maximum Length: 60 characters. */
    public var bankTransferAccountName: String?
    /** The customer's bank account number. This value will be obfuscated. This field is required for POST and PUT requests.  Maximum Length: 30 characters. */
    public var bankTransferAccountNumber: String?
    /** Specifies the type of direct debit transfer. The value of this field is dependent on the user's country. This field is required for POST and PUT requests. Possible values are:  - `DirectDebitUK` - `DirectEntryAU` - `SEPA` */
    public var bankTransferType: String?
    /** The user's country. The system populates this value automatically.   */
    public var country: String?
    /** The email address of the user who is associated with the payment method. This field is required for POST and PUT requests.  Maximum Length: 80 characters. */
    public var email: String?
    /** The user's first name. This field is required for POST and PUT requests.  Maximum Length: 30 characters. */
    public var firstName: String?
    /** The International Bank Account Number (IBAN).   Example: `DE89370400440532013000`  For more information, see [PeopleSoft's guide to Setting Up Banks](https://docs.oracle.com/cd/E16365_01/fscm91pbr0/eng/psbooks/fsbk/chapter.htm?File=fsbk/htm/fsbk03.htm).  **Note**: This number will be obfuscated. */
    public var iBAN: String?
    /** The user's last name. This field is required for POST and PUT requests.  Maximum Length: 70 characters. */
    public var lastName: String?

    public init(bankBranchCode: String? = nil, bankCheckDigit: String? = nil, bankCode: String? = nil, bankName: String? = nil, bankTransferAccountName: String? = nil, bankTransferAccountNumber: String? = nil, bankTransferType: String? = nil, country: String? = nil, email: String? = nil, firstName: String? = nil, iBAN: String? = nil, lastName: String? = nil) {
        self.bankBranchCode = bankBranchCode
        self.bankCheckDigit = bankCheckDigit
        self.bankCode = bankCode
        self.bankName = bankName
        self.bankTransferAccountName = bankTransferAccountName
        self.bankTransferAccountNumber = bankTransferAccountNumber
        self.bankTransferType = bankTransferType
        self.country = country
        self.email = email
        self.firstName = firstName
        self.iBAN = iBAN
        self.lastName = lastName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bankBranchCode
        case bankCheckDigit
        case bankCode
        case bankName
        case bankTransferAccountName
        case bankTransferAccountNumber
        case bankTransferType
        case country
        case email
        case firstName
        case iBAN
        case lastName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(bankBranchCode, forKey: .bankBranchCode)
        try container.encodeIfPresent(bankCheckDigit, forKey: .bankCheckDigit)
        try container.encodeIfPresent(bankCode, forKey: .bankCode)
        try container.encodeIfPresent(bankName, forKey: .bankName)
        try container.encodeIfPresent(bankTransferAccountName, forKey: .bankTransferAccountName)
        try container.encodeIfPresent(bankTransferAccountNumber, forKey: .bankTransferAccountNumber)
        try container.encodeIfPresent(bankTransferType, forKey: .bankTransferType)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(iBAN, forKey: .iBAN)
        try container.encodeIfPresent(lastName, forKey: .lastName)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        bankBranchCode = try container.decodeIfPresent(String.self, forKey: .bankBranchCode)
        bankCheckDigit = try container.decodeIfPresent(String.self, forKey: .bankCheckDigit)
        bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
        bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
        bankTransferAccountName = try container.decodeIfPresent(String.self, forKey: .bankTransferAccountName)
        bankTransferAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankTransferAccountNumber)
        bankTransferType = try container.decodeIfPresent(String.self, forKey: .bankTransferType)
        country = try container.decodeIfPresent(String.self, forKey: .country)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        iBAN = try container.decodeIfPresent(String.self, forKey: .iBAN)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
    }
}

extension DirectDebitProcessorInformation: Hashable {
    public static func == (lhs: DirectDebitProcessorInformation, rhs: DirectDebitProcessorInformation) -> Bool {
        lhs.bankBranchCode == rhs.bankBranchCode &&
            lhs.bankCheckDigit == rhs.bankCheckDigit &&
            lhs.bankCode == rhs.bankCode &&
            lhs.bankName == rhs.bankName &&
            lhs.bankTransferAccountName == rhs.bankTransferAccountName &&
            lhs.bankTransferAccountNumber == rhs.bankTransferAccountNumber &&
            lhs.bankTransferType == rhs.bankTransferType &&
            lhs.country == rhs.country &&
            lhs.email == rhs.email &&
            lhs.firstName == rhs.firstName &&
            lhs.iBAN == rhs.iBAN &&
            lhs.lastName == rhs.lastName
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bankBranchCode?.hashValue)
        hasher.combine(bankCheckDigit?.hashValue)
        hasher.combine(bankCode?.hashValue)
        hasher.combine(bankName?.hashValue)
        hasher.combine(bankTransferAccountName?.hashValue)
        hasher.combine(bankTransferAccountNumber?.hashValue)
        hasher.combine(bankTransferType?.hashValue)
        hasher.combine(country?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(firstName?.hashValue)
        hasher.combine(iBAN?.hashValue)
        hasher.combine(lastName?.hashValue)
    }
}
