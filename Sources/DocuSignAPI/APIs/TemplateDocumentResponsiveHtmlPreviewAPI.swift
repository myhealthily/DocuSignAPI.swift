//
// TemplateDocumentResponsiveHtmlPreviewAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateDocumentResponsiveHtmlPreviewAPI {
    /**
     Creates a preview of the responsive version of a template document.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/responsive_html_preview

     Creates a preview of the [responsive](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/api-overview), HTML version of a specific template document. This method enables you to preview a PDF document conversion to responsive HTML across device types prior to sending.   The request body is a `documentHtmlDefinition` object, which holds the responsive signing parameters that define how to generate the HTML version of the signing document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - parameter documentHtmlDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func responsiveHtmlPostTemplateDocumentResponsiveHtmlPreviewRaw(accountId: String, documentId: String, templateId: String, documentHtmlDefinition: DocumentHtmlDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/responsive_html_preview"
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

            if let body = documentHtmlDefinition {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview {
        case http201(value: DocumentHtmlDefinitions, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: DocumentHtmlDefinitions, raw: ClientResponse)
    }

    /**
     Creates a preview of the responsive version of a template document.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/responsive_html_preview

     Creates a preview of the [responsive](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/api-overview), HTML version of a specific template document. This method enables you to preview a PDF document conversion to responsive HTML across device types prior to sending.   The request body is a `documentHtmlDefinition` object, which holds the responsive signing parameters that define how to generate the HTML version of the signing document.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter documentId: (path) The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
     - parameter templateId: (path) The id of the template.
     - parameter documentHtmlDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview`
     */
    open class func responsiveHtmlPostTemplateDocumentResponsiveHtmlPreview(accountId: String, documentId: String, templateId: String, documentHtmlDefinition: DocumentHtmlDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview> {
        return responsiveHtmlPostTemplateDocumentResponsiveHtmlPreviewRaw(accountId: accountId, documentId: documentId, templateId: templateId, documentHtmlDefinition: documentHtmlDefinition, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(DocumentHtmlDefinitions.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentHtmlDefinitions.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(DocumentHtmlDefinitions.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentHtmlDefinitions.defaultContentType)), raw: response)
            }
        }
    }
}
