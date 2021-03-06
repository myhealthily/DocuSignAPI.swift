//
// FavoriteTemplatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class FavoriteTemplatesAPI {
    /**

     GET /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func favoriteTemplatesGetFavoriteTemplatesRaw(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/favorite_templates"
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
        }
    }

    public enum FavoriteTemplatesGetFavoriteTemplates {
        case http200(value: FavoriteTemplatesInfo, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: FavoriteTemplatesInfo, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `FavoriteTemplatesGetFavoriteTemplates`
     */
    open class func favoriteTemplatesGetFavoriteTemplates(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<FavoriteTemplatesGetFavoriteTemplates> {
        return favoriteTemplatesGetFavoriteTemplatesRaw(accountId: accountId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> FavoriteTemplatesGetFavoriteTemplates in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            }
        }
    }

    /**

     PUT /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter favoriteTemplatesInfo: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func favoriteTemplatesPutFavoriteTemplateRaw(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/favorite_templates"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = favoriteTemplatesInfo {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum FavoriteTemplatesPutFavoriteTemplate {
        case http200(value: FavoriteTemplatesInfo, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: FavoriteTemplatesInfo, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter favoriteTemplatesInfo: (body)  (optional)
     - returns: `EventLoopFuture` of `FavoriteTemplatesPutFavoriteTemplate`
     */
    open class func favoriteTemplatesPutFavoriteTemplate(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<FavoriteTemplatesPutFavoriteTemplate> {
        return favoriteTemplatesPutFavoriteTemplateRaw(accountId: accountId, favoriteTemplatesInfo: favoriteTemplatesInfo, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> FavoriteTemplatesPutFavoriteTemplate in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            }
        }
    }

    /**

     DELETE /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter favoriteTemplatesInfo: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func favoriteTemplatesUnFavoriteTemplateRaw(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/favorite_templates"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = favoriteTemplatesInfo {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum FavoriteTemplatesUnFavoriteTemplate {
        case http200(value: FavoriteTemplatesInfo, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: FavoriteTemplatesInfo, raw: ClientResponse)
    }

    /**

     DELETE /v2.1/accounts/{accountId}/favorite_templates

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter favoriteTemplatesInfo: (body)  (optional)
     - returns: `EventLoopFuture` of `FavoriteTemplatesUnFavoriteTemplate`
     */
    open class func favoriteTemplatesUnFavoriteTemplate(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<FavoriteTemplatesUnFavoriteTemplate> {
        return favoriteTemplatesUnFavoriteTemplateRaw(accountId: accountId, favoriteTemplatesInfo: favoriteTemplatesInfo, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> FavoriteTemplatesUnFavoriteTemplate in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(FavoriteTemplatesInfo.self, using: Configuration.contentConfiguration.requireDecoder(for: FavoriteTemplatesInfo.defaultContentType)), raw: response)
            }
        }
    }
}
