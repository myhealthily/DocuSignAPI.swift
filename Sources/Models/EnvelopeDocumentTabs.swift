//
// EnvelopeDocumentTabs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Envelope Document Tabs resource  */
public final class EnvelopeDocumentTabs: Content {
    /** A list of [Approve tabs][approve].  An Approve tab enables the recipient to approve documents without placing a signature or initials on the document. If the recipient clicks the tab during the signing process, the recipient is considered to have signed the document. No information is shown on the document of the approval, but it is recorded as a signature in the envelope history. The value of an approve tab can't be set.  [approve]:        https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/approve  */
    public var approveTabs: [Approve]?
    /** A list of [Checkbox tabs][checkbox].   A Checkbox tab enables the recipient to select a yes/no (on/off) option. This value can be set.   [checkbox]:  https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/checkbox  */
    public var checkboxTabs: [Checkbox]?
    /** An array of tabs that represents a collection of comments in a comment thread. For example, if a recipient has questions about the content of a document, they can add a comment to the document and control who else can see the comment. This value can't be set. */
    public var commentThreadTabs: [CommentThread]?
    /**  */
    public var commissionCountyTabs: [CommissionCounty]?
    /**  */
    public var commissionExpirationTabs: [CommissionExpiration]?
    /**  */
    public var commissionNumberTabs: [CommissionNumber]?
    /**  */
    public var commissionStateTabs: [CommissionState]?
    /** A list of  [Company tabs][company].   A Company tab displays a field for the name of the recipient's company. This value can't be set.    [company]: https://developers.docusign.com/esign-rest-api/reference/EnvelopeRecipientTabs/create/#/definitions/company   */
    public var companyTabs: [Company]?
    /** A list of  [Date Signed tabs][dateSigned].   A Date Signed tab displays the date that the recipient signed the document. This value can't be set.  [dateSigned]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/dateSigned   */
    public var dateSignedTabs: [DateSigned]?
    /** A list of  [Date tabs][date].  A Date tab enables the recipient to enter a date. This value can't be set. The tooltip for this tab recommends the date format MM/DD/YYYY, but this format is not enforced. The system retains the format that the recipient enters.  **Note**: If you need to enforce a specific date format, we recommend that you use a Text tab with a validation pattern and validation message.   [date]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/date   */
    public var dateTabs: [Date]?
    /** A list of  [Decline tabs][decline].  A Decline tab enables the recipient to decline the envelope. If the recipient clicks the tab during the signing process, the envelope is voided. The value of this tab can't be set.   [decline]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/decline   */
    public var declineTabs: [Decline]?
    /**  */
    public var drawTabs: [Draw]?
    /** A list of  [Email Address tabs][emailAddress].  An Email Address tab displays the recipient's email as entered in the recipient information. This value can't be set.   [emailAddress]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/emailAddress   */
    public var emailAddressTabs: [EmailAddress]?
    /** A list of  [Email tabs][email].  An Email tab enables the recipient to enter an email address. This is a one-line field that checks that a valid email address is entered. It uses the same parameters as a Text tab, with the validation message and pattern set for email information. This value can be set.  When getting information that includes this tab type, the original value of the tab when the associated envelope was sent is included in the response.  [email]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/email   */
    public var emailTabs: [Email]?
    /** A list of  [Envelope ID tabs][envelopeId].  An Envelope ID tab  displays the envelope ID. Recipients cannot enter or change the information in this tab. This value can't be set.   [envelopeId]: https://developers.docusign.com/esign-rest-api/reference/EnvelopeRecipientTabs/create/#/definitions/envelopeId   */
    public var envelopeIdTabs: [EnvelopeId]?
    /** A list of  [First Name tabs][firstName].  A First Name tab displays the recipient's first name. The system automatically populates this field by splitting the name in the recipient information on spaces. This value can't be set.   [firstName]: https://developers.docusign.com/esign-rest-api/reference/EnvelopeRecipientTabs/create/#/definitions/firstName   */
    public var firstNameTabs: [FirstName]?
    /** A list of [Formula tabs][formulaTab].  The value of a Formula tab is calculated from the values of other number or date tabs in the document. When the recipient completes the underlying fields, the Formula tab calculates and displays the result. This value can be set.  The `formula` property of the tab contains the references to the underlying tabs. To learn more about formulas, see [Calculated Fields][calculatedfields].  If a Formula tab contains a `paymentDetails` property, the tab is considered a payment item. To learn more about payments, see [Requesting Payments Along with Signatures][paymentguide].  [calculatedfields]: https://support.docusign.com/en/guides/ndse-user-guide-calculated-fields [paymentguide]:     https://support.docusign.com/en/guides/requesting-payments-along-with-signatures [formulaTab]:      https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/formulaTab  */
    public var formulaTabs: [FormulaTab]?
    /** A list of  [Full Name tabs][fullName].  A Full Name tab displays the recipient's full name. This value can't be set.   [fullName]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/fullName   */
    public var fullNameTabs: [FullName]?
    /** A list of  [Initial Here tabs][initialHere].  This type of tab enables the recipient to initial the document. May be optional. This value can't be set.  [initialHere]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/initialHere   */
    public var initialHereTabs: [InitialHere]?
    /** A list of  [Last Name tabs][lastName].  A Last Name tab displays the recipient's last name. The system automatically populates this field by splitting the name in the recipient information on spaces. This value can't be set.   [lastName]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/lastName   */
    public var lastNameTabs: [LastName]?
    /** A list of [List tabs][list].  A List tab enables the recipient to choose from a list of options. You specify the options in the `listItems` property. This value can't be set.    [list]: https://developers.docusign.com/esign-rest-api/reference/EnvelopeRecipientTabs/create/#/definitions/list   */
    public var listTabs: [List]?
    /** A list of  [Notarize tabs][notarize].  A Notarize tab alerts notary recipients that they must take action on the page. This value can be set.  **Note**: Only one notarize tab can appear on a page.  [notarize]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/notarize   */
    public var notarizeTabs: [Notarize]?
    /**  */
    public var notarySealTabs: [NotarySeal]?
    /** A list of  [Note tabs][note].  A Note tab displays additional information to the recipient in the form of a note. This value can be set.  [note]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/note   */
    public var noteTabs: [Note]?
    /** A list of  [Number tabs][number].  A Number tab enables the recipient to enter numbers and decimal points (.). This value can be set.    [number]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/number   */
    public var numberTabs: [Double]?
    /**  */
    public var phoneNumberTabs: [PhoneNumber]?
    /** This type of tab enables the recipient to strike through document text. This value can't be set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       */
    public var polyLineOverlayTabs: [PolyLineOverlay]?
    /** A list of [Radio Group tabs][radioGroup].  A Radio Group tab places a group of radio buttons on a document. The `radios` property is used to add and place the radio buttons associated with the group. Only one radio button can be selected in a group. This value can be set.   [radioGroup]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/radioGroup   */
    public var radioGroupTabs: [RadioGroup]?
    /** A list of  [Signer Attachment tabs][signerAttachment].  This type of tab enables the recipient to attach supporting documents to an envelope. This value can't be set.   [signerAttachment]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/signerAttachment   */
    public var signerAttachmentTabs: [SignerAttachment]?
    /** A list of  [Sign Here tabs][signHere].  This type of tab enables the recipient to sign a document. May be optional. This value can't be set.  [signHere]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/signHere   */
    public var signHereTabs: [SignHere]?
    /** A list of [Smart Section](https://www.docusign.com/blog/dsdev-deep-dive-responsive-smart-sections/) tabs.  Smart Section tabs enhance responsive signing on mobile devices by enabling collapsible sections, page breaks, custom formatting options, and other advanced functionality.  **Note**: Smart Sections are a premium feature. Responsive signing must also be enabled for your account. */
    public var smartSectionTabs: [SmartSection]?
    /** A list of  [SSN tabs][ssn].  An SSN tab contains a one-line field that enables the recipient to enter a Social Security Number (SSN) with or without dashes. It uses the same parameters as a Text tab, with the validation message and pattern set for SSN information. This value can be set.   [ssn]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/ssn   */
    public var ssnTabs: [Ssn]?
    /** An array of `tabGroup` items that contain information about tab groups. To assign a tab to a `tabGroup`, you assign the `tabGroupLabel` to the `Tab.TabGroupLabels` array. */
    public var tabGroups: [TabGroup]?
    /** A list of  [Text tabs][text].  A text tab enables the recipient to enter free text. This value can be set.  [text]: https://developers.docusign.com/esign-rest-api/reference/EnvelopeRecipientTabs/create/#/definitions/text   */
    public var textTabs: [Text]?
    /** A list of  [Title tabs][title].  A Title tab displays the recipient's title.  This value can't be set.   [title]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/title   */
    public var titleTabs: [Title]?
    /** A list of  [View tabs][view].  A View tab is used with an Approve tab to handle supplemental documents.  This value can be set.  [view]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/view   */
    public var viewTabs: [View]?
    /** A list of  [Zip tabs][zip].  A Zip tab enables the recipient to enter a ZIP code. The ZIP code can be five digits or nine digits ( in ZIP+4 format), and can be entered with or without dashes. It uses the same parameters as a Text tab, with the validation message and pattern set for ZIP code information.  This value can be set.   [zip]: https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipientTabs/create/#/definitions/zip  */
    public var zipTabs: [Zip]?

