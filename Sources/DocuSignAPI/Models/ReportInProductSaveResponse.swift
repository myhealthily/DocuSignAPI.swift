//
// ReportInProductSaveResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class ReportInProductSaveResponse: Content, Hashable {
    /**  */
    public var reportCustomizedId: String?

    public init(reportCustomizedId: String? = nil) {
        self.reportCustomizedId = reportCustomizedId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reportCustomizedId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(reportCustomizedId, forKey: .reportCustomizedId)
    }

    public static func == (lhs: ReportInProductSaveResponse, rhs: ReportInProductSaveResponse) -> Bool {
        lhs.reportCustomizedId == rhs.reportCustomizedId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(reportCustomizedId?.hashValue)
    }
}
