//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class UsersAPI {
    public enum UserGetUser {
        case http200(value: UserInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserInformation?, raw: ClientResponse)
    }

    /**
     Gets the user information for a specified user.

     GET /v2.1/accounts/{accountId}/users/{userId}

     Retrieves the user information for the specified user.   To return additional user information that details the last login date, login status, and the user's password expiration date, set the optional `additional_info` query string parameter to **true**.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter additionalInfo: (query) Setting this parameter has no effect in this operation. (optional)
     - parameter email: (query) Setting this parameter has no effect in this operation. (optional)
     - returns: `EventLoopFuture` of `UserGetUser`
     */
    open class func userGetUser(accountId: String, userId: String, additionalInfo: String? = nil, email: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserGetUser> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}"
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

            struct QueryParams: Content {
                var additionalInfo: String?
                var email: String?
            }
            try request.query.encode(QueryParams(additionalInfo: additionalInfo, email: email))

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserGetUser in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserInformation.self), raw: response)
            }
        }
    }

    public enum UserProfileImageDeleteUserProfileImage {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Deletes the user profile image for the specified user.

     DELETE /v2.1/accounts/{accountId}/users/{userId}/profile/image

     Deletes the user profile image from the  specified user's profile.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - returns: `EventLoopFuture` of `UserProfileImageDeleteUserProfileImage`
     */
    open class func userProfileImageDeleteUserProfileImage(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserProfileImageDeleteUserProfileImage> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/profile/image"
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

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserProfileImageDeleteUserProfileImage in
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

    public enum UserProfileImageGetUserProfileImage {
        case http200(value: Data?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Data?, raw: ClientResponse)
    }

    /**
     Retrieves the user profile image for the specified user.

     GET /v2.1/accounts/{accountId}/users/{userId}/profile/image

     Retrieves the user profile picture for the specified user. The image is returned in the same format as uploaded.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.  If successful, the response returns a 200 - OK and the user profile image.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter encoding: (query) Reserved for DocuSign. (optional)
     - returns: `EventLoopFuture` of `UserProfileImageGetUserProfileImage`
     */
    open class func userProfileImageGetUserProfileImage(accountId: String, userId: String, encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserProfileImageGetUserProfileImage> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/profile/image"
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

            struct QueryParams: Content {
                var encoding: String?
            }
            try request.query.encode(QueryParams(encoding: encoding))

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserProfileImageGetUserProfileImage in
            switch response.status.code {
            case 200:
                return .http200(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Data.self), raw: response)
            }
        }
    }

    public enum UserProfileImagePutUserProfileImage {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Updates the user profile image for a specified user.

     PUT /v2.1/accounts/{accountId}/users/{userId}/profile/image

     Updates the user profile image by uploading an image to the user profile.  The supported image formats are: gif, png, jpeg, and bmp. The file must be less than 200K. For best viewing results, DocuSign recommends that the image is no more than 79 pixels wide and high.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - returns: `EventLoopFuture` of `UserProfileImagePutUserProfileImage`
     */
    open class func userProfileImagePutUserProfileImage(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserProfileImagePutUserProfileImage> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/profile/image"
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

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserProfileImagePutUserProfileImage in
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

    public enum UserPutUser {
        case http200(value: UserInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserInformation?, raw: ClientResponse)
    }

    /**
     Updates user information for the specified user.

     PUT /v2.1/accounts/{accountId}/users/{userId}

     To update user information for a specific user, submit a [Users](#Users) object with updated field values in the request body of this operation.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter userInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `UserPutUser`
     */
    open class func userPutUser(accountId: String, userId: String, userInformation: UserInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserPutUser> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}"
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

            if let body = userInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserPutUser in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserInformation.self), raw: response)
            }
        }
    }

    public enum UserSettingsGetUserSettings {
        case http200(value: UserSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserSettingsInformation?, raw: ClientResponse)
    }

    /**
     Gets the user account settings for a specified user.

     GET /v2.1/accounts/{accountId}/users/{userId}/settings

     Retrieves a list of the account settings and email notification information for the specified user.  The response returns the account setting name/value information and the email notification settings for the specified user. For more information about the different user settings, see [User Settings](https://developers.docusign.com/esign-rest-api/reference/Users/Users/create/#user-settings).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - returns: `EventLoopFuture` of `UserSettingsGetUserSettings`
     */
    open class func userSettingsGetUserSettings(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserSettingsGetUserSettings> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/settings"
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
        }.flatMapThrowing { response -> UserSettingsGetUserSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserSettingsInformation.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserSettingsInformation.self), raw: response)
            }
        }
    }

    public enum UserSettingsPutUserSettings {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Updates the user account settings for a specified user.

     PUT /v2.1/accounts/{accountId}/users/{userId}/settings

     Updates the account settings list and email notification types for the specified user.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userId: (path) The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing.
     - parameter userSettingsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `UserSettingsPutUserSettings`
     */
    open class func userSettingsPutUserSettings(accountId: String, userId: String, userSettingsInformation: UserSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UserSettingsPutUserSettings> {
        var path = "/v2.1/accounts/{accountId}/users/{userId}/settings"
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

            if let body = userSettingsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UserSettingsPutUserSettings in
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

    public enum UsersDeleteUsers {
        case http200(value: UsersResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UsersResponse?, raw: ClientResponse)
    }

    /**
     Removes users account privileges.

     DELETE /v2.1/accounts/{accountId}/users

     Closes one or more user records in the account. Users are never deleted from an account, but closing a user prevents them from using account functions.  The response specifies whether whether the API execution succeeded (200 - OK) or failed (400 - Error). The response contains a user structure similar to the request and includes the user changes. If an error occurred during the DELETE operation for any of the users, the response for that user contains an `errorDetails` property with `errorCode` and `message` properties.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter delete: (query) ID of the user to delete. This parameter takes a comma-separated list of values in the format: `Groups,PermissionSet,SigningGroupsEmail`. (optional)
     - parameter userInfoList: (body)  (optional)
     - returns: `EventLoopFuture` of `UsersDeleteUsers`
     */
    open class func usersDeleteUsers(accountId: String, delete: String? = nil, userInfoList: UserInfoList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UsersDeleteUsers> {
        var path = "/v2.1/accounts/{accountId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var delete: String?
            }
            try request.query.encode(QueryParams(delete: delete))
            if let body = userInfoList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UsersDeleteUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UsersResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UsersResponse.self), raw: response)
            }
        }
    }

    public enum UsersGetUsers {
        case http200(value: UserInformationList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserInformationList?, raw: ClientResponse)
    }

    /**
     Retrieves the list of users for the specified account.

     GET /v2.1/accounts/{accountId}/users

     Retrieves the list of users for the specified account.  The response returns the list of users for the account, with information about the result set. If the `additional_info` query is added to the endpoint and set to **true**, full user information is returned for each user.

     - parameter accountId: (path) (Required) The external account number (int) or account ID GUID.
     - parameter additionalInfo: (query) When set to **true**, the custom settings information is returned for each user in the account. If this parameter is omitted, the default behavior is **false**. (optional)
     - parameter count: (query) The number of records to return. This number must be greater than `0` and less than or equal to `100`.  (optional)
     - parameter email: (query) Filters results based on the email address associated with the user that you want to return.  **Note**: You can use either this parameter or the `email_substring` parameter, but not both. For older accounts, this parameter might return multiple users who are associated with a single email address.  (optional)
     - parameter emailSubstring: (query) Filters results based on a fragment of an email address. For example, you could enter `gmail` to return all users who have Gmail addresses.  **Note**: You do not use a wildcard character with this parameter. You can use either this parameter or the `email` parameter, but not both.  (optional)
     - parameter groupId: (query) Filters results based on one or more group IDs. (optional)
     - parameter includeUsersettingsForCsv: (query) When set to **true**, the response includes the `userSettings` object data in CSV format. (optional)
     - parameter loginStatus: (query) When set to **true**, the response includes the login status of each user. (optional)
     - parameter notGroupId: (query) Return user records excluding the specified group IDs. (optional)
     - parameter startPosition: (query) The position within the total result set from which to start returning values. (optional)
     - parameter status: (query) Filters results by user account status. Possible values are:  * `ActivationRequired` * `ActivationSent` * `Active` * `Closed` * `Disabled`  (optional)
     - parameter userNameSubstring: (query) Filters results based on a full or partial user name.  **Note**: When you enter a partial user name, you do not use a wildcard character. (optional)
     - returns: `EventLoopFuture` of `UsersGetUsers`
     */
    open class func usersGetUsers(accountId: String, additionalInfo: String? = nil, count: String? = nil, email: String? = nil, emailSubstring: String? = nil, groupId: String? = nil, includeUsersettingsForCsv: String? = nil, loginStatus: String? = nil, notGroupId: String? = nil, startPosition: String? = nil, status: String? = nil, userNameSubstring: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UsersGetUsers> {
        var path = "/v2.1/accounts/{accountId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var additionalInfo: String?
                var count: String?
                var email: String?
                var emailSubstring: String?
                var groupId: String?
                var includeUsersettingsForCsv: String?
                var loginStatus: String?
                var notGroupId: String?
                var startPosition: String?
                var status: String?
                var userNameSubstring: String?
            }
            try request.query.encode(QueryParams(additionalInfo: additionalInfo, count: count, email: email, emailSubstring: emailSubstring, groupId: groupId, includeUsersettingsForCsv: includeUsersettingsForCsv, loginStatus: loginStatus, notGroupId: notGroupId, startPosition: startPosition, status: status, userNameSubstring: userNameSubstring))

            try beforeSend(&request)
        }.flatMapThrowing { response -> UsersGetUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserInformationList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserInformationList.self), raw: response)
            }
        }
    }

    public enum UsersPostUsers {
        case http201(value: NewUsersSummary?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: NewUsersSummary?, raw: ClientResponse)
    }

    /**
     Adds new users to the specified account.

     POST /v2.1/accounts/{accountId}/users

     Adds new users to an account.  The body of this request is an array of `newUsers` objects. For each new user, you must provide at least the `userName` and `email` properties.  The `userSettings` property specifies the actions users can perform. In the example below, Tal Mason will be able to send envelopes, and the activation email will be in French because the `locale` is set to `fr`.   ``` POST /restapi/v2.1/accounts/{accountId}/users Content-Type: application/json ``` ``` {   \"newUsers\": [     {       \"userName\": \"Claire Horace\",       \"email\": \"claire@example.com\"     },     {       \"userName\": \"Tal Mason\",       \"email\": \"talmason@example.com\",       \"company\": \"TeleSel\",       \"userSettings\": {         \"locale\": \"fr\",         \"canSendEnvelope\": true       }     }   ] } ```  A successful response is a `newUsers` array with information about the newly created users. If there was a problem in creating a user, that user entry will contain an `errorDetails` property that describes what went wrong.  ```json {   \"newUsers\": [     {       \"userId\": \"18f3be12-xxxx-xxxx-xxxx-883d8f9b8ade\",       \"uri\": \"/users/18f3be12-xxxx-xxxx-xxxx-883d8f9b8ade\",       \"email\": \"claire@example.com\",       \"userName\": \"Claire Horace\",       \"createdDateTime\": \"0001-01-01T08:00:00.0000000Z\",       \"errorDetails\": {         \"errorCode\": \"USER_ALREADY_EXISTS_IN_ACCOUNT\",         \"message\": \"Username and email combination already exists for this account.\"       }     },     {       \"userId\": \"be9899a3-xxxx-xxxx-xxxx-2c8dd7156e33\",       \"uri\": \"/users/be9899a3-xxxx-xxxx-xxxx-2c8dd7156e33\",       \"email\": \"talmason@example.com\",       \"userName\": \"Tal Mason\",       \"userStatus\": \"ActivationSent\",       \"createdDateTime\": \"2020-05-26T23:25:30.7330000Z\"     }   ] } ```

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter newUsersDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `UsersPostUsers`
     */
    open class func usersPostUsers(accountId: String, newUsersDefinition: NewUsersDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UsersPostUsers> {
        var path = "/v2.1/accounts/{accountId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = newUsersDefinition {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UsersPostUsers in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(NewUsersSummary.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(NewUsersSummary.self), raw: response)
            }
        }
    }

    public enum UsersPutUsers {
        case http200(value: UserInformationList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: UserInformationList?, raw: ClientResponse)
    }

    /**
     Changes one or more users in the specified account.

     PUT /v2.1/accounts/{accountId}/users

     This method updates the information about one or more account users.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter userInformationList: (body)  (optional)
     - returns: `EventLoopFuture` of `UsersPutUsers`
     */
    open class func usersPutUsers(accountId: String, userInformationList: UserInformationList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<UsersPutUsers> {
        var path = "/v2.1/accounts/{accountId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = userInformationList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> UsersPutUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(UserInformationList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(UserInformationList.self), raw: response)
            }
        }
    }
}
