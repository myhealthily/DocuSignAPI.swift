# Envelope

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessControlListBase64** | **String** | Reserved for DocuSign. | [optional] 
**allowComments** | **String** | When set to **true**, users can add comments to the documents in the envelope. For example, if a signer has a question about the text in the document, they can add a comment to the document. | [optional] 
**allowMarkup** | **String** | When set to **true**, the Document Markup feature is enabled.  **Note**:  To use this feature, Document Markup must be enabled at both the account and envelope levels. Only Admin users can change this setting for at the account level. | [optional] 
**allowReassign** | **String** | When **true**, the recipient can redirect an envelope to a more appropriate recipient. | [optional] 
**allowViewHistory** | **String** | When set to **true**, recipients can view the history of the envelope. | [optional] 
**anySigner** | **String** | Deprecated. This feature has been replaced by signing groups. | [optional] 
**asynchronous** | **String** | When **true**, the envelope is queued for processing and the value of the &#x60;status&#x60; property is set to &#x60;Processing&#x60;. Additionally, GET status calls return &#x60;Processing&#x60; until completed.    **Note**: A &#x60;transactionId&#x60; is required for this call to work correctly. When the envelope is created, the status is &#x60;Processing&#x60; and an &#x60;envelopeId&#x60; is not returned in the response. To get the &#x60;envelopeId&#x60;, use a GET envelope query by using the [transactionId](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create/#envelopeDefinition) or by checking the Connect notification. | [optional] 
**attachmentsUri** | **String** | Contains a URL for retrieving the attachments that are associated with the envelope. | [optional] 
**authoritativeCopy** | **String** | When **true**, marks all of the documents in the envelope as authoritative copies.  **Note**: You can override this value for a specific document. For example, you can set the &#x60;authoritativeCopy&#x60; property to **true** at the envelope level, but turn it off for a single document by setting the &#x60;authoritativeCopy&#x60; property for the document to **false**. | [optional] 
**authoritativeCopyDefault** | **String** | The default &#x60;authoritativeCopy&#x60; setting for documents in this envelope that do not have &#x60;authoritativeCopy&#x60; set. If this property is not set, each document defaults to the envelope&#39;s &#x60;authoritativeCopy&#x60;. | [optional] 
**autoNavigation** | **String** | When set to **true**, autonavigation is set for the recipient.  | [optional] 
**brandId** | **String** | The id of the brand. | [optional] 
**brandLock** | **String** | When **true**, the &#x60;brandId&#x60; for the envelope is locked and senders cannot change the brand used for the envelope. | [optional] 
**certificateUri** | **String** | The URI for retrieving certificate information. | [optional] 
**completedDateTime** | **String** | Specifies the date and time this item was completed. | [optional] 
**copyRecipientData** | **String** |  | [optional] 
**createdDateTime** | **String** | The UTC DateTime when the item was created. | [optional] 
**customFields** | [**AccountCustomFields**](AccountCustomFields.md) |  | [optional] 
**customFieldsUri** | **String** | The URI for retrieving custom fields. | [optional] 
**declinedDateTime** | **String** | The date and time the recipient declined the document. Read only. | [optional] 
**deletedDateTime** | **String** | Reserved for DocuSign. | [optional] 
**deliveredDateTime** | **String** | The date and time that the envelope was delivered to the recipient. Read only. | [optional] 
**disableResponsiveDocument** | **String** | When set to **true**, responsive documents are disabled for the envelope. | [optional] 
**documentsCombinedUri** | **String** | The URI for retrieving all of the documents associated with the envelope as a single PDF file. | [optional] 
**documentsUri** | **String** | The URI for retrieving all of the documents associated with the envelope as separate files. | [optional] 
**emailBlurb** | **String** | This is the same as the email body. If the sender enters an email blurb, it is included in the email body for all envelope recipients. | [optional] 
**emailSettings** | [**EmailSettings**](EmailSettings.md) |  | [optional] 
**emailSubject** | **String** | The subject line of the email message that is sent to all recipients.  For information about adding merge field information to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields).  | [optional] 
**enableWetSign** | **String** | When set to **true**, the signer is allowed to print the document and sign it on paper. | [optional] 
**enforceSignerVisibility** | **String** | When set to **true**, signers can only view the documents on which they have tabs. Recipients that have an administrative role (Agent, Editor, or Intermediaries) or informational role (Certified Deliveries or Carbon Copies) can always see all of the documents in an envelope, unless they are specifically excluded by using this setting when an envelope is sent. Documents that do not have tabs are always visible to all recipients, unless they are specifically excluded by using this setting when an envelope is sent.  **Note**: To use this functionality, [Document Visibility][docviz] must be enabled for the account by making the account setting &#x60;allowDocumentVisibility&#x60; **true**.  [docviz]: /esign/restapi/Envelopes/EnvelopeDocumentVisibility | [optional] 
**envelopeAttachments** | [Attachment] | An array of attachment objects that provide information about the attachments that are associated with the envelope. | [optional] 
**envelopeDocuments** | [EnvelopeDocument] | An array containing information about the documents that are included in the envelope. | [optional] 
**envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | [optional] 
**envelopeIdStamping** | **String** | When set to **true**, [Envelope ID Stamping](https://support.docusign.com/en/guides/ndse-user-guide-set-advanced-document-options) is enabled. After a document or attachment is stamped with an Envelope ID, the ID is seen by all recipients and becomes a permanent part of the document and cannot be removed. | [optional] 
**envelopeLocation** | **String** | Reserved for DocuSign. | [optional] 
**envelopeMetadata** | [**EnvelopeMetadata**](EnvelopeMetadata.md) |  | [optional] 
**envelopeUri** | **String** | The URI for retrieving the envelope or envelopes. | [optional] 
**expireAfter** | **String** | An integer specifying the number of days that a sent envelope remains active before it expires. A negative number in a response indicates that the envelope has already expired. | [optional] 
**expireDateTime** | **String** | The date and time the envelope is set to expire. | [optional] 
**expireEnabled** | **String** | When set to **true**, the envelope expires (is no longer available for signing) after the specified number of days after it is sent (&#x60;sentDateTime&#x60;). Set  &#x60;expireAfter&#x60; to set the number of days until an envelope expires. When **false**, the account default setting is used. If the account does not have an expiration setting, the DocuSign default value of 120 days is used. | [optional] 
**externalEnvelopeId** | **String** | May contain an external identifier for the envelope. | [optional] 
**folders** | [Folder] | A list of folder objects. | [optional] 
**hasComments** | **String** | When set to **true**, indicates that users have added comments to the envelope. | [optional] 
**hasFormDataChanged** | **String** | When set to **true**, indicates that the data collected through form fields on a document has changed. | [optional] 
**hasWavFile** | **String** | When set to **true**, indicates that a .wav file used for voice authentication is included in the envelope.  | [optional] 
**holder** | **String** | Reserved for DocuSign. | [optional] 
**initialSentDateTime** | **String** | The date and time the envelope was initially sent. | [optional] 
**is21CFRPart11** | **String** | When **true**, indicates compliance with United States Food and Drug Administration (FDA) regulations on electronic records and electronic signatures (ERES). | [optional] 
**isDynamicEnvelope** | **String** | When set to **true**, indicates that the envelope is a dynamic envelope. | [optional] 
**isSignatureProviderEnvelope** | **String** | When set to **true**, indicates that the envelope is a signature-provided envelope. | [optional] 
**lastModifiedDateTime** | **String** | The date and time that the item was last modified. | [optional] 
**location** | **String** | Reserved for DocuSign. | [optional] 
**lockInformation** | [**EnvelopeLocks**](EnvelopeLocks.md) |  | [optional] 
**messageLock** | **String** | When set to **true**, prevents senders from changing the contents of &#x60;emailBlurb&#x60; and &#x60;emailSubject&#x60; properties for the envelope.   Additionally, this prevents users from making changes to the contents of &#x60;emailBlurb&#x60; and &#x60;emailSubject&#x60; properties when correcting envelopes.   However, if the &#x60;messageLock&#x60; node is set to **true** and the &#x60;emailSubject&#x60; property is empty, senders and correctors are able to add a subject to the envelope. | [optional] 
**notification** | [**Notification**](Notification.md) |  | [optional] 
**notificationUri** | **String** | The URI for retrieving notifications. | [optional] 
**powerForm** | [**PowerForm**](PowerForm.md) |  | [optional] 
**purgeCompletedDate** | **String** | The date that a purge was completed. | [optional] 
**purgeRequestDate** | **String** | The date that a purge was requested. | [optional] 
**purgeState** | **String** | Shows the current purge state for the envelope. The possible values are:  * &#x60;unpurged&#x60;: There has been no successful request to purge documents. * &#x60;documents_queued&#x60;: The envelope documents have been added to the purge queue, but have not been purged. * &#x60;documents_dequeued&#x60;: The envelope documents have been taken out of the purge queue. * &#x60;documents_and_metadata_queued&#x60;: The envelope documents and metadata have been added to the purge queue, but have not yet been purged. * &#x60;documents_purged&#x60;: The envelope documents have been successfully purged. * &#x60;documents_and_metadata_purged&#x60;: The envelope documents and metadata have been successfully purged.   | [optional] 
**recipients** | [**EnvelopeRecipients**](EnvelopeRecipients.md) |  | [optional] 
**recipientsLock** | **String** | When set to **true**, prevents senders from changing, correcting, or deleting the recipient information for the envelope. | [optional] 
**recipientsUri** | **String** | Contains a URI for an endpoint that you can use to retrieve the recipients. | [optional] 
**sender** | [**UserInfo**](UserInfo.md) |  | [optional] 
**sentDateTime** | **String** | The UTC DateTime when the envelope was sent. Read only. | [optional] 
**signerCanSignOnMobile** | **String** | When set to **true**, recipients can sign on a mobile device.  **Note**: Only Admin users can change this setting.  | [optional] 
**signingLocation** | **String** | Specifies the physical location where the signing takes place. It can have two enumeration values; &#x60;inPerson&#x60; and &#x60;online&#x60;. The default value is &#x60;online&#x60;. | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * &#x60;completed&#x60;: The recipients have finished working with the envelope: the documents are signed and all required tabs are filled in. * &#x60;created&#x60;: The envelope is created as a draft. It can be modified and sent later. * &#x60;declined&#x60;: The envelope has been declined by the recipients. * &#x60;delivered&#x60;: The envelope has been delivered to the recipients. * &#x60;sent&#x60;: The envelope will be sent to the recipients after the envelope is created. * &#x60;signed&#x60;: The envelope has been signed by the recipients. * &#x60;voided&#x60;: The envelope is no longer valid and recipients cannot access or sign the envelope.  | [optional] 
**statusChangedDateTime** | **String** | The data and time that the status changed. | [optional] 
**statusDateTime** | **String** | The DateTime that the envelope changed status (i.e. was created or sent.) | [optional] 
**templatesUri** | **String** | The URI for retrieving the templates. | [optional] 
**transactionId** | **String** | Specifies the Transaction ID from the AppStore. | [optional] 
**useDisclosure** | **String** | When set to **true**, the disclosure is shown to recipients in accordance with the account&#39;s Electronic Record and Signature Disclosure frequency setting. When set to **false**, the Electronic Record and Signature Disclosure is not shown to any envelope recipients.   If the &#x60;useDisclosure&#x60; property is not set, then the account&#39;s normal disclosure setting is used and the value of the &#x60;useDisclosure&#x60; property is not returned in responses when getting envelope information. | [optional] 
**voidedDateTime** | **String** | The date and time the envelope or template was voided. | [optional] 
**voidedReason** | **String** | The reason the envelope or template was voided. | [optional] 
**workflow** | [**Workflow**](Workflow.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


