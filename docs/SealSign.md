# SealSign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessCode** | **String** | Not applicable. | [optional] 
**accessCodeMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**addAccessCodeToEmail** | **String** | Not applicable. | [optional] 
**allowSystemOverrideForLockedRecipient** | **String** |  | [optional] 
**clientUserId** | **String** | Not applicable. | [optional] 
**completedCount** | **String** | Not applicable. | [optional] 
**customFields** | **[String]** | Not applicable. | [optional] 
**declinedDateTime** | **String** | Not applicable. | [optional] 
**declinedReason** | **String** | Not applicable. | [optional] 
**deliveredDateTime** | **String** | Not applicable. | [optional] 
**deliveryMethod** | **String** | Reserved for DocuSign. | [optional] 
**deliveryMethodMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**designatorId** | **String** |  | [optional] 
**designatorIdGuid** | **String** |  | [optional] 
**documentVisibility** | [[**DocumentVisibility**](DocumentVisibility.md)] | Not applicable. | [optional] 
**emailNotification** | [**RecipientEmailNotification**](RecipientEmailNotification.md) |  | [optional] 
**embeddedRecipientStartURL** | **String** | Not applicable. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**faxNumber** | **String** | Reserved for DocuSign. | [optional] 
**faxNumberMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**idCheckConfigurationName** | **String** | Not applicable. | [optional] 
**idCheckConfigurationNameMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**idCheckInformationInput** | [**IdCheckInformationInput**](IdCheckInformationInput.md) |  | [optional] 
**identityVerification** | [**RecipientIdentityVerification**](RecipientIdentityVerification.md) |  | [optional] 
**inheritEmailNotificationConfiguration** | **String** | Not applicable. | [optional] 
**lockedRecipientPhoneAuthEditable** | **String** | Reserved for DocuSign. | [optional] 
**lockedRecipientSmsEditable** | **String** | Reserved for DocuSign. | [optional] 
**name** | **String** | Not applicable. | [optional] 
**note** | **String** | Not applicable. | [optional] 
**noteMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**phoneAuthentication** | [**RecipientPhoneAuthentication**](RecipientPhoneAuthentication.md) |  | [optional] 
**recipientAttachments** | [[**RecipientAttachment**](RecipientAttachment.md)] | Not applicable. | [optional] 
**recipientAuthenticationStatus** | [**AuthenticationStatus**](AuthenticationStatus.md) |  | [optional] 
**recipientFeatureMetadata** | [[**FeatureAvailableMetadata**](FeatureAvailableMetadata.md)] | Metadata about the features that are supported for the recipient type. Read only. | [optional] 
**recipientId** | **String** | (Required) The &#x60;recipientId&#x60; used when the envelope or template was created.   This is a local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**recipientIdGuid** | **String** | The globally-unique identifier (GUID) for a specific recipient on a specific envelope. If the same recipient is associated with multiple envelopes, they will have a different GUID for each one. Read only. | [optional] 
**recipientSignatureProviders** | [[**RecipientSignatureProvider**](RecipientSignatureProvider.md)] | (Required) Indicates which electronic seal to apply on documents when creating an envelope. | [optional] 
**recipientType** | **String** | The recipient type, as specified by the following values: - &#x60;agent&#x60;: Agent recipients can add name and email information for recipients that appear after the agent in routing order. - &#x60;carbonCopy&#x60;: Carbon copy recipients get a copy of the envelope but don&#39;t need to sign, initial, date, or add information to any of the documents. This type of recipient can be used in any routing order. - &#x60;certifiedDelivery&#x60;: Certified delivery recipients must receive the completed documents for the envelope to be completed. They don&#39;t need to sign, initial, date, or add information to any of the documents. - &#x60;editor&#x60;: Editors have the same management and access rights for the envelope as the sender. Editors can add name and email information, add or change the routing order, set authentication options, and can edit signature/initial tabs and data fields for the remaining recipients. - &#x60;inPersonSigner&#x60;: In-person recipients are DocuSign users who act as signing hosts in the same physical location as the signer. - &#x60;intermediaries&#x60;: Intermediary recipients can optionally add name and email information for recipients at the same or subsequent level in the routing order. - &#x60;seal&#x60;: Electronic seal recipients represent legal entities. - &#x60;signer&#x60;: Signers are recipients who must sign, initial, date, or add data to form fields on the documents in the envelope. - &#x60;witness&#x60;: Witnesses are recipients whose signatures affirm that the identified signers have signed the documents in the envelope. | [optional] 
**recipientTypeMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**requireIdLookup** | **String** | Not applicable. | [optional] 
**requireIdLookupMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**roleName** | **String** | Optional element. Specifies the role name associated with the recipient.&lt;br/&gt;&lt;br/&gt;This property is required when you are working with template recipients. | [optional] 
**routingOrder** | **String** | (Optional, default: 1)  Specifies the routing order of the electronic seal in the envelope. The routing order assigned to your electronic seal cannot be shared with another recipient. It is recommended that you set a routing order for your electronic seals.  | [optional] 
**routingOrderMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**sentDateTime** | **String** | Not applicable. | [optional] 
**signedDateTime** | **String** | Not applicable. | [optional] 
**smsAuthentication** | [**RecipientSMSAuthentication**](RecipientSMSAuthentication.md) |  | [optional] 
**socialAuthentications** | [[**SocialAuthentication**](SocialAuthentication.md)] | Deprecated. | [optional] 
**status** | **String** | The recipient&#39;s status. Read only.   Possible values:  - &#x60;autoresponded&#x60;: The recipient&#39;s email system auto-responded to the email from DocuSign. This status is used in the web console to inform senders about the bounced-back email. This recipient status is only used if **Send-on-behalf-of** is turned off for the account. - &#x60;completed&#x60;: The recipient has completed their actions (signing or other required actions if not a signer) for an envelope. - &#x60;created&#x60;: The recipient is in a draft state. This value is only associated with draft envelopes (envelopes that have a status of &#x60;created&#x60;). - &#x60;declined&#x60;: The recipient declined to sign the document(s) in the envelope. - &#x60;delivered&#x60;: The recipient has viewed the document(s) in an envelope through the DocuSign signing website. This is not an email delivery of the documents in an envelope. - &#x60;faxPending&#x60;: The recipient has finished signing and the system is waiting for a fax attachment from the recipient before completing their signing step. - &#x60;sent&#x60;: The recipient has been sent an email notification that it is their turn to sign an envelope. - &#x60;signed&#x60;: The recipient has completed (signed) all required tags in an envelope. This is a temporary state during processing, after which the recipient&#39;s status automatically switches to &#x60;completed&#x60;. | [optional] 
**statusCode** | **String** | The code associated with the recipient&#39;s status. Read only. | [optional] 
**suppressEmails** | **String** | Not applicable. | [optional] 
**tabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 
**templateLocked** | **String** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateRequired** | **String** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**totalTabCount** | **String** | Not applicable. | [optional] 
**userId** | **String** | Not applicable. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

