//
// TabMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class TabMetadata: Content {
    /** An optional string that is used to auto-match tabs to strings located in the documents of an envelope. */
    public var anchor: String?
    /** This property controls how [anchor tabs][AnchorTabs] are placed. When **true**, the text string in a document must match the case of the `anchorString` property for an anchor tab to be created. The default value is **false**.  For example, when set to **true**, if the anchor string is `DocuSign`, then `DocuSign` will match but `Docusign`, `docusign`, `DoCuSiGn`, etc. will not match. When set to **false**, `DocuSign`, `Docusign`, `docusign`, `DoCuSiGn`, etc. will all match.  This functionality uses the following rules:  - Unless punctuation is specified in the `anchorString`, this functionality ignores punctuation and the following characters:    $~><|^+=    For example, the `anchorString` `water` will match on the string `Fetch a pail of water.`  - Strings embedded in other strings are ignored during the matching process.  - In words that have dashes, the parts separated by dashes are treated as distinct words.    Example: If the anchor string is `forget`, then an anchor tab is placed on the `forget` in `forget-me-not`, even when `anchorMatchWholeWord` is set to **true**.  - Letters with accent marks are treated as distinct characters from their unaccented counterparts.  - For single-character anchor strings, if the two characters appear right next to each other in the document, a single anchor tab is placed for both of them.    Example: If the anchor string is `i`, then only one anchor tab is placed in `skiing`.  - Unlike punctuation, numbers are not ignored when finding anchor words.    Example: If the anchor string is `cat`, then `-cat-` is matched but `1cat2` is not when `anchorMatchWholeWord` is set to **true** (its default value).  **Note**: You can only specify the value of this property in POST requests.  [AnchorTabs]: https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#autoplace */
    public var anchorCaseSensitive: String?
    /** This property controls how [anchor tabs][AnchorTabs] are aligned in relation to the anchor text. Possible values are :  - `left`: Aligns the left side of the tab with the beginning of the first character of the matching anchor word. This is the default value. - `right`: Aligns the tab’s left side with the last character of the matching anchor word.  **Note**: You can only specify the value of this property in POST requests.  [AnchorTabs]: https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#autoplace  */
    public var anchorHorizontalAlignment: String?
    /** When set to **true**, this tab is ignored if the `anchorString` is not found in the document. */
    public var anchorIgnoreIfNotPresent: String?
    /** When set to **true**, the text string in a document must match the value of the `anchorString` property in its entirety for an [anchor tab][AnchorTab] to be created. The default value is **false**.  For example, when set to **true**, if the input is `man` then `man` will match but `manpower`, `fireman`, and `penmanship` will not. When set to **false**, if the input is `man` then `man`, `manpower`, `fireman`, and `penmanship` will all match.  This functionality uses the following rules:  - Unless punctuation is specified in the `anchorString`, this functionality ignores punctuation and the following characters:    $~><|^+=    For example, the `anchorString` `water` will match on the string `Fetch a pail of water.`  - Strings embedded in other strings are ignored during the matching process.  - In words that have dashes, the parts separated by dashes are treated as distinct words.    Example: If the anchor string is `forget`, then an anchor tab is placed on the `forget` in `forget-me-not`, even when `anchorMatchWholeWord` is set to **true**.  - Letters with accent marks are treated as distinct characters from their unaccented counterparts.  - For single-character anchor strings, if the two characters appear right next to each other in the document, a single anchor tab is placed for both of them.    Example: If the anchor string is `i`, then only one anchor tab is placed in `skiing`.  - Unlike punctuation, numbers are not ignored when finding anchor words.    Example: If the anchor string is `cat`, then `-cat-` is matched but `1cat2` is not when `anchorMatchWholeWord` is set to **true** (its default value).   **Note**: You can only specify the value of this property in POST requests.  [AnchorTab]: https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#autoplace  */
    public var anchorMatchWholeWord: String?
    /** Specifies units of the `anchorXOffset` and `anchorYOffset`. Valid units are:  - `pixels` - `inches` - `mms` - `cms`  */
    public var anchorUnits: String?
    /** Specifies the X axis location of the tab in `anchorUnits` relative to the `anchorString`.  */
    public var anchorXOffset: String?
    /** Specifies the Y axis location of the tab in `anchorUnits` relative to the `anchorString`.  */
    public var anchorYOffset: String?
    /** When set to **true**, the information in the tab is bold. */
    public var bold: String?
    /**  */
    public var collaborative: String?
    /** When set to **true**, the field appears normally while the recipient is adding or modifying the information in the field, but the data is not visible (the characters are hidden by asterisks) to any other signer or the sender.  When an envelope is completed the information is only available to the sender through the Form Data link in the DocuSign Console. The information on the downloaded document remains masked by asterisks.  This setting applies only to text boxes and does not affect list boxes, radio buttons, or check boxes. */
    public var concealValueOnDocument: String?
    /** The user name of the DocuSign user who created this object. */
    public var createdByDisplayName: String?
    /** The userId of the DocuSign user who created this object. */
    public var createdByUserId: String?
    /** The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. */
    public var customTabId: String?
    /** When set to **true**, disables the auto sizing of single line text boxes in the signing screen when the signer enters data. If disabled users will only be able enter as much data as the text box can hold. By default this is false. This property only affects single line text boxes. */
    public var disableAutoSize: String?
    /** When set to **true**, the custom tab is editable. Otherwise the custom tab cannot be modified. */
    public var editable: String?
    /** The font to be used for the tab value. Supported fonts include:  - Default - Arial - ArialNarrow - Calibri - CourierNew - Garamond - Georgia - Helvetica - LucidaConsole - MSGothic - MSMincho - OCR-A - Tahoma - TimesNewRoman - Trebuchet - Verdana  */
    public var font: String?
    /** The font color to use for the information in the tab. Possible values are:   - Black - BrightBlue - BrightRed - DarkGreen - DarkRed - Gold - Green - NavyBlue - Purple - White  */
    public var fontColor: String?
    /** The font size used for the information in the tab. Possible values are:  - Size7 - Size8 - Size9 - Size10 - Size11 - Size12 - Size14 - Size16 - Size18 - Size20 - Size22 - Size24 - Size26 - Size28 - Size36 - Size48 - Size72 */
    public var fontSize: String?
    /** The height of the tab in pixels. */
    public var height: String?
    /** When set to **true**, the tab is included in e-mails related to the envelope on which it exists. This applies to only specific tabs. */
    public var includedInEmail: String?
    /** The original value of the tab. */
    public var initialValue: String?
    /** When set to **true**, the information in the tab is italic. */
    public var italic: String?
    /**  */
    public var items: [String]?
    /** The UTC date and time that the comment was last updated.  **Note**: This can only be done by the creator. */
    public var lastModified: String?
    /** The User Name of the DocuSign user who last modified this object. */
    public var lastModifiedByDisplayName: String?
    /** The userId of the DocuSign user who last modified this object. */
    public var lastModifiedByUserId: String?
    /** When set to **true**, the signer cannot change the data of the custom tab. */
    public var locked: String?
    /**  */
    public var maximumLength: String?
    public var mergeField: MergeField?
    /**  */
    public var name: String?
    /** If the custom tab is for a payment request, this is the external code for the item associated with the charge. For example, this might be your product id.  Example: `SHAK1`  Maximum Length: 100 characters. */
    public var paymentItemCode: String?
    /** If the custom tab is for a payment request, this is the description of the item associated with the charge.  Example: `The Danish play by Shakespeare`  Maximum Length: 100 characters. */
    public var paymentItemDescription: String?
    /** If the custom tab is for a payment request, this is the name of the item associated with the charge.  Maximum Length: 100 characters.  Example: `Hamlet` */
    public var paymentItemName: String?
    /** When set to **true** and shared is true, information must be entered in this field to complete the envelope.  */
    public var requireAll: String?
    /** When set to **true**, the signer is required to fill out this tab. */
    public var required: String?
    /** Optional element for field markup. When set to **true**, the signer is required to initial when they modify a shared field. */
    public var requireInitialOnSharedChange: String?
    /** Sets the size of the tab. This field accepts values from `0.5` to `1.0`, where `1.0` represents full size and `0.5` is 50% of full size. */
    public var scaleValue: String?
    /** When set to **true**, the radio button is selected. */
    public var selected: String?
    /** When **true**, the tab is shared. */
    public var shared: String?
    /** The type of stamp. Valid values are:  - `signature`: A signature image. This is the default value. - `stamp`: A stamp image. - null */
    public var stampType: String?
    public var stampTypeMetadata: PropertyMetadata?
    /** The label associated with the tab. This value may be an empty string. If no value is provided, the tab type is used as the value.  Maximum Length: 500 characters.  */
    public var tabLabel: String?
    /**  */
    public var type: String?
    /** When set to **true**, the information in the tab is underlined. */
    public var underline: String?
    /** The message displayed if the custom tab fails input validation (either custom of embedded). */
    public var validationMessage: String?
    /** A regular expression used to validate input for the tab. */
    public var validationPattern: String?
    /** The width of the tab in pixels. */
    public var width: String?

    public init(anchor: String? = nil, anchorCaseSensitive: String? = nil, anchorHorizontalAlignment: String? = nil, anchorIgnoreIfNotPresent: String? = nil, anchorMatchWholeWord: String? = nil, anchorUnits: String? = nil, anchorXOffset: String? = nil, anchorYOffset: String? = nil, bold: String? = nil, collaborative: String? = nil, concealValueOnDocument: String? = nil, createdByDisplayName: String? = nil, createdByUserId: String? = nil, customTabId: String? = nil, disableAutoSize: String? = nil, editable: String? = nil, font: String? = nil, fontColor: String? = nil, fontSize: String? = nil, height: String? = nil, includedInEmail: String? = nil, initialValue: String? = nil, italic: String? = nil, items: [String]? = nil, lastModified: String? = nil, lastModifiedByDisplayName: String? = nil, lastModifiedByUserId: String? = nil, locked: String? = nil, maximumLength: String? = nil, mergeField: MergeField? = nil, name: String? = nil, paymentItemCode: String? = nil, paymentItemDescription: String? = nil, paymentItemName: String? = nil, requireAll: String? = nil, required: String? = nil, requireInitialOnSharedChange: String? = nil, scaleValue: String? = nil, selected: String? = nil, shared: String? = nil, stampType: String? = nil, stampTypeMetadata: PropertyMetadata? = nil, tabLabel: String? = nil, type: String? = nil, underline: String? = nil, validationMessage: String? = nil, validationPattern: String? = nil, width: String? = nil) {
        self.anchor = anchor
        self.anchorCaseSensitive = anchorCaseSensitive
        self.anchorHorizontalAlignment = anchorHorizontalAlignment
        self.anchorIgnoreIfNotPresent = anchorIgnoreIfNotPresent
        self.anchorMatchWholeWord = anchorMatchWholeWord
        self.anchorUnits = anchorUnits
        self.anchorXOffset = anchorXOffset
        self.anchorYOffset = anchorYOffset
        self.bold = bold
        self.collaborative = collaborative
        self.concealValueOnDocument = concealValueOnDocument
        self.createdByDisplayName = createdByDisplayName
        self.createdByUserId = createdByUserId
        self.customTabId = customTabId
        self.disableAutoSize = disableAutoSize
        self.editable = editable
        self.font = font
        self.fontColor = fontColor
        self.fontSize = fontSize
        self.height = height
        self.includedInEmail = includedInEmail
        self.initialValue = initialValue
        self.italic = italic
        self.items = items
        self.lastModified = lastModified
        self.lastModifiedByDisplayName = lastModifiedByDisplayName
        self.lastModifiedByUserId = lastModifiedByUserId
        self.locked = locked
        self.maximumLength = maximumLength
        self.mergeField = mergeField
        self.name = name
        self.paymentItemCode = paymentItemCode
        self.paymentItemDescription = paymentItemDescription
        self.paymentItemName = paymentItemName
        self.requireAll = requireAll
        self.required = required
        self.requireInitialOnSharedChange = requireInitialOnSharedChange
        self.scaleValue = scaleValue
        self.selected = selected
        self.shared = shared
        self.stampType = stampType
        self.stampTypeMetadata = stampTypeMetadata
        self.tabLabel = tabLabel
        self.type = type
        self.underline = underline
        self.validationMessage = validationMessage
        self.validationPattern = validationPattern
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case anchor
        case anchorCaseSensitive
        case anchorHorizontalAlignment
        case anchorIgnoreIfNotPresent
        case anchorMatchWholeWord
        case anchorUnits
        case anchorXOffset
        case anchorYOffset
        case bold
        case collaborative
        case concealValueOnDocument
        case createdByDisplayName
        case createdByUserId
        case customTabId
        case disableAutoSize
        case editable
        case font
        case fontColor
        case fontSize
        case height
        case includedInEmail
        case initialValue
        case italic
        case items
        case lastModified
        case lastModifiedByDisplayName
        case lastModifiedByUserId
        case locked
        case maximumLength
        case mergeField
        case name
        case paymentItemCode
        case paymentItemDescription
        case paymentItemName
        case requireAll
        case required
        case requireInitialOnSharedChange
        case scaleValue
        case selected
        case shared
        case stampType
        case stampTypeMetadata
        case tabLabel
        case type
        case underline
        case validationMessage
        case validationPattern
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(anchor, forKey: .anchor)
        try container.encodeIfPresent(anchorCaseSensitive, forKey: .anchorCaseSensitive)
        try container.encodeIfPresent(anchorHorizontalAlignment, forKey: .anchorHorizontalAlignment)
        try container.encodeIfPresent(anchorIgnoreIfNotPresent, forKey: .anchorIgnoreIfNotPresent)
        try container.encodeIfPresent(anchorMatchWholeWord, forKey: .anchorMatchWholeWord)
        try container.encodeIfPresent(anchorUnits, forKey: .anchorUnits)
        try container.encodeIfPresent(anchorXOffset, forKey: .anchorXOffset)
        try container.encodeIfPresent(anchorYOffset, forKey: .anchorYOffset)
        try container.encodeIfPresent(bold, forKey: .bold)
        try container.encodeIfPresent(collaborative, forKey: .collaborative)
        try container.encodeIfPresent(concealValueOnDocument, forKey: .concealValueOnDocument)
        try container.encodeIfPresent(createdByDisplayName, forKey: .createdByDisplayName)
        try container.encodeIfPresent(createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(customTabId, forKey: .customTabId)
        try container.encodeIfPresent(disableAutoSize, forKey: .disableAutoSize)
        try container.encodeIfPresent(editable, forKey: .editable)
        try container.encodeIfPresent(font, forKey: .font)
        try container.encodeIfPresent(fontColor, forKey: .fontColor)
        try container.encodeIfPresent(fontSize, forKey: .fontSize)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(includedInEmail, forKey: .includedInEmail)
        try container.encodeIfPresent(initialValue, forKey: .initialValue)
        try container.encodeIfPresent(italic, forKey: .italic)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(lastModifiedByDisplayName, forKey: .lastModifiedByDisplayName)
        try container.encodeIfPresent(lastModifiedByUserId, forKey: .lastModifiedByUserId)
        try container.encodeIfPresent(locked, forKey: .locked)
        try container.encodeIfPresent(maximumLength, forKey: .maximumLength)
        try container.encodeIfPresent(mergeField, forKey: .mergeField)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(paymentItemCode, forKey: .paymentItemCode)
        try container.encodeIfPresent(paymentItemDescription, forKey: .paymentItemDescription)
        try container.encodeIfPresent(paymentItemName, forKey: .paymentItemName)
        try container.encodeIfPresent(requireAll, forKey: .requireAll)
        try container.encodeIfPresent(required, forKey: .required)
        try container.encodeIfPresent(requireInitialOnSharedChange, forKey: .requireInitialOnSharedChange)
        try container.encodeIfPresent(scaleValue, forKey: .scaleValue)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(shared, forKey: .shared)
        try container.encodeIfPresent(stampType, forKey: .stampType)
        try container.encodeIfPresent(stampTypeMetadata, forKey: .stampTypeMetadata)
        try container.encodeIfPresent(tabLabel, forKey: .tabLabel)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(underline, forKey: .underline)
        try container.encodeIfPresent(validationMessage, forKey: .validationMessage)
        try container.encodeIfPresent(validationPattern, forKey: .validationPattern)
        try container.encodeIfPresent(width, forKey: .width)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        anchor = try container.decodeIfPresent(String.self, forKey: .anchor)
        anchorCaseSensitive = try container.decodeIfPresent(String.self, forKey: .anchorCaseSensitive)
        anchorHorizontalAlignment = try container.decodeIfPresent(String.self, forKey: .anchorHorizontalAlignment)
        anchorIgnoreIfNotPresent = try container.decodeIfPresent(String.self, forKey: .anchorIgnoreIfNotPresent)
        anchorMatchWholeWord = try container.decodeIfPresent(String.self, forKey: .anchorMatchWholeWord)
        anchorUnits = try container.decodeIfPresent(String.self, forKey: .anchorUnits)
        anchorXOffset = try container.decodeIfPresent(String.self, forKey: .anchorXOffset)
        anchorYOffset = try container.decodeIfPresent(String.self, forKey: .anchorYOffset)
        bold = try container.decodeIfPresent(String.self, forKey: .bold)
        collaborative = try container.decodeIfPresent(String.self, forKey: .collaborative)
        concealValueOnDocument = try container.decodeIfPresent(String.self, forKey: .concealValueOnDocument)
        createdByDisplayName = try container.decodeIfPresent(String.self, forKey: .createdByDisplayName)
        createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        customTabId = try container.decodeIfPresent(String.self, forKey: .customTabId)
        disableAutoSize = try container.decodeIfPresent(String.self, forKey: .disableAutoSize)
        editable = try container.decodeIfPresent(String.self, forKey: .editable)
        font = try container.decodeIfPresent(String.self, forKey: .font)
        fontColor = try container.decodeIfPresent(String.self, forKey: .fontColor)
        fontSize = try container.decodeIfPresent(String.self, forKey: .fontSize)
        height = try container.decodeIfPresent(String.self, forKey: .height)
        includedInEmail = try container.decodeIfPresent(String.self, forKey: .includedInEmail)
        initialValue = try container.decodeIfPresent(String.self, forKey: .initialValue)
        italic = try container.decodeIfPresent(String.self, forKey: .italic)
        items = try container.decodeIfPresent([String].self, forKey: .items)
        lastModified = try container.decodeIfPresent(String.self, forKey: .lastModified)
        lastModifiedByDisplayName = try container.decodeIfPresent(String.self, forKey: .lastModifiedByDisplayName)
        lastModifiedByUserId = try container.decodeIfPresent(String.self, forKey: .lastModifiedByUserId)
        locked = try container.decodeIfPresent(String.self, forKey: .locked)
        maximumLength = try container.decodeIfPresent(String.self, forKey: .maximumLength)
        mergeField = try container.decodeIfPresent(MergeField.self, forKey: .mergeField)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        paymentItemCode = try container.decodeIfPresent(String.self, forKey: .paymentItemCode)
        paymentItemDescription = try container.decodeIfPresent(String.self, forKey: .paymentItemDescription)
        paymentItemName = try container.decodeIfPresent(String.self, forKey: .paymentItemName)
        requireAll = try container.decodeIfPresent(String.self, forKey: .requireAll)
        required = try container.decodeIfPresent(String.self, forKey: .required)
        requireInitialOnSharedChange = try container.decodeIfPresent(String.self, forKey: .requireInitialOnSharedChange)
        scaleValue = try container.decodeIfPresent(String.self, forKey: .scaleValue)
        selected = try container.decodeIfPresent(String.self, forKey: .selected)
        shared = try container.decodeIfPresent(String.self, forKey: .shared)
        stampType = try container.decodeIfPresent(String.self, forKey: .stampType)
        stampTypeMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .stampTypeMetadata)
        tabLabel = try container.decodeIfPresent(String.self, forKey: .tabLabel)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        underline = try container.decodeIfPresent(String.self, forKey: .underline)
        validationMessage = try container.decodeIfPresent(String.self, forKey: .validationMessage)
        validationPattern = try container.decodeIfPresent(String.self, forKey: .validationPattern)
        width = try container.decodeIfPresent(String.self, forKey: .width)
    }
}

