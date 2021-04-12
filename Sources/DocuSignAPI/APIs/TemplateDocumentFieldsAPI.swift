//
// TemplateDocumentFieldsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateDocumentFieldsAPI {
    public enum DocumentFieldsDeleteTemplateDocumentFields {
        case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
    }

    /**
     Deletes custom document fields from an existing template document.

     DELETE /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields

     Deletes custom document fields from an existing template document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - parameter documentFieldsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `DocumentFieldsDeleteTemplateDocumentFields`
     */
    open class func documentFieldsDeleteTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<DocumentFieldsDeleteTemplateDocumentFields> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let documentIdPreEscape = String(describing: documentId)
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = documentFieldsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> DocumentFieldsDeleteTemplateDocumentFields in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            }
        }
    }

    public enum DocumentFieldsGetTemplateDocumentFields {
        case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
    }

    /**
     Gets the custom document fields for a an existing template document.

     GET /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields

     This method retrieves the custom document fields for an existing template document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `DocumentFieldsGetTemplateDocumentFields`
     */
    open class func documentFieldsGetTemplateDocumentFields(accountId: String, documentId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<DocumentFieldsGetTemplateDocumentFields> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let documentIdPreEscape = String(describing: documentId)
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> DocumentFieldsGetTemplateDocumentFields in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            }
        }
    }

    public enum DocumentFieldsPostTemplateDocumentFields {
        case http201(value: DocumentFieldsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
    }

    /**
     Creates custom document fields in an existing template document.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields

     Creates custom document fields in an existing template document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - parameter documentFieldsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `DocumentFieldsPostTemplateDocumentFields`
     */
    open class func documentFieldsPostTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<DocumentFieldsPostTemplateDocumentFields> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let documentIdPreEscape = String(describing: documentId)
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = documentFieldsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> DocumentFieldsPostTemplateDocumentFields in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            }
        }
    }

    public enum DocumentFieldsPutTemplateDocumentFields {
        case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
    }

    /**
     Updates existing custom document fields in an existing template document.

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields

     Updates existing custom document fields in an existing template document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - parameter documentFieldsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `DocumentFieldsPutTemplateDocumentFields`
     */
    open class func documentFieldsPutTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<DocumentFieldsPutTemplateDocumentFields> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let documentIdPreEscape = String(describing: documentId)
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = documentFieldsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> DocumentFieldsPutTemplateDocumentFields in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentFieldsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentFieldsInformation.defaultContentType)), raw: response)
            }
        }
    }
}