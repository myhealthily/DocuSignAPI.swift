//
// LocalePolicyTab.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class LocalePolicyTab: Content {
    /**  */
    public var addressFormat: String?
    /**  */
    public var calendarType: String?
    /**  */
    public var cultureName: String?
    /**  */
    public var currencyNegativeFormat: String?
    /**  */
    public var currencyPositiveFormat: String?
    /**  */
    public var customDateFormat: String?
    /**  */
    public var customTimeFormat: String?
    /**  */
    public var dateFormat: String?
    /**  */
    public var initialFormat: String?
    /**  */
    public var nameFormat: String?
    /**  */
    public var timeFormat: String?
    /**  */
    public var timeZone: String?

    public init(addressFormat: String? = nil, calendarType: String? = nil, cultureName: String? = nil, currencyNegativeFormat: String? = nil, currencyPositiveFormat: String? = nil, customDateFormat: String? = nil, customTimeFormat: String? = nil, dateFormat: String? = nil, initialFormat: String? = nil, nameFormat: String? = nil, timeFormat: String? = nil, timeZone: String? = nil) {
        self.addressFormat = addressFormat
        self.calendarType = calendarType
        self.cultureName = cultureName
        self.currencyNegativeFormat = currencyNegativeFormat
        self.currencyPositiveFormat = currencyPositiveFormat
        self.customDateFormat = customDateFormat
        self.customTimeFormat = customTimeFormat
        self.dateFormat = dateFormat
        self.initialFormat = initialFormat
        self.nameFormat = nameFormat
        self.timeFormat = timeFormat
        self.timeZone = timeZone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case addressFormat
        case calendarType
        case cultureName
        case currencyNegativeFormat
        case currencyPositiveFormat
        case customDateFormat
        case customTimeFormat
        case dateFormat
        case initialFormat
        case nameFormat
        case timeFormat
        case timeZone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(addressFormat, forKey: .addressFormat)
        try container.encodeIfPresent(calendarType, forKey: .calendarType)
        try container.encodeIfPresent(cultureName, forKey: .cultureName)
        try container.encodeIfPresent(currencyNegativeFormat, forKey: .currencyNegativeFormat)
        try container.encodeIfPresent(currencyPositiveFormat, forKey: .currencyPositiveFormat)
        try container.encodeIfPresent(customDateFormat, forKey: .customDateFormat)
        try container.encodeIfPresent(customTimeFormat, forKey: .customTimeFormat)
        try container.encodeIfPresent(dateFormat, forKey: .dateFormat)
        try container.encodeIfPresent(initialFormat, forKey: .initialFormat)
        try container.encodeIfPresent(nameFormat, forKey: .nameFormat)
        try container.encodeIfPresent(timeFormat, forKey: .timeFormat)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        addressFormat = try container.decodeIfPresent(String.self, forKey: .addressFormat)
        calendarType = try container.decodeIfPresent(String.self, forKey: .calendarType)
        cultureName = try container.decodeIfPresent(String.self, forKey: .cultureName)
        currencyNegativeFormat = try container.decodeIfPresent(String.self, forKey: .currencyNegativeFormat)
        currencyPositiveFormat = try container.decodeIfPresent(String.self, forKey: .currencyPositiveFormat)
        customDateFormat = try container.decodeIfPresent(String.self, forKey: .customDateFormat)
        customTimeFormat = try container.decodeIfPresent(String.self, forKey: .customTimeFormat)
        dateFormat = try container.decodeIfPresent(String.self, forKey: .dateFormat)
        initialFormat = try container.decodeIfPresent(String.self, forKey: .initialFormat)
        nameFormat = try container.decodeIfPresent(String.self, forKey: .nameFormat)
        timeFormat = try container.decodeIfPresent(String.self, forKey: .timeFormat)
        timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
    }
}

extension LocalePolicyTab: Hashable {
    public static func == (lhs: LocalePolicyTab, rhs: LocalePolicyTab) -> Bool {
        lhs.addressFormat == rhs.addressFormat &&
            lhs.calendarType == rhs.calendarType &&
            lhs.cultureName == rhs.cultureName &&
            lhs.currencyNegativeFormat == rhs.currencyNegativeFormat &&
            lhs.currencyPositiveFormat == rhs.currencyPositiveFormat &&
            lhs.customDateFormat == rhs.customDateFormat &&
            lhs.customTimeFormat == rhs.customTimeFormat &&
            lhs.dateFormat == rhs.dateFormat &&
            lhs.initialFormat == rhs.initialFormat &&
            lhs.nameFormat == rhs.nameFormat &&
            lhs.timeFormat == rhs.timeFormat &&
            lhs.timeZone == rhs.timeZone
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(addressFormat?.hashValue)
        hasher.combine(calendarType?.hashValue)
        hasher.combine(cultureName?.hashValue)
        hasher.combine(currencyNegativeFormat?.hashValue)
        hasher.combine(currencyPositiveFormat?.hashValue)
        hasher.combine(customDateFormat?.hashValue)
        hasher.combine(customTimeFormat?.hashValue)
        hasher.combine(dateFormat?.hashValue)
        hasher.combine(initialFormat?.hashValue)
        hasher.combine(nameFormat?.hashValue)
        hasher.combine(timeFormat?.hashValue)
        hasher.combine(timeZone?.hashValue)
    }
}