extension TabMetadata: Hashable {
    public static func == (lhs: TabMetadata, rhs: TabMetadata) -> Bool {
        lhs.anchor == rhs.anchor &&
            lhs.anchorCaseSensitive == rhs.anchorCaseSensitive &&
            lhs.anchorHorizontalAlignment == rhs.anchorHorizontalAlignment &&
            lhs.anchorIgnoreIfNotPresent == rhs.anchorIgnoreIfNotPresent &&
            lhs.anchorMatchWholeWord == rhs.anchorMatchWholeWord &&
            lhs.anchorUnits == rhs.anchorUnits &&
            lhs.anchorXOffset == rhs.anchorXOffset &&
            lhs.anchorYOffset == rhs.anchorYOffset &&
            lhs.bold == rhs.bold &&
            lhs.collaborative == rhs.collaborative &&
            lhs.concealValueOnDocument == rhs.concealValueOnDocument &&
            lhs.createdByDisplayName == rhs.createdByDisplayName &&
            lhs.createdByUserId == rhs.createdByUserId &&
            lhs.customTabId == rhs.customTabId &&
            lhs.disableAutoSize == rhs.disableAutoSize &&
            lhs.editable == rhs.editable &&
            lhs.font == rhs.font &&
            lhs.fontColor == rhs.fontColor &&
            lhs.fontSize == rhs.fontSize &&
            lhs.height == rhs.height &&
            lhs.includedInEmail == rhs.includedInEmail &&
            lhs.initialValue == rhs.initialValue &&
            lhs.italic == rhs.italic &&
            lhs.items == rhs.items &&
            lhs.lastModified == rhs.lastModified &&
            lhs.lastModifiedByDisplayName == rhs.lastModifiedByDisplayName &&
            lhs.lastModifiedByUserId == rhs.lastModifiedByUserId &&
            lhs.locked == rhs.locked &&
            lhs.maximumLength == rhs.maximumLength &&
            lhs.mergeField == rhs.mergeField &&
            lhs.name == rhs.name &&
            lhs.paymentItemCode == rhs.paymentItemCode &&
            lhs.paymentItemDescription == rhs.paymentItemDescription &&
            lhs.paymentItemName == rhs.paymentItemName &&
            lhs.requireAll == rhs.requireAll &&
            lhs.required == rhs.required &&
            lhs.requireInitialOnSharedChange == rhs.requireInitialOnSharedChange &&
            lhs.scaleValue == rhs.scaleValue &&
            lhs.selected == rhs.selected &&
            lhs.shared == rhs.shared &&
            lhs.stampType == rhs.stampType &&
            lhs.stampTypeMetadata == rhs.stampTypeMetadata &&
            lhs.tabLabel == rhs.tabLabel &&
            lhs.type == rhs.type &&
            lhs.underline == rhs.underline &&
            lhs.validationMessage == rhs.validationMessage &&
            lhs.validationPattern == rhs.validationPattern &&
            lhs.width == rhs.width
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(anchor?.hashValue)
        hasher.combine(anchorCaseSensitive?.hashValue)
        hasher.combine(anchorHorizontalAlignment?.hashValue)
        hasher.combine(anchorIgnoreIfNotPresent?.hashValue)
        hasher.combine(anchorMatchWholeWord?.hashValue)
        hasher.combine(anchorUnits?.hashValue)
        hasher.combine(anchorXOffset?.hashValue)
        hasher.combine(anchorYOffset?.hashValue)
        hasher.combine(bold?.hashValue)
        hasher.combine(collaborative?.hashValue)
        hasher.combine(concealValueOnDocument?.hashValue)
        hasher.combine(createdByDisplayName?.hashValue)
        hasher.combine(createdByUserId?.hashValue)
        hasher.combine(customTabId?.hashValue)
        hasher.combine(disableAutoSize?.hashValue)
        hasher.combine(editable?.hashValue)
        hasher.combine(font?.hashValue)
        hasher.combine(fontColor?.hashValue)
        hasher.combine(fontSize?.hashValue)
        hasher.combine(height?.hashValue)
        hasher.combine(includedInEmail?.hashValue)
        hasher.combine(initialValue?.hashValue)
        hasher.combine(italic?.hashValue)
        hasher.combine(items?.hashValue)
        hasher.combine(lastModified?.hashValue)
        hasher.combine(lastModifiedByDisplayName?.hashValue)
        hasher.combine(lastModifiedByUserId?.hashValue)
        hasher.combine(locked?.hashValue)
        hasher.combine(maximumLength?.hashValue)
        hasher.combine(mergeField?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(paymentItemCode?.hashValue)
        hasher.combine(paymentItemDescription?.hashValue)
        hasher.combine(paymentItemName?.hashValue)
        hasher.combine(requireAll?.hashValue)
        hasher.combine(required?.hashValue)
        hasher.combine(requireInitialOnSharedChange?.hashValue)
        hasher.combine(scaleValue?.hashValue)
        hasher.combine(selected?.hashValue)
        hasher.combine(shared?.hashValue)
        hasher.combine(stampType?.hashValue)
        hasher.combine(stampTypeMetadata?.hashValue)
        hasher.combine(tabLabel?.hashValue)
        hasher.combine(type?.hashValue)
        hasher.combine(underline?.hashValue)
        hasher.combine(validationMessage?.hashValue)
        hasher.combine(validationPattern?.hashValue)
        hasher.combine(width?.hashValue)
    }
}
