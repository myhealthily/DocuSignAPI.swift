# EnvelopeDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessControlListBase64** | **String** | Reserved for DocuSign. | [optional] 
**accessibility** | **String** | Sets the document reading zones for screen reader applications.  This element can only be used if Document Accessibility is enabled for the account.  **Note**: This information is currently generated from the DocuSign web console by setting the reading zones when creating a template, exporting the reading zone string information, and adding it here. | [optional] 
**allowComments** | **String** | When **true**, comments are allowed on the envelope. | [optional] 
**allowMarkup** | **String** | When set to **true**, the Document Markup feature is enabled.  **Note**:  To use this feature, Document Markup must be enabled at both the account and envelope levels. Only Admin users can change this setting for at the account level. | [optional] 
**allowReassign** | **String** | When **true**, the recipient can redirect an envelope to a more appropriate recipient. | [optional] 
**allowRecipientRecursion** | **String** | When set to **true**, this enables the Recursive Recipients feature and allows a recipient to appear more than once in the routing order. | [optional] 
**allowViewHistory** | **String** | When **true**, users can view the history of the envelope. | [optional] 
**anySigner** | **String** | Deprecated. This feature has been replaced by signing groups. | [optional] 
**asynchronous** | **String** | When **true**, the envelope is queued for processing and the value of the &#x60;status&#x60; property is set to &#x60;Processing&#x60;. Additionally, GET status calls return &#x60;Processing&#x60; until completed.    **Note**: A &#x60;transactionId&#x60; is required for this call to work correctly. When the envelope is created, the status is &#x60;Processing&#x60; and an &#x60;envelopeId&#x60; is not returned in the response. To get the &#x60;envelopeId&#x60;, use a GET envelope query by using the [transactionId](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create/#envelopeDefinition) or by checking the Connect notification. | [optional] 
**attachments** | [[**Attachment**](Attachment.md)] | An array of attachment objects containing details about any envelope attachments. | [optional] 
**attachmentsUri** | **String** | The URI for retrieving the envelope attachments. | [optional] 
**authoritativeCopy** | **String** | When **true**, marks all of the documents in the envelope as authoritative copies.  **Note**: You can override this value for a specific document. For example, you can set the &#x60;authoritativeCopy&#x60; property to **true** at the envelope level, but turn it off for a single document by setting the &#x60;authoritativeCopy&#x60; property for the document to **false**. | [optional] 
**authoritativeCopyDefault** | **String** | The default &#x60;authoritativeCopy&#x60; setting for documents in this envelope that do not have &#x60;authoritativeCopy&#x60; set. If this property is not set, each document defaults to the envelope&#39;s &#x60;authoritativeCopy&#x60;. | [optional] 
**autoNavigation** | **String** | When set to **true**, autonavigation is set for the recipient.  | [optional] 
**brandId** | **String** | The id of the brand, or text and formatting, to use for the envelope. To use brands, account branding must be enabled for the account. | [optional] 
**brandLock** | **String** | When **true**, the &#x60;brandId&#x60; for the envelope is locked and senders cannot change the brand used for the envelope. | [optional] 
**certificateUri** | **String** | The URI for retrieving certificate information. | [optional] 
**completedDateTime** | **String** | The date and time that the envelope was completed. | [optional] 
**compositeTemplates** | [[**CompositeTemplate**](CompositeTemplate.md)] | A complex type that can be added to create envelopes from a combination of DocuSign templates and PDF forms. The basic envelope remains the same, while the Composite Template adds new document and template overlays into the envelope. There can be any number of Composite Template structures in the envelope. | [optional] 
**copyRecipientData** | **String** |  | [optional] 
**createdDateTime** | **String** | The date and time that the envelope was created. | [optional] 
**customFields** | [**AccountCustomFields**](AccountCustomFields.md) |  | [optional] 
**customFieldsUri** | **String** | The URI for retrieving custom fields. | [optional] 
**declinedDateTime** | **String** | The date and time that the recipient declined the envelope. | [optional] 
**deletedDateTime** | **String** | The date and time that the envelope was deleted. | [optional] 
**deliveredDateTime** | **String** | The date and time that the envelope was delivered to the recipient. Read only. | [optional] 
**disableResponsiveDocument** | **String** | When set to **true**, the responsive document feature is turned off for the envelope. | [optional] 
**documents** | [[**Document**](Document.md)] | A complex element that contains details about the documents associated with the envelope. | [optional] 
**documentsCombinedUri** | **String** | The URI for retrieving all of the documents associated with the envelope as a single PDF file. | [optional] 
**documentsUri** | **String** | The URI for retrieving all of the documents associated with the envelope as separate files. | [optional] 
**emailBlurb** | **String** | This optional element holds the body of the email message that is sent to all envelope recipients.   Maximum Length: 10000 characters. | [optional] 
**emailSettings** | [**EmailSettings**](EmailSettings.md) |  | [optional] 
**emailSubject** | **String** | The subject line of the email message that is sent to all recipients.  For information about adding merge field information to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields).  | [optional] 
**enableWetSign** | **String** | When set to **true**, the signer is allowed to print the document and sign it on paper. | [optional] 
**enforceSignerVisibility** | **String** | When set to **true**, signers can only view the documents on which they have tabs. Recipients that have an administrative role (Agent, Editor, or Intermediaries) or informational role (Certified Deliveries or Carbon Copies) can always see all of the documents in an envelope, unless they are specifically excluded by using this setting when an envelope is sent. Documents that do not have tabs are always visible to all recipients, unless they are specifically excluded by using this setting when an envelope is sent.  **Note**: To use this functionality, [Document Visibility][docviz] must be enabled for the account by making the account setting &#x60;allowDocumentVisibility&#x60; **true**.  [docviz]: /esign/restapi/Envelopes/EnvelopeDocumentVisibility | [optional] 
**envelopeAttachments** | [[**Attachment**](Attachment.md)] | An array of attachment objects that provide information about the attachments that are associated with the envelope. | [optional] 
**envelopeDocuments** | [[**EnvelopeDocument**](EnvelopeDocument.md)] | An array containing information about the documents that are included in the envelope. | [optional] 
**envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | [optional] 
**envelopeIdStamping** | **String** | When set to **true**, [Envelope ID Stamping](https://support.docusign.com/en/guides/ndse-user-guide-set-advanced-document-options) is enabled. After a document or attachment is stamped with an Envelope ID, the ID is seen by all recipients and becomes a permanent part of the document and cannot be removed. | [optional] 
**envelopeLocation** | **String** | Reserved for DocuSign. | [optional] 
**envelopeMetadata** | [**EnvelopeMetadata**](EnvelopeMetadata.md) |  | [optional] 
**envelopeUri** | **String** | The URI for retrieving the envelope or envelopes. | [optional] 
**eventNotification** | [**EventNotification**](EventNotification.md) |  | [optional] 
**eventNotifications** | [[**EventNotification**](EventNotification.md)] | An array of &#x60;eventNotification&#x60; objects. | [optional] 
**expireAfter** | **String** | An integer specifying the number of days that a sent envelope remains active before it expires. A negative number in a response indicates that the envelope has already expired. | [optional] 
**expireDateTime** | **String** | The date and time the envelope is set to expire. | [optional] 
**expireEnabled** | **String** | When set to **true**, the envelope expires (is no longer available for signing) after the specified number of days after it is sent (&#x60;sentDateTime&#x60;). Set  &#x60;expireAfter&#x60; to set the number of days until an envelope expires. When **false**, the account default setting is used. If the account does not have an expiration setting, the DocuSign default value of 120 days is used. | [optional] 
**externalEnvelopeId** | **String** | May contain an external identifier for the envelope. | [optional] 
**folders** | [[**Folder**](Folder.md)] | An array of folders that the envelope belongs to. | [optional] 
**hasComments** | **String** | When set to **true**, indicates that users have added comments to the envelope. | [optional] 
**hasFormDataChanged** | **String** | When set to **true**, indicates that the form data associated with the envelope has changed since it was sent. If **false**, this property does not appear in the response. | [optional] 
**hasWavFile** | **String** | When set to **true**, indicates that a wave file (voice recording) is part of the envelope. | [optional] 
**holder** | **String** | Reserved for DocuSign. | [optional] 
**initialSentDateTime** | **String** | The date and time that the envelope was first sent. | [optional] 
**is21CFRPart11** | **String** | When **true**, indicates compliance with United States Food and Drug Administration (FDA) regulations on electronic records and electronic signatures (ERES). | [optional] 
**isDynamicEnvelope** | **String** | When set to **true**, indicates that the envelope is a dynamic envelope. | [optional] 
**isSignatureProviderEnvelope** | **String** | When set to **true**, indicates that the envelope is a signature-provided envelope. | [optional] 
**lastModifiedDateTime** | **String** | The date and time that the item was last modified. | [optional] 
**location** | **String** | Reserved for DocuSign. | [optional] 
**lockInformation** | [**EnvelopeLocks**](EnvelopeLocks.md) |  | [optional] 
**messageLock** | **String** | When set to **true**, prevents senders from changing the contents of &#x60;emailBlurb&#x60; and &#x60;emailSubject&#x60; properties for the envelope.   Additionally, this prevents users from making changes to the contents of &#x60;emailBlurb&#x60; and &#x60;emailSubject&#x60; properties when correcting envelopes.   However, if the &#x60;messageLock&#x60; node is set to **true** and the &#x60;emailSubject&#x60; property is empty, senders and correctors are able to add a subject to the envelope. | [optional] 
**notification** | [**Notification**](Notification.md) |  | [optional] 
**notificationUri** | **String** | The URI for retrieving notifications. | [optional] 
**password** | **String** | The user&#39;s encrypted password hash. | [optional] 
**powerForm** | [**PowerForm**](PowerForm.md) |  | [optional] 
**purgeCompletedDate** | **String** | The date that a purge was completed. | [optional] 
**purgeRequestDate** | **String** | The date that a purge was requested. | [optional] 
**purgeState** | **String** | Initiates a purge request. Valid values are: * &#x60;documents_queued&#x60;: Places envelope documents in the purge queue. * &#x60;documents_and_metadata_queued&#x60;: Places envelope documents and metadata in the purge queue.  | [optional] 
**recipients** | [**EnvelopeRecipients**](EnvelopeRecipients.md) |  | [optional] 
**recipientsLock** | **String** | When set to **true**, prevents senders from changing, correcting, or deleting the recipient information for the envelope. | [optional] 
**recipientsUri** | **String** | Contains a URI for an endpoint that you can use to retrieve the recipients. | [optional] 
**sender** | [**UserInfo**](UserInfo.md) |  | [optional] 
**sentDateTime** | **String** | The UTC DateTime when the envelope was sent. Read only. | [optional] 
**signerCanSignOnMobile** | **String** | When set to **true**, recipients can sign on a mobile device.  **Note**: Only Admin users can change this setting.  | [optional] 
**signingLocation** | **String** | Specifies the physical location where the signing takes place. It can have two enumeration values; &#x60;inPerson&#x60; and &#x60;online&#x60;. The default value is &#x60;online&#x60;. | [optional] 
**status** | **String** | Indicates the envelope status. Valid values when creating an envelope are:   * &#x60;created&#x60;: The envelope is created as a draft. It can be modified and sent later. * &#x60;sent&#x60;: The envelope will be sent to the recipients after the envelope is created.  You can query these additional statuses once the recipients have interacted with the envelope.  * &#x60;completed&#x60;: The recipients have finished working with the envelope: the documents are signed and all required tabs are filled in. * &#x60;declined&#x60;: The envelope has been declined by the recipients. * &#x60;delivered&#x60;: The envelope has been delivered to the recipients. * &#x60;signed&#x60;: The envelope has been signed by the recipients. * &#x60;voided&#x60;: The envelope is no longer valid and recipients cannot access or sign the envelope.  | [optional] 
**statusChangedDateTime** | **String** | The data and time that the status changed. | [optional] 
**statusDateTime** | **String** | The DateTime that the envelope changed status (i.e. was created or sent.) | [optional] 
**templateId** | **String** | The id of the template. If a value is not provided, DocuSign generates a value.  | [optional] 
**templateRoles** | [[**TemplateRole**](TemplateRole.md)] | This object specifies the template recipients. Each &#x60;roleName&#x60; in the template must have a recipient assigned to it. This object is comprised of the following elements:  * &#x60;email&#x60;: The recipient&#39;s email address. * &#x60;name&#x60;: The recipient&#39;s name. * &#x60;roleName&#x60;: The template roleName associated with the recipient. * &#x60;clientUserId&#x60;: An optional property that specifies whether the recipient is embedded or remote. If the &#x60;clientUserId&#x60; is not null, then the recipient is embedded. Note that if a &#x60;clientUserId&#x60; is used and the account settings &#x60;signerMustHaveAccount&#x60; or &#x60;signerMustLoginToSign&#x60; are **true**, an error is generated on sending. * &#x60;defaultRecipient&#x60;: Optional, When set to **true**, this recipient is the default recipient and any tabs generated by the &#x60;transformPdfFields&#x60; option are mapped to this recipient. * &#x60;routingOrder&#x60;: This specifies the routing order of the recipient in the envelope. * &#x60;accessCode&#x60;: This optional element specifies the access code a recipient has to enter to validate the identity. Maximum Length: 50 characters. * &#x60;inPersonSignerName&#x60;: Optional. If the template role is an in-person signer, this is the full legal name of the signer. Maximum Length: 100 characters. * &#x60;emailNotification&#x60;: This is an optional complex element that has a role-specific &#x60;emailSubject&#x60;, &#x60;emailBody&#x60;, and &#x60;language&#x60;. It follows the same format as the &#x60;emailNotification&#x60; property for recipients. * &#x60;tabs&#x60;: This property enables the tab values to be specified for matching to tabs in the template.  | [optional] 
**templatesUri** | **String** | The URI for retrieving any templates associated with the envelope. | [optional] 
**transactionId** | **String** |  Used to identify an envelope. The id is a sender-generated value and is valid in the DocuSign system for 7 days. We recommend that you use a transaction ID for offline signing to ensure that an envelope is not sent multiple times. You can use the &#x60;transactionId&#x60; property to determine an envelope&#39;s status (i.e. was it created or not) in cases where the Internet connection was lost before the envelope status was returned. | [optional] 
**useDisclosure** | **String** | When set to **true**, the disclosure is shown to recipients in accordance with the account&#39;s Electronic Record and Signature Disclosure frequency setting. When set to **false**, the Electronic Record and Signature Disclosure is not shown to any envelope recipients.   If the &#x60;useDisclosure&#x60; property is not set, then the account&#39;s normal disclosure setting is used and the value of the &#x60;useDisclosure&#x60; property is not returned in responses when getting envelope information. | [optional] 
**voidedDateTime** | **String** | The date and time the envelope or template was voided. | [optional] 
**voidedReason** | **String** | The reason the envelope or template was voided. | [optional] 
**workflow** | [**Workflow**](Workflow.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

