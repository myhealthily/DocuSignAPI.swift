//
// ReportInProductCsvRunRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class ReportInProductCsvRunRequest: Content {
    /**  */
    public var customFieldFilter: String?
    /**  */
    public var dateRangeCustomFromDate: String?
    /**  */
    public var dateRangeCustomToDate: String?
    /**  */
    public var dateRangeFilter: String?
    /**  */
    public var envelopeDateTypeFilter: String?
    /**  */
    public var envelopeRecipientNameContainsFilter: String?
    /**  */
    public var envelopeStatusFilter: String?
    /**  */
    public var envelopeSubjectContainsFilter: String?
    /**  */
    public var fields: [ReportInProductField]?
    /**  */
    public var forDownload: String?
    /**  */
    public var isDashboard: String?
    /**  */
    public var newLine: String?
    /**  */
    public var overrideTimezoneKey: String?
    /**  */
    public var periodLengthFilter: String?
    /**  */
    public var quote: String?
    /**  */
    public var reportCustomizedId: String?
    /**  */
    public var reportDescription: String?
    /**  */
    public var reportId: String?
    /**  */
    public var reportInvocationType: String?
    /**  */
    public var reportName: String?
    /**  */
    public var sentByFilter: String?
    /**  */
    public var sentByIds: String?
    /**  */
    public var separator: String?
    /**  */
    public var sortDirection: String?
    /**  */
    public var sortField: String?
    /** The starting index position of the current result set. */
    public var startPosition: String?

    public init(customFieldFilter: String? = nil, dateRangeCustomFromDate: String? = nil, dateRangeCustomToDate: String? = nil, dateRangeFilter: String? = nil, envelopeDateTypeFilter: String? = nil, envelopeRecipientNameContainsFilter: String? = nil, envelopeStatusFilter: String? = nil, envelopeSubjectContainsFilter: String? = nil, fields: [ReportInProductField]? = nil, forDownload: String? = nil, isDashboard: String? = nil, newLine: String? = nil, overrideTimezoneKey: String? = nil, periodLengthFilter: String? = nil, quote: String? = nil, reportCustomizedId: String? = nil, reportDescription: String? = nil, reportId: String? = nil, reportInvocationType: String? = nil, reportName: String? = nil, sentByFilter: String? = nil, sentByIds: String? = nil, separator: String? = nil, sortDirection: String? = nil, sortField: String? = nil, startPosition: String? = nil) {
        self.customFieldFilter = customFieldFilter
        self.dateRangeCustomFromDate = dateRangeCustomFromDate
        self.dateRangeCustomToDate = dateRangeCustomToDate
        self.dateRangeFilter = dateRangeFilter
        self.envelopeDateTypeFilter = envelopeDateTypeFilter
        self.envelopeRecipientNameContainsFilter = envelopeRecipientNameContainsFilter
        self.envelopeStatusFilter = envelopeStatusFilter
        self.envelopeSubjectContainsFilter = envelopeSubjectContainsFilter
        self.fields = fields
        self.forDownload = forDownload
        self.isDashboard = isDashboard
        self.newLine = newLine
        self.overrideTimezoneKey = overrideTimezoneKey
        self.periodLengthFilter = periodLengthFilter
        self.quote = quote
        self.reportCustomizedId = reportCustomizedId
        self.reportDescription = reportDescription
        self.reportId = reportId
        self.reportInvocationType = reportInvocationType
        self.reportName = reportName
        self.sentByFilter = sentByFilter
        self.sentByIds = sentByIds
        self.separator = separator
        self.sortDirection = sortDirection
        self.sortField = sortField
        self.startPosition = startPosition
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customFieldFilter
        case dateRangeCustomFromDate
        case dateRangeCustomToDate
        case dateRangeFilter
        case envelopeDateTypeFilter
        case envelopeRecipientNameContainsFilter
        case envelopeStatusFilter
        case envelopeSubjectContainsFilter
        case fields
        case forDownload
        case isDashboard
        case newLine
        case overrideTimezoneKey
        case periodLengthFilter
        case quote
        case reportCustomizedId
        case reportDescription
        case reportId
        case reportInvocationType
        case reportName
        case sentByFilter
        case sentByIds
        case separator
        case sortDirection
        case sortField
        case startPosition
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(customFieldFilter, forKey: .customFieldFilter)
        try container.encodeIfPresent(dateRangeCustomFromDate, forKey: .dateRangeCustomFromDate)
        try container.encodeIfPresent(dateRangeCustomToDate, forKey: .dateRangeCustomToDate)
        try container.encodeIfPresent(dateRangeFilter, forKey: .dateRangeFilter)
        try container.encodeIfPresent(envelopeDateTypeFilter, forKey: .envelopeDateTypeFilter)
        try container.encodeIfPresent(envelopeRecipientNameContainsFilter, forKey: .envelopeRecipientNameContainsFilter)
        try container.encodeIfPresent(envelopeStatusFilter, forKey: .envelopeStatusFilter)
        try container.encodeIfPresent(envelopeSubjectContainsFilter, forKey: .envelopeSubjectContainsFilter)
        try container.encodeIfPresent(fields, forKey: .fields)
        try container.encodeIfPresent(forDownload, forKey: .forDownload)
        try container.encodeIfPresent(isDashboard, forKey: .isDashboard)
        try container.encodeIfPresent(newLine, forKey: .newLine)
        try container.encodeIfPresent(overrideTimezoneKey, forKey: .overrideTimezoneKey)
        try container.encodeIfPresent(periodLengthFilter, forKey: .periodLengthFilter)
        try container.encodeIfPresent(quote, forKey: .quote)
        try container.encodeIfPresent(reportCustomizedId, forKey: .reportCustomizedId)
        try container.encodeIfPresent(reportDescription, forKey: .reportDescription)
        try container.encodeIfPresent(reportId, forKey: .reportId)
        try container.encodeIfPresent(reportInvocationType, forKey: .reportInvocationType)
        try container.encodeIfPresent(reportName, forKey: .reportName)
        try container.encodeIfPresent(sentByFilter, forKey: .sentByFilter)
        try container.encodeIfPresent(sentByIds, forKey: .sentByIds)
        try container.encodeIfPresent(separator, forKey: .separator)
        try container.encodeIfPresent(sortDirection, forKey: .sortDirection)
        try container.encodeIfPresent(sortField, forKey: .sortField)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        customFieldFilter = try container.decodeIfPresent(String.self, forKey: .customFieldFilter)
        dateRangeCustomFromDate = try container.decodeIfPresent(String.self, forKey: .dateRangeCustomFromDate)
        dateRangeCustomToDate = try container.decodeIfPresent(String.self, forKey: .dateRangeCustomToDate)
        dateRangeFilter = try container.decodeIfPresent(String.self, forKey: .dateRangeFilter)
        envelopeDateTypeFilter = try container.decodeIfPresent(String.self, forKey: .envelopeDateTypeFilter)
        envelopeRecipientNameContainsFilter = try container.decodeIfPresent(String.self, forKey: .envelopeRecipientNameContainsFilter)
        envelopeStatusFilter = try container.decodeIfPresent(String.self, forKey: .envelopeStatusFilter)
        envelopeSubjectContainsFilter = try container.decodeIfPresent(String.self, forKey: .envelopeSubjectContainsFilter)
        fields = try container.decodeIfPresent([ReportInProductField].self, forKey: .fields)
        forDownload = try container.decodeIfPresent(String.self, forKey: .forDownload)
        isDashboard = try container.decodeIfPresent(String.self, forKey: .isDashboard)
        newLine = try container.decodeIfPresent(String.self, forKey: .newLine)
        overrideTimezoneKey = try container.decodeIfPresent(String.self, forKey: .overrideTimezoneKey)
        periodLengthFilter = try container.decodeIfPresent(String.self, forKey: .periodLengthFilter)
        quote = try container.decodeIfPresent(String.self, forKey: .quote)
        reportCustomizedId = try container.decodeIfPresent(String.self, forKey: .reportCustomizedId)
        reportDescription = try container.decodeIfPresent(String.self, forKey: .reportDescription)
        reportId = try container.decodeIfPresent(String.self, forKey: .reportId)
        reportInvocationType = try container.decodeIfPresent(String.self, forKey: .reportInvocationType)
        reportName = try container.decodeIfPresent(String.self, forKey: .reportName)
        sentByFilter = try container.decodeIfPresent(String.self, forKey: .sentByFilter)
        sentByIds = try container.decodeIfPresent(String.self, forKey: .sentByIds)
        separator = try container.decodeIfPresent(String.self, forKey: .separator)
        sortDirection = try container.decodeIfPresent(String.self, forKey: .sortDirection)
        sortField = try container.decodeIfPresent(String.self, forKey: .sortField)
        startPosition = try container.decodeIfPresent(String.self, forKey: .startPosition)
    }
}

