//
// UserCustomSettingsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class UserCustomSettingsAPI {
    public enum UserCustomSettingsDeleteCustomSettings {
        case http200(value: CustomSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: CustomSettingsInformation?, raw: ClientResponse)
    }

    /**
     Deletes custom user settings for a specified user.

     DELETE /v2.1/accounts/{accountId}/users/{userId}/custom_settings

     Deletes the specified custom user settings for a single user.  ###Deleting Grouped Custom User Settings###  If the custom user settings you want to delete are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are deleted.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter customSettingsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `UserCustomSettingsDeleteCustomSettings`
     */
    open class func userCustomSettingsDeleteCustomSettings(accountId: String, userId: String, customSettingsInformation: CustomSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserCustomSettingsDeleteCustomSettings> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/custom_settings"
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

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = customSettingsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserCustomSettingsDeleteCustomSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            }
        }
    }

    public enum UserCustomSettingsGetCustomSettings {
        case http200(value: CustomSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: CustomSettingsInformation?, raw: ClientResponse)
    }

    /**
     Retrieves the custom user settings for a specified user.

     GET /v2.1/accounts/{accountId}/users/{userId}/custom_settings

     Retrieves a list of custom user settings for a single user.  Custom settings provide a flexible way to store and retrieve custom user information that can be used in your own system.  **Note**: Custom user settings are not the same as user account settings.  ###Getting Grouped Custom User Settings###  If the custom user settings you want to retrieve are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are retrieved.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - returns: `EventLoopFuture` of `UserCustomSettingsGetCustomSettings`
     */
    open class func userCustomSettingsGetCustomSettings(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserCustomSettingsGetCustomSettings> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/custom_settings"
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
        }.flatMapThrowing { response -> UserCustomSettingsGetCustomSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            }
        }
    }

    public enum UserCustomSettingsPutCustomSettings {
        case http200(value: CustomSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: CustomSettingsInformation?, raw: ClientResponse)
    }

    /**
     Adds or updates custom user settings for the specified user.

     PUT /v2.1/accounts/{accountId}/users/{userId}/custom_settings

     Adds or updates custom user settings for the specified user.  ***Note**: Custom user settings are not the same as user account settings.  Custom settings provide a flexible way to store and retrieve custom user information that you can use in your own system.  **Important**: There is a limit on the size for all the custom user settings for a single user. The limit is 4,000 characters, which includes the XML and JSON structure for the settings.  ### Grouping Custom User Settings ###  You can group custom user settings when adding them. Grouping allows you to retrieve settings that are in a specific group, instead of retrieving all the user custom settings.  To group custom user settings, add the following information in the header, after Content-Type:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings. Grouping is shown in the Example Request Body below.  When getting or deleting grouped custom user settings, you must include the extra header information.  Grouping custom user settings is not required and if the extra header information is not included, the custom user settings are added normally and can be retrieved or deleted without including the additional header.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter customSettingsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `UserCustomSettingsPutCustomSettings`
     */
    open class func userCustomSettingsPutCustomSettings(accountId: String, userId: String, customSettingsInformation: CustomSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserCustomSettingsPutCustomSettings> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/custom_settings"
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

            if let body = customSettingsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserCustomSettingsPutCustomSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(CustomSettingsInformation.self), raw: response)
            }
        }
    }
}
