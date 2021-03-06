//
// CommentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class CommentsAPI {
    /**
     Gets a PDF transcript of all of the comments in an envelope.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/comments/transcript

     Retrieves a PDF file containing all of the comments that senders and recipients have added to the documents in an envelope.  **Note**: Comments are disabled by default. To use the comments feature, an account administrator must enable comments on the account (in the `accountSettingsInformation` object, set the `enableSigningExtensionComments` property to **true**).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter encoding: (query) (Optional) The encoding to use for the file. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func commentsGetCommentsTranscriptRaw(accountId: String, envelopeId: String, encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/comments/transcript"
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

            struct QueryParams: Content {
                var encoding: String?
            }
            try request.query.encode(QueryParams(encoding: encoding))

            try beforeSend(&request)
        }
    }

    public enum CommentsGetCommentsTranscript {
        case http200(value: Data, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Data, raw: ClientResponse)
    }

    /**
     Gets a PDF transcript of all of the comments in an envelope.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/comments/transcript

     Retrieves a PDF file containing all of the comments that senders and recipients have added to the documents in an envelope.  **Note**: Comments are disabled by default. To use the comments feature, an account administrator must enable comments on the account (in the `accountSettingsInformation` object, set the `enableSigningExtensionComments` property to **true**).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter encoding: (query) (Optional) The encoding to use for the file. (optional)
     - returns: `EventLoopFuture` of `CommentsGetCommentsTranscript`
     */
    open class func commentsGetCommentsTranscript(accountId: String, envelopeId: String, encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<CommentsGetCommentsTranscript> {
        return commentsGetCommentsTranscriptRaw(accountId: accountId, envelopeId: envelopeId, encoding: encoding, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> CommentsGetCommentsTranscript in
            switch response.status.code {
            case 200:
                return .http200(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            }
        }
    }
}
