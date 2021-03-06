//
// EnvelopeWorkflowDefinitionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class EnvelopeWorkflowDefinitionAPI {
    /**
     Deletes an envelope's workflow definition.

     DELETE /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Deletes the specified envelope's workflow definition if it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinitionRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow"
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

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**
     Deletes an envelope's workflow definition.

     DELETE /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Deletes the specified envelope's workflow definition if it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition> {
        return envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinitionRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition in
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
     Deletes a template's workflow definition.

     DELETE /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Deletes the specified template's workflow definition if it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinitionRaw(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/workflow"
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

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**
     Deletes a template's workflow definition.

     DELETE /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Deletes the specified template's workflow definition if it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition> {
        return envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinitionRaw(accountId: accountId, templateId: templateId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition in
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
     Gets an envelope's workflow definition.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Returns an envelope's workflow definition if the envelope specified by `envelopeId` has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinitionRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow"
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

    public enum EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition {
        case http200(value: Workflow, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Workflow, raw: ClientResponse)
    }

    /**
     Gets an envelope's workflow definition.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Returns an envelope's workflow definition if the envelope specified by `envelopeId` has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition> {
        return envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinitionRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets template's workflow definition.

     GET /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Returns template's workflow definition if the template specified by `templateId` has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionGetTemplateWorkflowDefinitionRaw(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/workflow"
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

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition {
        case http200(value: Workflow, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Workflow, raw: ClientResponse)
    }

    /**
     Gets template's workflow definition.

     GET /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Returns template's workflow definition if the template specified by `templateId` has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionGetTemplateWorkflowDefinition(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition> {
        return envelopeWorkflowDefinitionGetTemplateWorkflowDefinitionRaw(accountId: accountId, templateId: templateId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates an envelope's workflow definition.

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Updates the specified envelope's workflow definition if  it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter workflow: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinitionRaw(accountId: String, envelopeId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow"
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

            if let body = workflow {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition {
        case http200(value: Workflow, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Workflow, raw: ClientResponse)
    }

    /**
     Updates an envelope's workflow definition.

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow

     Updates the specified envelope's workflow definition if  it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter workflow: (body)  (optional)
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition> {
        return envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinitionRaw(accountId: accountId, envelopeId: envelopeId, workflow: workflow, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Update a template's workflow definiton.

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Updates the specified template's workflow definition if  it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - parameter workflow: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func envelopeWorkflowDefinitionPutTemplateWorkflowDefinitionRaw(accountId: String, templateId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/workflow"
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

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = workflow {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition {
        case http200(value: Workflow, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Workflow, raw: ClientResponse)
    }

    /**
     Update a template's workflow definiton.

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/workflow

     Updates the specified template's workflow definition if  it has one.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - parameter workflow: (body)  (optional)
     - returns: `EventLoopFuture` of `EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition`
     */
    open class func envelopeWorkflowDefinitionPutTemplateWorkflowDefinition(accountId: String, templateId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition> {
        return envelopeWorkflowDefinitionPutTemplateWorkflowDefinitionRaw(accountId: accountId, templateId: templateId, workflow: workflow, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(Workflow.self, using: Configuration.contentConfiguration.requireDecoder(for: Workflow.defaultContentType)), raw: response)
            }
        }
    }
}
