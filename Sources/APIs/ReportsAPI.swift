//
// ReportsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class ReportsAPI {
    public enum ReportsInProductDeleteReportInProduct {
        case http200(value: ReportInProductSaveResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
    }

    /**

     DELETE /v2.1/accounts/{accountId}/reports/{id}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter id: (path) A unique ID for the Salesforce object.
     - returns: `EventLoopFuture` of `ReportsInProductDeleteReportInProduct`
     */
    open class func reportsInProductDeleteReportInProduct(accountId: String, id: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductDeleteReportInProduct> {
        var path = "/v2.1/accounts/{accountId}/reports/{id}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let idPreEscape = String(describing: id)
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductDeleteReportInProduct in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            }
        }
    }

    public enum ReportsInProductGetReportInProduct {
        case http200(value: ReportInProductGet?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductGet?, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/reports/{id}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter id: (path) A unique ID for the Salesforce object.
     - returns: `EventLoopFuture` of `ReportsInProductGetReportInProduct`
     */
    open class func reportsInProductGetReportInProduct(accountId: String, id: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductGetReportInProduct> {
        var path = "/v2.1/accounts/{accountId}/reports/{id}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let idPreEscape = String(describing: id)
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductGetReportInProduct in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ReportInProductGet.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductGet.self), raw: response)
            }
        }
    }

    public enum ReportsInProductGetReportInProductList {
        case http200(value: ReportInProductList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductList?, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/reports

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `ReportsInProductGetReportInProductList`
     */
    open class func reportsInProductGetReportInProductList(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductGetReportInProductList> {
        var path = "/v2.1/accounts/{accountId}/reports"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductGetReportInProductList in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ReportInProductList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductList.self), raw: response)
            }
        }
    }

    public enum ReportsInProductPostReportInProductCreate {
        case http201(value: ReportInProductSaveResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
    }

    /**

     POST /v2.1/accounts/{accountId}/reports

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter reportInProductRunRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ReportsInProductPostReportInProductCreate`
     */
    open class func reportsInProductPostReportInProductCreate(accountId: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductPostReportInProductCreate> {
        var path = "/v2.1/accounts/{accountId}/reports"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = reportInProductRunRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductPostReportInProductCreate in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            }
        }
    }

    public enum ReportsInProductPutReportInProductRunResults {
        case http200(value: ReportInProductRunResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductRunResponse?, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/reports/report_results

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter reportInProductRunRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ReportsInProductPutReportInProductRunResults`
     */
    open class func reportsInProductPutReportInProductRunResults(accountId: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductPutReportInProductRunResults> {
        var path = "/v2.1/accounts/{accountId}/reports/report_results"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = reportInProductRunRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductPutReportInProductRunResults in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ReportInProductRunResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductRunResponse.self), raw: response)
            }
        }
    }

    public enum ReportsInProductPutReportInProductSave {
        case http200(value: ReportInProductSaveResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/reports/{id}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter id: (path) A unique ID for the Salesforce object.
     - parameter reportInProductRunRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ReportsInProductPutReportInProductSave`
     */
    open class func reportsInProductPutReportInProductSave(accountId: String, id: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductPutReportInProductSave> {
        var path = "/v2.1/accounts/{accountId}/reports/{id}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let idPreEscape = String(describing: id)
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = reportInProductRunRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductPutReportInProductSave in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(ReportInProductSaveResponse.self), raw: response)
            }
        }
    }

    public enum ReportsInProductPutReportResultsCsv {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/reports/report_results_csv

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter reportInProductCsvRunRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ReportsInProductPutReportResultsCsv`
     */
    open class func reportsInProductPutReportResultsCsv(accountId: String, reportInProductCsvRunRequest: ReportInProductCsvRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ReportsInProductPutReportResultsCsv> {
        var path = "/v2.1/accounts/{accountId}/reports/report_results_csv"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = reportInProductCsvRunRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> ReportsInProductPutReportResultsCsv in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }
}