    public init(approveTabs: [Approve]? = nil, checkboxTabs: [Checkbox]? = nil, commentThreadTabs: [CommentThread]? = nil, commissionCountyTabs: [CommissionCounty]? = nil, commissionExpirationTabs: [CommissionExpiration]? = nil, commissionNumberTabs: [CommissionNumber]? = nil, commissionStateTabs: [CommissionState]? = nil, companyTabs: [Company]? = nil, dateSignedTabs: [DateSigned]? = nil, dateTabs: [Date]? = nil, declineTabs: [Decline]? = nil, drawTabs: [Draw]? = nil, emailAddressTabs: [EmailAddress]? = nil, emailTabs: [Email]? = nil, envelopeIdTabs: [EnvelopeId]? = nil, firstNameTabs: [FirstName]? = nil, formulaTabs: [FormulaTab]? = nil, fullNameTabs: [FullName]? = nil, initialHereTabs: [InitialHere]? = nil, lastNameTabs: [LastName]? = nil, listTabs: [List]? = nil, notarizeTabs: [Notarize]? = nil, notarySealTabs: [NotarySeal]? = nil, noteTabs: [Note]? = nil, numberTabs: [Double]? = nil, phoneNumberTabs: [PhoneNumber]? = nil, polyLineOverlayTabs: [PolyLineOverlay]? = nil, radioGroupTabs: [RadioGroup]? = nil, signerAttachmentTabs: [SignerAttachment]? = nil, signHereTabs: [SignHere]? = nil, smartSectionTabs: [SmartSection]? = nil, ssnTabs: [Ssn]? = nil, tabGroups: [TabGroup]? = nil, textTabs: [Text]? = nil, titleTabs: [Title]? = nil, viewTabs: [View]? = nil, zipTabs: [Zip]? = nil) {
        self.approveTabs = approveTabs
        self.checkboxTabs = checkboxTabs
        self.commentThreadTabs = commentThreadTabs
        self.commissionCountyTabs = commissionCountyTabs
        self.commissionExpirationTabs = commissionExpirationTabs
        self.commissionNumberTabs = commissionNumberTabs
        self.commissionStateTabs = commissionStateTabs
        self.companyTabs = companyTabs
        self.dateSignedTabs = dateSignedTabs
        self.dateTabs = dateTabs
        self.declineTabs = declineTabs
        self.drawTabs = drawTabs
        self.emailAddressTabs = emailAddressTabs
        self.emailTabs = emailTabs
        self.envelopeIdTabs = envelopeIdTabs
        self.firstNameTabs = firstNameTabs
        self.formulaTabs = formulaTabs
        self.fullNameTabs = fullNameTabs
        self.initialHereTabs = initialHereTabs
        self.lastNameTabs = lastNameTabs
        self.listTabs = listTabs
        self.notarizeTabs = notarizeTabs
        self.notarySealTabs = notarySealTabs
        self.noteTabs = noteTabs
        self.numberTabs = numberTabs
        self.phoneNumberTabs = phoneNumberTabs
        self.polyLineOverlayTabs = polyLineOverlayTabs
        self.radioGroupTabs = radioGroupTabs
        self.signerAttachmentTabs = signerAttachmentTabs
        self.signHereTabs = signHereTabs
        self.smartSectionTabs = smartSectionTabs
        self.ssnTabs = ssnTabs
        self.tabGroups = tabGroups
        self.textTabs = textTabs
        self.titleTabs = titleTabs
        self.viewTabs = viewTabs
        self.zipTabs = zipTabs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case approveTabs
        case checkboxTabs
        case commentThreadTabs
        case commissionCountyTabs
        case commissionExpirationTabs
        case commissionNumberTabs
        case commissionStateTabs
        case companyTabs
        case dateSignedTabs
        case dateTabs
        case declineTabs
        case drawTabs
        case emailAddressTabs
        case emailTabs
        case envelopeIdTabs
        case firstNameTabs
        case formulaTabs
        case fullNameTabs
        case initialHereTabs
        case lastNameTabs
        case listTabs
        case notarizeTabs
        case notarySealTabs
        case noteTabs
        case numberTabs
        case phoneNumberTabs
        case polyLineOverlayTabs
        case radioGroupTabs
        case signerAttachmentTabs
        case signHereTabs
        case smartSectionTabs
        case ssnTabs
        case tabGroups
        case textTabs
        case titleTabs
        case viewTabs
        case zipTabs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(approveTabs, forKey: .approveTabs)
        try container.encodeIfPresent(checkboxTabs, forKey: .checkboxTabs)
        try container.encodeIfPresent(commentThreadTabs, forKey: .commentThreadTabs)
        try container.encodeIfPresent(commissionCountyTabs, forKey: .commissionCountyTabs)
        try container.encodeIfPresent(commissionExpirationTabs, forKey: .commissionExpirationTabs)
        try container.encodeIfPresent(commissionNumberTabs, forKey: .commissionNumberTabs)
        try container.encodeIfPresent(commissionStateTabs, forKey: .commissionStateTabs)
        try container.encodeIfPresent(companyTabs, forKey: .companyTabs)
        try container.encodeIfPresent(dateSignedTabs, forKey: .dateSignedTabs)
        try container.encodeIfPresent(dateTabs, forKey: .dateTabs)
        try container.encodeIfPresent(declineTabs, forKey: .declineTabs)
        try container.encodeIfPresent(drawTabs, forKey: .drawTabs)
        try container.encodeIfPresent(emailAddressTabs, forKey: .emailAddressTabs)
        try container.encodeIfPresent(emailTabs, forKey: .emailTabs)
        try container.encodeIfPresent(envelopeIdTabs, forKey: .envelopeIdTabs)
        try container.encodeIfPresent(firstNameTabs, forKey: .firstNameTabs)
        try container.encodeIfPresent(formulaTabs, forKey: .formulaTabs)
        try container.encodeIfPresent(fullNameTabs, forKey: .fullNameTabs)
        try container.encodeIfPresent(initialHereTabs, forKey: .initialHereTabs)
        try container.encodeIfPresent(lastNameTabs, forKey: .lastNameTabs)
        try container.encodeIfPresent(listTabs, forKey: .listTabs)
        try container.encodeIfPresent(notarizeTabs, forKey: .notarizeTabs)
        try container.encodeIfPresent(notarySealTabs, forKey: .notarySealTabs)
        try container.encodeIfPresent(noteTabs, forKey: .noteTabs)
        try container.encodeIfPresent(numberTabs, forKey: .numberTabs)
        try container.encodeIfPresent(phoneNumberTabs, forKey: .phoneNumberTabs)
        try container.encodeIfPresent(polyLineOverlayTabs, forKey: .polyLineOverlayTabs)
        try container.encodeIfPresent(radioGroupTabs, forKey: .radioGroupTabs)
        try container.encodeIfPresent(signerAttachmentTabs, forKey: .signerAttachmentTabs)
        try container.encodeIfPresent(signHereTabs, forKey: .signHereTabs)
        try container.encodeIfPresent(smartSectionTabs, forKey: .smartSectionTabs)
        try container.encodeIfPresent(ssnTabs, forKey: .ssnTabs)
        try container.encodeIfPresent(tabGroups, forKey: .tabGroups)
        try container.encodeIfPresent(textTabs, forKey: .textTabs)
        try container.encodeIfPresent(titleTabs, forKey: .titleTabs)
        try container.encodeIfPresent(viewTabs, forKey: .viewTabs)
        try container.encodeIfPresent(zipTabs, forKey: .zipTabs)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        approveTabs = try container.decodeIfPresent([Approve].self, forKey: .approveTabs)
        checkboxTabs = try container.decodeIfPresent([Checkbox].self, forKey: .checkboxTabs)
        commentThreadTabs = try container.decodeIfPresent([CommentThread].self, forKey: .commentThreadTabs)
        commissionCountyTabs = try container.decodeIfPresent([CommissionCounty].self, forKey: .commissionCountyTabs)
        commissionExpirationTabs = try container.decodeIfPresent([CommissionExpiration].self, forKey: .commissionExpirationTabs)
        commissionNumberTabs = try container.decodeIfPresent([CommissionNumber].self, forKey: .commissionNumberTabs)
        commissionStateTabs = try container.decodeIfPresent([CommissionState].self, forKey: .commissionStateTabs)
        companyTabs = try container.decodeIfPresent([Company].self, forKey: .companyTabs)
        dateSignedTabs = try container.decodeIfPresent([DateSigned].self, forKey: .dateSignedTabs)
        dateTabs = try container.decodeIfPresent([Date].self, forKey: .dateTabs)
        declineTabs = try container.decodeIfPresent([Decline].self, forKey: .declineTabs)
        drawTabs = try container.decodeIfPresent([Draw].self, forKey: .drawTabs)
        emailAddressTabs = try container.decodeIfPresent([EmailAddress].self, forKey: .emailAddressTabs)
        emailTabs = try container.decodeIfPresent([Email].self, forKey: .emailTabs)
        envelopeIdTabs = try container.decodeIfPresent([EnvelopeId].self, forKey: .envelopeIdTabs)
        firstNameTabs = try container.decodeIfPresent([FirstName].self, forKey: .firstNameTabs)
        formulaTabs = try container.decodeIfPresent([FormulaTab].self, forKey: .formulaTabs)
        fullNameTabs = try container.decodeIfPresent([FullName].self, forKey: .fullNameTabs)
        initialHereTabs = try container.decodeIfPresent([InitialHere].self, forKey: .initialHereTabs)
        lastNameTabs = try container.decodeIfPresent([LastName].self, forKey: .lastNameTabs)
        listTabs = try container.decodeIfPresent([List].self, forKey: .listTabs)
        notarizeTabs = try container.decodeIfPresent([Notarize].self, forKey: .notarizeTabs)
        notarySealTabs = try container.decodeIfPresent([NotarySeal].self, forKey: .notarySealTabs)
        noteTabs = try container.decodeIfPresent([Note].self, forKey: .noteTabs)
        numberTabs = try container.decodeIfPresent([Double].self, forKey: .numberTabs)
        phoneNumberTabs = try container.decodeIfPresent([PhoneNumber].self, forKey: .phoneNumberTabs)
        polyLineOverlayTabs = try container.decodeIfPresent([PolyLineOverlay].self, forKey: .polyLineOverlayTabs)
        radioGroupTabs = try container.decodeIfPresent([RadioGroup].self, forKey: .radioGroupTabs)
        signerAttachmentTabs = try container.decodeIfPresent([SignerAttachment].self, forKey: .signerAttachmentTabs)
        signHereTabs = try container.decodeIfPresent([SignHere].self, forKey: .signHereTabs)
        smartSectionTabs = try container.decodeIfPresent([SmartSection].self, forKey: .smartSectionTabs)
        ssnTabs = try container.decodeIfPresent([Ssn].self, forKey: .ssnTabs)
        tabGroups = try container.decodeIfPresent([TabGroup].self, forKey: .tabGroups)
        textTabs = try container.decodeIfPresent([Text].self, forKey: .textTabs)
        titleTabs = try container.decodeIfPresent([Title].self, forKey: .titleTabs)
        viewTabs = try container.decodeIfPresent([View].self, forKey: .viewTabs)
        zipTabs = try container.decodeIfPresent([Zip].self, forKey: .zipTabs)
    }
}

