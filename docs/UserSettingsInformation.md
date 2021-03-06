# UserSettingsInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountManagementGranular** | [**UserAccountManagementGranularInformation**](UserAccountManagementGranularInformation.md) |  | [optional] 
**adminOnly** | **String** | Reserved for DocuSign. | [optional] 
**adminOnlyMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowAutoTagging** | **String** | When set to **true**, the API returns suggested tabs for documents for this user. | [optional] 
**allowEnvelopeTransferTo** | **String** | When set to **true**, this user can participate in envelope transfers on the account. | [optional] 
**allowEnvelopeTransferToMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowEsealRecipients** | **String** | When set to **true**, this user can create [electronic seal recipients][eseal].  [eseal]: /esign/restapi//Envelopes/EnvelopeRecipients#seal-recipient | [optional] 
**allowEsealRecipientsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowPowerFormsAdminToAccessAllPowerFormEnvelope** | **String** | When set to **true** and this user is an administrator, they can view all of the envelopes generated from PowerForms. The default value is **false**. | [optional] 
**allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowRecipientLanguageSelection** | **String** | When set to **true**, this user can set the language used in the standard email format for a recipient when creating an envelope. | [optional] 
**allowRecipientLanguageSelectionMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowSendOnBehalfOf** | **String** | When set to **true**, this user can send envelopes \&quot;on behalf of\&quot; other users through the API. | [optional] 
**allowSendOnBehalfOfMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**allowSupplementalDocuments** | **String** | When **true**, this user can include supplemental documents. | [optional] 
**allowSupplementalDocumentsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**anchorTagVersionedPlacementEnabled** | **String** | Reserved for DocuSign.  | [optional] 
**apiAccountWideAccess** | **String** | When **true**, indicates that this user can send envelope-specific API requests on the account. | [optional] 
**apiAccountWideAccessMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**apiCanExportAC** | **String** | When **true**, this user can export authoritative copy for the account. | [optional] 
**apiCanExportACMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**bulkSend** | **String** | When **true**, this user can use the bulk send feature for the account. | [optional] 
**bulkSendMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canChargeAccount** | **String** | Reserved for DocuSign. | [optional] 
**canChargeAccountMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canEditSharedAddressbook** | **String** | When true, this user can edit the shared address book for the account. | [optional] 
**canEditSharedAddressbookMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canLockEnvelopes** | **String** | When set to **true**, this user can lock envelopes. | [optional] 
**canLockEnvelopesMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canManageAccount** | **String** | When **true**, this user is an administrator for the account. | [optional] 
**canManageAccountMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canManageDistributor** | **String** | Reserved for DocuSign. | [optional] 
**canManageDistributorMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canManageTemplates** | **String** | When **true**, this user can manage templates for the account. | [optional] 
**canManageTemplatesMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canSendAPIRequests** | **String** | When **true**, this user can send API requests on the account. | [optional] 
**canSendAPIRequestsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canSendEnvelope** | **String** | When **true**, this user can send envelopes on the account. | [optional] 
**canSendEnvelopeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canSignEnvelope** | **String** | When **true**, this user can sign envelopes. | [optional] 
**canSignEnvelopeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canUseScratchpad** | **String** | When set to **true**, this user can use a scratchpad to edit information. | [optional] 
**canUseScratchpadMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**canUseSmartContracts** | **String** | Reserved for DocuSign. | [optional] 
**canUseSmartContractsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**disableDocumentUpload** | **String** | When **true**, this user is prohibited from uploading documents during sending. | [optional] 
**disableDocumentUploadMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**disableOtherActions** | **String** | When **true**, this user can access the **Other Actions** menu. | [optional] 
**disableOtherActionsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableDSPro** | **String** | Reserved for DocuSign. | [optional] 
**enableDSProMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableSequentialSigningAPI** | **String** | When set to **true**, the account can define the routing order of recipients for envelopes sent by using the eSignature API.  **Note**: Only SysAdmin users can change this setting. | [optional] 
**enableSequentialSigningAPIMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableSequentialSigningUI** | **String** | When set to **true**, the account can define the routing order of recipients for envelopes sent by using the DocuSign application.  **Note**: Only SysAdmin users can change this setting.  | [optional] 
**enableSequentialSigningUIMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableSignerAttachments** | **String** | When **true**, this user can use the signing attachments feature. | [optional] 
**enableSignerAttachmentsMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableSignOnPaperOverride** | **String** | When set to **true**, a user can override the default default account setting for the Sign on Paper option, which specifies whether signers can sign documents on paper as an option to signing electronically.  **Note**: Only Admin users can change this setting. | [optional] 
**enableSignOnPaperOverrideMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableTransactionPoint** | **String** | Reserved for DocuSign. | [optional] 
**enableTransactionPointMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**enableVaulting** | **String** | When set to **true**, Vaulting is enabled for the account. | [optional] 
**enableVaultingMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**expressSendOnly** | **String** | When set to **false**, this user can apply tabs to documents during the sending experience. | [optional] 
**locale** | **String** | The user&#39;s locale code. Valid values are: - &#x60;zh_CN&#x60; - &#x60;zh_TW&#x60; - &#x60;nl&#x60; - &#x60;en&#x60; - &#x60;fr&#x60; - &#x60;de&#x60; - &#x60;it&#x60; - &#x60;ja&#x60; - &#x60;ko&#x60; - &#x60;pt&#x60; - &#x60;pt_BR&#x60; - &#x60;ru&#x60; - &#x60;es&#x60; | [optional] 
**localeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**localePolicy** | [**LocalePolicy**](LocalePolicy.md) |  | [optional] 
**manageClickwrapsMode** | **String** | When set to **true**, this user can create and manage [Clickwraps](https://developers.docusign.com/click-api). | [optional] 
**manageClickwrapsModeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**modifiedBy** | **String** | The user id (GUID) of the user who last modified this user record. | [optional] 
**modifiedByMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**modifiedDate** | **String** | The date on which this user record was last modified. | [optional] 
**modifiedDateMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**modifiedPage** | **String** | Note referencing the page that modified this user record. | [optional] 
**modifiedPageMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**newSendUI** | **String** | Reserved for DocuSign. | [optional] 
**newSendUIMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**powerFormMode** | **String** | Indicates the Power Form mode setting for the user: - &#x60;none&#x60; - &#x60;admin&#x60; - &#x60;user&#x60; | [optional] 
**powerFormModeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**recipientViewedNotification** | **String** | When **true**, this user receives notifications when envelopes are viewed. | [optional] 
**recipientViewedNotificationMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**sealIdentifiers** | [SealIdentifier] | Information about the seals associated with this user. | [optional] 
**selfSignedRecipientEmailDocument** | **String** | Sets how self-signed documents are presented to the email recipients. Valid values are:  - &#x60;include_pdf&#x60;: A PDF of the completed document is attached to the email. - &#x60;include_link&#x60;: A secure link to the self-signed documents is included    in the email.  **Note**: Only Admin users can change this setting.  | [optional] 
**selfSignedRecipientEmailDocumentMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**senderEmailNotifications** | [**SenderEmailNotifications**](SenderEmailNotifications.md) |  | [optional] 
**signerEmailNotifications** | [**SignerEmailNotifications**](SignerEmailNotifications.md) |  | [optional] 
**supplementalDocumentIncludeInDownload** | **String** | When **true**, this user gets supplemental documents when downloading documents. | [optional] 
**supplementalDocumentsMustAccept** | **String** | When **true**, this user must accept supplemental documents. | [optional] 
**supplementalDocumentsMustAcceptMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**supplementalDocumentsMustRead** | **String** | When **true**, this user must both view and accept supplemental documents. | [optional] 
**supplementalDocumentsMustReadMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**supplementalDocumentsMustView** | **String** | When **true**, this user must view supplemental documents. | [optional] 
**supplementalDocumentsMustViewMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**templateActiveCreation** | **String** | When set to **true**, a new template is created each time the user sends an envelope. | [optional] 
**templateActiveCreationMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**templateApplyNotify** | **String** | When set to **true**, the system notifies this user before applying a matching template. | [optional] 
**templateApplyNotifyMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**templateAutoMatching** | **String** | When set to **true**, the system automatically applies a matching template to a document if only one template matches. If there are multiple matches, it displays a list of matches to select from. | [optional] 
**templateAutoMatchingMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**templateMatchingSensitivity** | **String** | Percentage used when matching templates. | [optional] 
**templateMatchingSensitivityMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**templatePageLevelMatching** | **String** | When **true**, users see template matching functionality. | [optional] 
**templatePageLevelMatchingMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**timezoneDST** | **String** | When true, daylight savings time is in effect for this user&#39;s time zone. | [optional] 
**timezoneDSTMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**timezoneMask** | **String** | The custom DateTime format setting for this user. | [optional] 
**timezoneMaskMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**timezoneOffset** | **String** | The timezone offset for the user. Valid values: - &#x60;tz_01_afghanistan&#x60; - &#x60;tz_02_alaskan&#x60; - &#x60;tz_03_arab&#x60; - &#x60;tz_04_arabian&#x60; - &#x60;tz_05_arabic&#x60; - &#x60;tz_06_argentina&#x60; - &#x60;tz_07_atlantic&#x60; - &#x60;tz_08_aus_central&#x60; - &#x60;tz_09_aus_eastern&#x60; - &#x60;tz_10_azerbaijan&#x60; - &#x60;tz_11_azores&#x60; - &#x60;tz_12_bangladesh&#x60; - &#x60;tz_13_canada_central&#x60; - &#x60;tz_14_cape_verde&#x60; - &#x60;tz_15_caucasus&#x60; - &#x60;tz_16_central_australia&#x60; - &#x60;tz_17_central_america&#x60; - &#x60;tz_18_central_asia&#x60; - &#x60;tz_19_central_brazilian&#x60; - &#x60;tz_20_central_europe&#x60; - &#x60;tz_21_central_european&#x60; - &#x60;tz_22_central_pacific&#x60; - &#x60;tz_23_central&#x60; - &#x60;tz_24_central_mexico&#x60; - &#x60;tz_25_china&#x60; - &#x60;tz_26_dateline&#x60; - &#x60;tz_27_east_africa&#x60; - &#x60;tz_28_east_australia&#x60; - &#x60;tz_29_east_europe&#x60; - &#x60;tz_30_east_south_america&#x60; - &#x60;tz_31_eastern&#x60; - &#x60;tz_32_egypt&#x60; - &#x60;tz_33_ekaterinburg&#x60; - &#x60;tz_34_fiji&#x60; - &#x60;tz_35_fli&#x60; - &#x60;tz_36_georgian&#x60; - &#x60;tz_37_gmt&#x60; - &#x60;tz_38_greenland&#x60; - &#x60;tz_39_greenwich&#x60; - &#x60;tz_40_gtb&#x60; - &#x60;tz_41_hawaiian&#x60; - &#x60;tz_42_india&#x60; - &#x60;tz_43_iran&#x60; - &#x60;tz_44_israel&#x60; - &#x60;tz_45_jordan&#x60; - &#x60;tz_46_kaliningrad&#x60; - &#x60;tz_47_kamchatka&#x60; - &#x60;tz_48_korea&#x60; - &#x60;tz_49_magadan&#x60; - &#x60;tz_50_mauritius&#x60; - &#x60;tz_51_mid_atlantic&#x60; - &#x60;tz_52_middle_east&#x60; - &#x60;tz_53_montevideo&#x60; - &#x60;tz_54_morocco&#x60; - &#x60;tz_55_mountain&#x60; - &#x60;tz_56_mountain_mexico&#x60; - &#x60;tz_57_myanmar&#x60; - &#x60;tz_58_north_central_asia&#x60; - &#x60;tz_59_namibia&#x60; - &#x60;tz_60_nepal&#x60; - &#x60;tz_61_new_zealand&#x60; - &#x60;tz_62_new_foundland&#x60; - &#x60;tz_63_north_asia_east&#x60; - &#x60;tz_64_north_asia&#x60; - &#x60;tz_65_pacific_sa&#x60; - &#x60;tz_66_pacific&#x60; - &#x60;tz_67_pacific_mexico&#x60; - &#x60;tz_68_pakistan&#x60; - &#x60;tz_69_paraguay&#x60; - &#x60;tz_70_romance&#x60; - &#x60;tz_71_russian&#x60; - &#x60;tz_72_sa_eastern&#x60; - &#x60;tz_73_sa_pacific&#x60; - &#x60;tz_74_sa_western&#x60; - &#x60;tz_75_samoa&#x60; - &#x60;tz_76_se_asia&#x60; - &#x60;tz_77_singapore&#x60; - &#x60;tz_78_south_africa&#x60; - &#x60;tz_79_sriLanka&#x60; - &#x60;tz_80_syria&#x60; - &#x60;tz_81_taipei&#x60; - &#x60;tz_82_tasmania&#x60; - &#x60;tz_83_tokyo&#x60; - &#x60;tz_84_tonga&#x60; - &#x60;tz_85_turkey&#x60; - &#x60;tz_86_ulaanbaatar&#x60; - &#x60;tz_87_us_eastern&#x60; - &#x60;tz_88_us_mountain&#x60; - &#x60;tz_89_venezuela&#x60; - &#x60;tz_90_vladivostok&#x60; - &#x60;tz_91_west_australia&#x60; - &#x60;tz_92_west_central_africa&#x60; - &#x60;tz_93_west_europe&#x60; - &#x60;tz_94_west_asia&#x60; - &#x60;tz_95_west_pacific&#x60; - &#x60;tz_96_yakutsk&#x60; | [optional] 
**timezoneOffsetMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**timezoneSendingPref** | **String** | Reserved for DocuSign. | [optional] 
**timezoneSendingPrefMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**timezoneSigningPref** | **String** | Reserved for DocuSign. | [optional] 
**timezoneSigningPrefMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**transactionPointSiteNameURL** | **String** | Reserved for DocuSign. | [optional] 
**transactionPointSiteNameURLMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**transactionPointUserName** | **String** | Reserved for DocuSign. | [optional] 
**transactionPointUserNameMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 
**vaultingMode** | **String** | Indicates the specified Vaulting mode: - &#x60;none&#x60; - &#x60;estored&#x60; - &#x60;electronic_original&#x60; | [optional] 
**vaultingModeMetadata** | [**SettingsMetadata**](SettingsMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


