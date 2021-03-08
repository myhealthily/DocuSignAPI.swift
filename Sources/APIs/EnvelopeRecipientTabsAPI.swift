//
// EnvelopeRecipientTabsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class EnvelopeRecipientTabsAPI {
    public enum RecipientsDeleteRecipientTabs {
        case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    }

    /**
     Deletes the tabs associated with a recipient.

     DELETE /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs

     Deletes one or more tabs associated with a recipient in a draft envelope.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter envelopeRecipientTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsDeleteRecipientTabs`
     */
    open class func recipientsDeleteRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsDeleteRecipientTabs> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = envelopeRecipientTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsDeleteRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            }
        }
    }

    public enum RecipientsGetRecipientTabs {
        case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    }

    /**
     Gets the tabs information for a signer or sign-in-person recipient in an envelope.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs

     Retrieves information about the tabs associated with a recipient. You can make a single API call to get all the tab values and information from a given, completed envelope in addition to draft ones.  Tab values can be retrieved by using the [EnvelopeRecipients:list method](https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipients/list/) with query parameter include_tabs set to \"true\".

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter includeAnchorTabLocations: (query) When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. (optional)
     - parameter includeMetadata: (query) When set to **true**, the response includes metadata indicating which properties are editable. (optional)
     - returns: `EventLoopFuture` of `RecipientsGetRecipientTabs`
     */
    open class func recipientsGetRecipientTabs(accountId: String, envelopeId: String, recipientId: String, includeAnchorTabLocations: String? = nil, includeMetadata: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsGetRecipientTabs> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
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
        }.flatMapThrowing { response -> RecipientsGetRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            }
        }
    }

    public enum RecipientsPostRecipientTabs {
        case http201(value: EnvelopeRecipientTabs?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    }

    /**
     Adds tabs for a recipient.

     POST /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs

     Adds one or more tabs for a recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter envelopeRecipientTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPostRecipientTabs`
     */
    open class func recipientsPostRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPostRecipientTabs> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = envelopeRecipientTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsPostRecipientTabs in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            }
        }
    }

    public enum RecipientsPutRecipientTabs {
        case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    }

    /**
     Updates the tabs for a recipient.

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs

     Updates one or more tabs for a recipient in a draft envelope.  **Note**: The Update method can be used if the envelope is not yet complete. To update an existing tab, the request body must include the `tabId`.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter envelopeRecipientTabs: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutRecipientTabs`
     */
    open class func recipientsPutRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutRecipientTabs> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = envelopeRecipientTabs {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsPutRecipientTabs in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(EnvelopeRecipientTabs.self), raw: response)
            }
        }
    }
}