extension EnvelopeDocumentTabs: Hashable {
    public static func == (lhs: EnvelopeDocumentTabs, rhs: EnvelopeDocumentTabs) -> Bool {
        lhs.approveTabs == rhs.approveTabs &&
            lhs.checkboxTabs == rhs.checkboxTabs &&
            lhs.commentThreadTabs == rhs.commentThreadTabs &&
            lhs.commissionCountyTabs == rhs.commissionCountyTabs &&
            lhs.commissionExpirationTabs == rhs.commissionExpirationTabs &&
            lhs.commissionNumberTabs == rhs.commissionNumberTabs &&
            lhs.commissionStateTabs == rhs.commissionStateTabs &&
            lhs.companyTabs == rhs.companyTabs &&
            lhs.dateSignedTabs == rhs.dateSignedTabs &&
            lhs.dateTabs == rhs.dateTabs &&
            lhs.declineTabs == rhs.declineTabs &&
            lhs.drawTabs == rhs.drawTabs &&
            lhs.emailAddressTabs == rhs.emailAddressTabs &&
            lhs.emailTabs == rhs.emailTabs &&
            lhs.envelopeIdTabs == rhs.envelopeIdTabs &&
            lhs.firstNameTabs == rhs.firstNameTabs &&
            lhs.formulaTabs == rhs.formulaTabs &&
            lhs.fullNameTabs == rhs.fullNameTabs &&
            lhs.initialHereTabs == rhs.initialHereTabs &&
            lhs.lastNameTabs == rhs.lastNameTabs &&
            lhs.listTabs == rhs.listTabs &&
            lhs.notarizeTabs == rhs.notarizeTabs &&
            lhs.notarySealTabs == rhs.notarySealTabs &&
            lhs.noteTabs == rhs.noteTabs &&
            lhs.numberTabs == rhs.numberTabs &&
            lhs.phoneNumberTabs == rhs.phoneNumberTabs &&
            lhs.polyLineOverlayTabs == rhs.polyLineOverlayTabs &&
            lhs.radioGroupTabs == rhs.radioGroupTabs &&
            lhs.signerAttachmentTabs == rhs.signerAttachmentTabs &&
            lhs.signHereTabs == rhs.signHereTabs &&
            lhs.smartSectionTabs == rhs.smartSectionTabs &&
            lhs.ssnTabs == rhs.ssnTabs &&
            lhs.tabGroups == rhs.tabGroups &&
            lhs.textTabs == rhs.textTabs &&
            lhs.titleTabs == rhs.titleTabs &&
            lhs.viewTabs == rhs.viewTabs &&
            lhs.zipTabs == rhs.zipTabs
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(approveTabs?.hashValue)
        hasher.combine(checkboxTabs?.hashValue)
        hasher.combine(commentThreadTabs?.hashValue)
        hasher.combine(commissionCountyTabs?.hashValue)
        hasher.combine(commissionExpirationTabs?.hashValue)
        hasher.combine(commissionNumberTabs?.hashValue)
        hasher.combine(commissionStateTabs?.hashValue)
        hasher.combine(companyTabs?.hashValue)
        hasher.combine(dateSignedTabs?.hashValue)
        hasher.combine(dateTabs?.hashValue)
        hasher.combine(declineTabs?.hashValue)
        hasher.combine(drawTabs?.hashValue)
        hasher.combine(emailAddressTabs?.hashValue)
        hasher.combine(emailTabs?.hashValue)
        hasher.combine(envelopeIdTabs?.hashValue)
        hasher.combine(firstNameTabs?.hashValue)
        hasher.combine(formulaTabs?.hashValue)
        hasher.combine(fullNameTabs?.hashValue)
        hasher.combine(initialHereTabs?.hashValue)
        hasher.combine(lastNameTabs?.hashValue)
        hasher.combine(listTabs?.hashValue)
        hasher.combine(notarizeTabs?.hashValue)
        hasher.combine(notarySealTabs?.hashValue)
        hasher.combine(noteTabs?.hashValue)
        hasher.combine(numberTabs?.hashValue)
        hasher.combine(phoneNumberTabs?.hashValue)
        hasher.combine(polyLineOverlayTabs?.hashValue)
        hasher.combine(radioGroupTabs?.hashValue)
        hasher.combine(signerAttachmentTabs?.hashValue)
        hasher.combine(signHereTabs?.hashValue)
        hasher.combine(smartSectionTabs?.hashValue)
        hasher.combine(ssnTabs?.hashValue)
        hasher.combine(tabGroups?.hashValue)
        hasher.combine(textTabs?.hashValue)
        hasher.combine(titleTabs?.hashValue)
        hasher.combine(viewTabs?.hashValue)
        hasher.combine(zipTabs?.hashValue)
    }
}
