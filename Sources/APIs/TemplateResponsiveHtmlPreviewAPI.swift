//
// TemplateResponsiveHtmlPreviewAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateResponsiveHtmlPreviewAPI {
    public enum ResponsiveHtmlPostTemplateResponsiveHtmlPreview {
        case http201(value: DocumentHtmlDefinitions?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentHtmlDefinitions?, raw: ClientResponse)
    }

    /**
     Creates a preview of the responsive versions of all of the documents associated with a template.

     POST /v2.1/accounts/{accountId}/templates/{templateId}/responsive_html_preview

     Creates a preview of the [responsive](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/api-overview), HTML versions of all of the documents associated with a template. This method enables you to preview the PDF document conversions to responsive HTML across device types prior to sending.   The request body is a `documentHtmlDefinition` object, which holds the responsive signing parameters that define how to generate the HTML version of the documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - parameter documentHtmlDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `ResponsiveHtmlPostTemplateResponsiveHtmlPreview`
     */
    open class func responsiveHtmlPostTemplateResponsiveHtmlPreview(accountId: String, templateId: String, documentHtmlDefinition: DocumentHtmlDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ResponsiveHtmlPostTemplateResponsiveHtmlPreview> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/responsive_html_preview"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
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
        }.flatMapThrowing { response -> ResponsiveHtmlPostTemplateResponsiveHtmlPreview in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(DocumentHtmlDefinitions.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentHtmlDefinitions.self), raw: response)
            }
        }
    }
}