extension ReportInProductCsvRunRequest: Hashable {
    public static func == (lhs: ReportInProductCsvRunRequest, rhs: ReportInProductCsvRunRequest) -> Bool {
        lhs.customFieldFilter == rhs.customFieldFilter &&
            lhs.dateRangeCustomFromDate == rhs.dateRangeCustomFromDate &&
            lhs.dateRangeCustomToDate == rhs.dateRangeCustomToDate &&
            lhs.dateRangeFilter == rhs.dateRangeFilter &&
            lhs.envelopeDateTypeFilter == rhs.envelopeDateTypeFilter &&
            lhs.envelopeRecipientNameContainsFilter == rhs.envelopeRecipientNameContainsFilter &&
            lhs.envelopeStatusFilter == rhs.envelopeStatusFilter &&
            lhs.envelopeSubjectContainsFilter == rhs.envelopeSubjectContainsFilter &&
            lhs.fields == rhs.fields &&
            lhs.forDownload == rhs.forDownload &&
            lhs.isDashboard == rhs.isDashboard &&
            lhs.newLine == rhs.newLine &&
            lhs.overrideTimezoneKey == rhs.overrideTimezoneKey &&
            lhs.periodLengthFilter == rhs.periodLengthFilter &&
            lhs.quote == rhs.quote &&
            lhs.reportCustomizedId == rhs.reportCustomizedId &&
            lhs.reportDescription == rhs.reportDescription &&
            lhs.reportId == rhs.reportId &&
            lhs.reportInvocationType == rhs.reportInvocationType &&
            lhs.reportName == rhs.reportName &&
            lhs.sentByFilter == rhs.sentByFilter &&
            lhs.sentByIds == rhs.sentByIds &&
            lhs.separator == rhs.separator &&
            lhs.sortDirection == rhs.sortDirection &&
            lhs.sortField == rhs.sortField &&
            lhs.startPosition == rhs.startPosition
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(customFieldFilter?.hashValue)
        hasher.combine(dateRangeCustomFromDate?.hashValue)
        hasher.combine(dateRangeCustomToDate?.hashValue)
        hasher.combine(dateRangeFilter?.hashValue)
        hasher.combine(envelopeDateTypeFilter?.hashValue)
        hasher.combine(envelopeRecipientNameContainsFilter?.hashValue)
        hasher.combine(envelopeStatusFilter?.hashValue)
        hasher.combine(envelopeSubjectContainsFilter?.hashValue)
        hasher.combine(fields?.hashValue)
        hasher.combine(forDownload?.hashValue)
        hasher.combine(isDashboard?.hashValue)
        hasher.combine(newLine?.hashValue)
        hasher.combine(overrideTimezoneKey?.hashValue)
        hasher.combine(periodLengthFilter?.hashValue)
        hasher.combine(quote?.hashValue)
        hasher.combine(reportCustomizedId?.hashValue)
        hasher.combine(reportDescription?.hashValue)
        hasher.combine(reportId?.hashValue)
        hasher.combine(reportInvocationType?.hashValue)
        hasher.combine(reportName?.hashValue)
        hasher.combine(sentByFilter?.hashValue)
        hasher.combine(sentByIds?.hashValue)
        hasher.combine(separator?.hashValue)
        hasher.combine(sortDirection?.hashValue)
        hasher.combine(sortField?.hashValue)
        hasher.combine(startPosition?.hashValue)
    }
}
