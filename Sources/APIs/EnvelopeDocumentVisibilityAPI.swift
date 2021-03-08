//
// EnvelopeDocumentVisibilityAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class EnvelopeDocumentVisibilityAPI {
    public enum RecipientsGetRecipientDocumentVisibility {
        case http200(value: DocumentVisibilityList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentVisibilityList?, raw: ClientResponse)
    }

    /**
     Returns document visibility for a recipient

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility

     This method returns information about document visibility for a recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - returns: `EventLoopFuture` of `RecipientsGetRecipientDocumentVisibility`
     */
    open class func recipientsGetRecipientDocumentVisibility(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsGetRecipientDocumentVisibility> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility"
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

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsGetRecipientDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            }
        }
    }

    public enum RecipientsPutRecipientDocumentVisibility {
        case http200(value: DocumentVisibilityList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentVisibilityList?, raw: ClientResponse)
    }

    /**
     Updates document visibility for a recipient

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility

     This method updates document visibility for a recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter documentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutRecipientDocumentVisibility`
     */
    open class func recipientsPutRecipientDocumentVisibility(accountId: String, envelopeId: String, recipientId: String, documentVisibilityList: DocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutRecipientDocumentVisibility> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility"
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

            if let body = documentVisibilityList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsPutRecipientDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            }
        }
    }

    public enum RecipientsPutRecipientsDocumentVisibility {
        case http200(value: DocumentVisibilityList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentVisibilityList?, raw: ClientResponse)
    }

    /**
     Updates document visibility for recipients

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/document_visibility

     This method updates document visibility for one or more recipients based on the `recipientId` and `visible` values that you include in the request body.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter documentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutRecipientsDocumentVisibility`
     */
    open class func recipientsPutRecipientsDocumentVisibility(accountId: String, envelopeId: String, documentVisibilityList: DocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutRecipientsDocumentVisibility> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/document_visibility"
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

            if let body = documentVisibilityList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> RecipientsPutRecipientsDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentVisibilityList.self), raw: response)
            }
        }
    }
}