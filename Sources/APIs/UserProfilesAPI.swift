//
// UserProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class UserProfilesAPI {
    public enum UserProfileGetProfile {
        case http200(value: UserProfile?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserProfile?, raw: ClientResponse)
    }

    /**
     Retrieves the user profile for a specified user.

     GET /v2.1/accounts/{accountId}/users/{userId}/profile

     Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - returns: `EventLoopFuture` of `UserProfileGetProfile`
     */
    open class func userProfileGetProfile(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserProfileGetProfile> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/profile"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let userIdPreEscape = String(describing: userId)
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserProfileGetProfile in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserProfile.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserProfile.self), raw: response)
            }
        }
    }

    public enum UserProfilePutProfile {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Updates the user profile information for the specified user.

     PUT /v2.1/accounts/{accountId}/users/{userId}/profile

     Updates the user's detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user's name by changing the information in the `userDetails` property. When changing a user's name, you can either change the information in the `userName` property OR change the information in `firstName`, `middleName`, `lastName, suffixName`, and `title` properties. Changes to `firstName`, `middleName`, `lastName`, `suffixName`, and `title` properties take precedence over changes to the `userName` property.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter userProfile: (body)  (optional)
     - returns: `EventLoopFuture` of `UserProfilePutProfile`
     */
    open class func userProfilePutProfile(accountId: String, userId: String, userProfile: UserProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserProfilePutProfile> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/profile"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let userIdPreEscape = String(describing: userId)
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = userProfile {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserProfilePutProfile in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }
}
