//
// TemplateRecipientTabsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateRecipientTabsAPI {
    /**
     Deletes the tabs associated with a recipient in a template.

     DELETE /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Deletes one or more tabs associated with a recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsDeleteTemplateRecipientTabsRaw(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = templateTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum RecipientsDeleteTemplateRecipientTabs {
        case http200(value: Tabs, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Tabs, raw: ClientResponse)
    }

    /**
     Deletes the tabs associated with a recipient in a template.

     DELETE /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Deletes one or more tabs associated with a recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsDeleteTemplateRecipientTabs`
     */
    open class func recipientsDeleteTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsDeleteTemplateRecipientTabs> {
        return recipientsDeleteTemplateRecipientTabsRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsDeleteTemplateRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets the tabs information for a signer or sign-in-person recipient in a template.

     GET /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Gets the tabs information for a signer or sign-in-person recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter includeAnchorTabLocations: (query) When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. (optional)
     - parameter includeMetadata: (query) When set to **true**, the response includes metadata indicating which properties are editable. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsGetTemplateRecipientTabsRaw(accountId: String, recipientId: String, templateId: String, includeAnchorTabLocations: String? = nil, includeMetadata: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var includeAnchorTabLocations: String?
                var includeMetadata: String?
            }
            try request.query.encode(QueryParams(includeAnchorTabLocations: includeAnchorTabLocations, includeMetadata: includeMetadata))

            try beforeSend(&request)
        }
    }

    public enum RecipientsGetTemplateRecipientTabs {
        case http200(value: Tabs, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Tabs, raw: ClientResponse)
    }

    /**
     Gets the tabs information for a signer or sign-in-person recipient in a template.

     GET /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Gets the tabs information for a signer or sign-in-person recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter includeAnchorTabLocations: (query) When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. (optional)
     - parameter includeMetadata: (query) When set to **true**, the response includes metadata indicating which properties are editable. (optional)
     - returns: `EventLoopFuture` of `RecipientsGetTemplateRecipientTabs`
     */
    open class func recipientsGetTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, includeAnchorTabLocations: String? = nil, includeMetadata: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsGetTemplateRecipientTabs> {
        return recipientsGetTemplateRecipientTabsRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, includeAnchorTabLocations: includeAnchorTabLocations, includeMetadata: includeMetadata, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsGetTemplateRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Adds tabs for a recipient.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Adds one or more tabs for a recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsPostTemplateRecipientTabsRaw(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = templateTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum RecipientsPostTemplateRecipientTabs {
        case http201(value: Tabs, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Tabs, raw: ClientResponse)
    }

    /**
     Adds tabs for a recipient.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Adds one or more tabs for a recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPostTemplateRecipientTabs`
     */
    open class func recipientsPostTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPostTemplateRecipientTabs> {
        return recipientsPostTemplateRecipientTabsRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsPostTemplateRecipientTabs in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates the tabs for a recipient.

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Updates one or more tabs for a recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsPutTemplateRecipientTabsRaw(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = templateTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum RecipientsPutTemplateRecipientTabs {
        case http200(value: Tabs, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Tabs, raw: ClientResponse)
    }

    /**
     Updates the tabs for a recipient.

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs

     Updates one or more tabs for a recipient in a template.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutTemplateRecipientTabs`
     */
    open class func recipientsPutTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientTabs> {
        return recipientsPutTemplateRecipientTabsRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsPutTemplateRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Tabs.self, using: Configuration.contentConfiguration.requireDecoder(for: Tabs.defaultContentType)), raw: response)
            }
        }
    }
}
