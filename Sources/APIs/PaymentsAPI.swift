//
// PaymentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class PaymentsAPI {
    public enum BillingPaymentsGetPayment {
        case http200(value: BillingPaymentItem?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: BillingPaymentItem?, raw: ClientResponse)
    }

    /**
     Gets billing payment information for a specific payment.

     GET /v2.1/accounts/{accountId}/billing_payments/{paymentId}

     Retrieves the information for a specified payment.   Privileges required: account administrator

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter paymentId: (path)
     - returns: `EventLoopFuture` of `BillingPaymentsGetPayment`
     */
    open class func billingPaymentsGetPayment(accountId: String, paymentId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BillingPaymentsGetPayment> {
        var path = "/v2.1/accounts/{accountId}/billing_payments/{paymentId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let paymentIdPreEscape = String(describing: paymentId)
        let paymentIdPostEscape = paymentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{paymentId}", with: paymentIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> BillingPaymentsGetPayment in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(BillingPaymentItem.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(BillingPaymentItem.self), raw: response)
            }
        }
    }

    public enum BillingPaymentsGetPaymentList {
        case http200(value: BillingPaymentsResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: BillingPaymentsResponse?, raw: ClientResponse)
    }

    /**
     Gets payment information for one or more payments.

     GET /v2.1/accounts/{accountId}/billing_payments

     Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter fromDate: (query) Specifies the date/time of the earliest payment in the account to retrieve. (optional)
     - parameter toDate: (query) Specifies the date/time of the latest payment in the account to retrieve. (optional)
     - returns: `EventLoopFuture` of `BillingPaymentsGetPaymentList`
     */
    open class func billingPaymentsGetPaymentList(accountId: String, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BillingPaymentsGetPaymentList> {
        var path = "/v2.1/accounts/{accountId}/billing_payments"
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
                var fromDate: String?
                var toDate: String?
            }
            try request.query.encode(QueryParams(fromDate: fromDate, toDate: toDate))

            try beforeSend(&request)
        }.flatMapThrowing { response -> BillingPaymentsGetPaymentList in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(BillingPaymentsResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(BillingPaymentsResponse.self), raw: response)
            }
        }
    }

    public enum BillingPaymentsPostPayment {
        case http201(value: BillingPaymentResponse?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: BillingPaymentResponse?, raw: ClientResponse)
    }

    /**
     Posts a payment to a past due invoice.

     POST /v2.1/accounts/{accountId}/billing_payments

     Posts a payment to a past due invoice.  This method can only be used if the `paymentAllowed` value for a past due invoice is true. This can be determined calling [Billing::listInvoicesPastDue](https://developers.docusign.com/esign-rest-api/reference/Billing/Invoices/listPastDue).  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the `nextUri` and `previousUri` properties are not returned.  Privileges required: account administrator

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter billingPaymentRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `BillingPaymentsPostPayment`
     */
    open class func billingPaymentsPostPayment(accountId: String, billingPaymentRequest: BillingPaymentRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<BillingPaymentsPostPayment> {
        var path = "/v2.1/accounts/{accountId}/billing_payments"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = billingPaymentRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> BillingPaymentsPostPayment in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(BillingPaymentResponse.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(BillingPaymentResponse.self), raw: response)
            }
        }
    }
}
