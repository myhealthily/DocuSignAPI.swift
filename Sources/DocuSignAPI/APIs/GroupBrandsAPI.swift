//
// GroupBrandsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class GroupBrandsAPI {
    /**
     Deletes brand information from a group.

     DELETE /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method deletes one or more brands from a group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The id of the group.
     - parameter brandsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func brandsDeleteGroupBrandsRaw(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/groups/{groupId}/brands"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = String(describing: groupId)
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = brandsRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum BrandsDeleteGroupBrands {
        case http200(value: BrandsResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: BrandsResponse, raw: ClientResponse)
    }

    /**
     Deletes brand information from a group.

     DELETE /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method deletes one or more brands from a group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The id of the group.
     - parameter brandsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `BrandsDeleteGroupBrands`
     */
    open class func brandsDeleteGroupBrands(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BrandsDeleteGroupBrands> {
        return brandsDeleteGroupBrandsRaw(accountId: accountId, groupId: groupId, brandsRequest: brandsRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> BrandsDeleteGroupBrands in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets the brand information for a group.

     GET /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method returns information about the brands associated with a group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The id of the group.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func brandsGetGroupBrandsRaw(accountId: String, groupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/groups/{groupId}/brands"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = String(describing: groupId)
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum BrandsGetGroupBrands {
        case http200(value: BrandsResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: BrandsResponse, raw: ClientResponse)
    }

    /**
     Gets the brand information for a group.

     GET /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method returns information about the brands associated with a group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The id of the group.
     - returns: `EventLoopFuture` of `BrandsGetGroupBrands`
     */
    open class func brandsGetGroupBrands(accountId: String, groupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BrandsGetGroupBrands> {
        return brandsGetGroupBrandsRaw(accountId: accountId, groupId: groupId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> BrandsGetGroupBrands in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Adds an existing brand to a group.

     PUT /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method adds one or more existing brands to a group based on the `groupId`.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The ID of the group being accessed.
     - parameter brandsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func brandsPutGroupBrandsRaw(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/groups/{groupId}/brands"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let groupIdPreEscape = String(describing: groupId)
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = brandsRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum BrandsPutGroupBrands {
        case http200(value: BrandsResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: BrandsResponse, raw: ClientResponse)
    }

    /**
     Adds an existing brand to a group.

     PUT /v2.1/accounts/{accountId}/groups/{groupId}/brands

     This method adds one or more existing brands to a group based on the `groupId`.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter groupId: (path) The ID of the group being accessed.
     - parameter brandsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `BrandsPutGroupBrands`
     */
    open class func brandsPutGroupBrands(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BrandsPutGroupBrands> {
        return brandsPutGroupBrandsRaw(accountId: accountId, groupId: groupId, brandsRequest: brandsRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> BrandsPutGroupBrands in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(BrandsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: BrandsResponse.defaultContentType)), raw: response)
            }
        }
    }
}
