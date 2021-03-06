//
// TabsBlobAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TabsBlobAPI {
    /**

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func tabsBlobGetTabsBlobRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum TabsBlobGetTabsBlob {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `TabsBlobGetTabsBlob`
     */
    open class func tabsBlobGetTabsBlob(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<TabsBlobGetTabsBlob> {
        return tabsBlobGetTabsBlobRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> TabsBlobGetTabsBlob in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }

    /**

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func tabsBlobPutTabsBlobRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum TabsBlobPutTabsBlob {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/tabs_blob

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `TabsBlobPutTabsBlob`
     */
    open class func tabsBlobPutTabsBlob(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<TabsBlobPutTabsBlob> {
        return tabsBlobPutTabsBlobRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> TabsBlobPutTabsBlob in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }
}
