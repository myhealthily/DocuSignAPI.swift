//
// TabsBlob.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class TabsBlob: Content {
    /** When set to **true**, account users can set a tab order for the signing process.  **Note**: Only Admin users can change this setting. */
    public var allowTabOrder: String?
    public var allowTabOrderMetadata: SettingsMetadata?
    /** When **true**, approve and decline tabs are enabled. */
    public var approveDeclineTabsEnabled: String?
    public var approveDeclineTabsMetadata: SettingsMetadata?
    /** When **true**, [calculated fields](https://support.docusign.com/en/guides/ndse-user-guide-calculated-fields) are enabled for tabs. */
    public var calculatedFieldsEnabled: String?
    public var calculatedFieldsMetadata: SettingsMetadata?
    /** When **true**, checkbox tabs are enabled. */
    public var checkboxTabsEnabled: String?
    public var checkBoxTabsMetadata: SettingsMetadata?
    /** When **true**, regular expressions are enabled for tabs that contain data fields. */
    public var dataFieldRegexEnabled: String?
    public var dataFieldRegexMetadata: SettingsMetadata?
    /** When **true**, setting character limits for input fields is enabled. */
    public var dataFieldSizeEnabled: String?
    public var dataFieldSizeMetadata: SettingsMetadata?
    /**  */
    public var drawTabsEnabled: String?
    public var drawTabsMetadata: SettingsMetadata?
    /** Reserved for DocuSign. */
    public var firstLastEmailTabsEnabled: String?
    public var firstLastEmailTabsMetadata: SettingsMetadata?
    /** When **true**, list tabs are enabled. */
    public var listTabsEnabled: String?
    public var listTabsMetadata: SettingsMetadata?
    /** When **true**, note tabs are enabled. */
    public var noteTabsEnabled: String?
    public var noteTabsMetadata: SettingsMetadata?
    /** When **true**, radio button tabs are enabled. */
    public var radioTabsEnabled: String?
    public var radioTabsMetadata: SettingsMetadata?
    /** When **true**, saving custom tabs is enabled. */
    public var savingCustomTabsEnabled: String?
    public var savingCustomTabsMetadata: SettingsMetadata?
    /** Reserved for DocuSign. */
    public var senderToChangeTabAssignmentsEnabled: String?
    public var senderToChangeTabAssignmentsMetadata: SettingsMetadata?
    /** When **true**, shared custom tabs are enabled. */
    public var sharedCustomTabsEnabled: String?
    public var sharedCustomTabsMetadata: SettingsMetadata?
    /** When set to **true**, [data labels](https://support.docusign.com/en/videos/Data-Labels) are enabled.  **Note**: Only Admin users can change this setting.  */
    public var tabDataLabelEnabled: String?
    public var tabDataLabelMetadata: SettingsMetadata?
    /** Reserved for DocuSign. */
    public var tabLocationEnabled: String?
    public var tabLocationMetadata: SettingsMetadata?
    /** When set to **true**, tab locking is enabled.  **Note**: Only Admin users can change this setting.  */
    public var tabLockingEnabled: String?
    public var tabLockingMetadata: SettingsMetadata?
    /** Reserved for DocuSign. */
    public var tabScaleEnabled: String?
    public var tabScaleMetadata: SettingsMetadata?
    /** When set to **true**, text formatting (such as font type, font size, font color, bold, italic, and underline) is enabled for tabs that support formatting.  **Note**: Only Admin users can change this setting.  */
    public var tabTextFormattingEnabled: String?
    public var tabTextFormattingMetadata: SettingsMetadata?
    /** When **true**, text tabs are enabled. */
    public var textTabsEnabled: String?
    public var textTabsMetadata: SettingsMetadata?

    public init(allowTabOrder: String? = nil, allowTabOrderMetadata: SettingsMetadata? = nil, approveDeclineTabsEnabled: String? = nil, approveDeclineTabsMetadata: SettingsMetadata? = nil, calculatedFieldsEnabled: String? = nil, calculatedFieldsMetadata: SettingsMetadata? = nil, checkboxTabsEnabled: String? = nil, checkBoxTabsMetadata: SettingsMetadata? = nil, dataFieldRegexEnabled: String? = nil, dataFieldRegexMetadata: SettingsMetadata? = nil, dataFieldSizeEnabled: String? = nil, dataFieldSizeMetadata: SettingsMetadata? = nil, drawTabsEnabled: String? = nil, drawTabsMetadata: SettingsMetadata? = nil, firstLastEmailTabsEnabled: String? = nil, firstLastEmailTabsMetadata: SettingsMetadata? = nil, listTabsEnabled: String? = nil, listTabsMetadata: SettingsMetadata? = nil, noteTabsEnabled: String? = nil, noteTabsMetadata: SettingsMetadata? = nil, radioTabsEnabled: String? = nil, radioTabsMetadata: SettingsMetadata? = nil, savingCustomTabsEnabled: String? = nil, savingCustomTabsMetadata: SettingsMetadata? = nil, senderToChangeTabAssignmentsEnabled: String? = nil, senderToChangeTabAssignmentsMetadata: SettingsMetadata? = nil, sharedCustomTabsEnabled: String? = nil, sharedCustomTabsMetadata: SettingsMetadata? = nil, tabDataLabelEnabled: String? = nil, tabDataLabelMetadata: SettingsMetadata? = nil, tabLocationEnabled: String? = nil, tabLocationMetadata: SettingsMetadata? = nil, tabLockingEnabled: String? = nil, tabLockingMetadata: SettingsMetadata? = nil, tabScaleEnabled: String? = nil, tabScaleMetadata: SettingsMetadata? = nil, tabTextFormattingEnabled: String? = nil, tabTextFormattingMetadata: SettingsMetadata? = nil, textTabsEnabled: String? = nil, textTabsMetadata: SettingsMetadata? = nil) {
        self.allowTabOrder = allowTabOrder
        self.allowTabOrderMetadata = allowTabOrderMetadata
        self.approveDeclineTabsEnabled = approveDeclineTabsEnabled
        self.approveDeclineTabsMetadata = approveDeclineTabsMetadata
        self.calculatedFieldsEnabled = calculatedFieldsEnabled
        self.calculatedFieldsMetadata = calculatedFieldsMetadata
        self.checkboxTabsEnabled = checkboxTabsEnabled
        self.checkBoxTabsMetadata = checkBoxTabsMetadata
        self.dataFieldRegexEnabled = dataFieldRegexEnabled
        self.dataFieldRegexMetadata = dataFieldRegexMetadata
        self.dataFieldSizeEnabled = dataFieldSizeEnabled
        self.dataFieldSizeMetadata = dataFieldSizeMetadata
        self.drawTabsEnabled = drawTabsEnabled
        self.drawTabsMetadata = drawTabsMetadata
        self.firstLastEmailTabsEnabled = firstLastEmailTabsEnabled
        self.firstLastEmailTabsMetadata = firstLastEmailTabsMetadata
        self.listTabsEnabled = listTabsEnabled
        self.listTabsMetadata = listTabsMetadata
        self.noteTabsEnabled = noteTabsEnabled
        self.noteTabsMetadata = noteTabsMetadata
        self.radioTabsEnabled = radioTabsEnabled
        self.radioTabsMetadata = radioTabsMetadata
        self.savingCustomTabsEnabled = savingCustomTabsEnabled
        self.savingCustomTabsMetadata = savingCustomTabsMetadata
        self.senderToChangeTabAssignmentsEnabled = senderToChangeTabAssignmentsEnabled
        self.senderToChangeTabAssignmentsMetadata = senderToChangeTabAssignmentsMetadata
        self.sharedCustomTabsEnabled = sharedCustomTabsEnabled
        self.sharedCustomTabsMetadata = sharedCustomTabsMetadata
        self.tabDataLabelEnabled = tabDataLabelEnabled
        self.tabDataLabelMetadata = tabDataLabelMetadata
        self.tabLocationEnabled = tabLocationEnabled
        self.tabLocationMetadata = tabLocationMetadata
        self.tabLockingEnabled = tabLockingEnabled
        self.tabLockingMetadata = tabLockingMetadata
        self.tabScaleEnabled = tabScaleEnabled
        self.tabScaleMetadata = tabScaleMetadata
        self.tabTextFormattingEnabled = tabTextFormattingEnabled
        self.tabTextFormattingMetadata = tabTextFormattingMetadata
        self.textTabsEnabled = textTabsEnabled
        self.textTabsMetadata = textTabsMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowTabOrder
        case allowTabOrderMetadata
        case approveDeclineTabsEnabled
        case approveDeclineTabsMetadata
        case calculatedFieldsEnabled
        case calculatedFieldsMetadata
        case checkboxTabsEnabled
        case checkBoxTabsMetadata
        case dataFieldRegexEnabled
        case dataFieldRegexMetadata
        case dataFieldSizeEnabled
        case dataFieldSizeMetadata
        case drawTabsEnabled
        case drawTabsMetadata
        case firstLastEmailTabsEnabled
        case firstLastEmailTabsMetadata
        case listTabsEnabled
        case listTabsMetadata
        case noteTabsEnabled
        case noteTabsMetadata
        case radioTabsEnabled
        case radioTabsMetadata
        case savingCustomTabsEnabled
        case savingCustomTabsMetadata
        case senderToChangeTabAssignmentsEnabled
        case senderToChangeTabAssignmentsMetadata
        case sharedCustomTabsEnabled
        case sharedCustomTabsMetadata
        case tabDataLabelEnabled
        case tabDataLabelMetadata
        case tabLocationEnabled
        case tabLocationMetadata
        case tabLockingEnabled
        case tabLockingMetadata
        case tabScaleEnabled
        case tabScaleMetadata
        case tabTextFormattingEnabled
        case tabTextFormattingMetadata
        case textTabsEnabled
        case textTabsMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(allowTabOrder, forKey: .allowTabOrder)
        try container.encodeIfPresent(allowTabOrderMetadata, forKey: .allowTabOrderMetadata)
        try container.encodeIfPresent(approveDeclineTabsEnabled, forKey: .approveDeclineTabsEnabled)
        try container.encodeIfPresent(approveDeclineTabsMetadata, forKey: .approveDeclineTabsMetadata)
        try container.encodeIfPresent(calculatedFieldsEnabled, forKey: .calculatedFieldsEnabled)
        try container.encodeIfPresent(calculatedFieldsMetadata, forKey: .calculatedFieldsMetadata)
        try container.encodeIfPresent(checkboxTabsEnabled, forKey: .checkboxTabsEnabled)
        try container.encodeIfPresent(checkBoxTabsMetadata, forKey: .checkBoxTabsMetadata)
        try container.encodeIfPresent(dataFieldRegexEnabled, forKey: .dataFieldRegexEnabled)
        try container.encodeIfPresent(dataFieldRegexMetadata, forKey: .dataFieldRegexMetadata)
        try container.encodeIfPresent(dataFieldSizeEnabled, forKey: .dataFieldSizeEnabled)
        try container.encodeIfPresent(dataFieldSizeMetadata, forKey: .dataFieldSizeMetadata)
        try container.encodeIfPresent(drawTabsEnabled, forKey: .drawTabsEnabled)
        try container.encodeIfPresent(drawTabsMetadata, forKey: .drawTabsMetadata)
        try container.encodeIfPresent(firstLastEmailTabsEnabled, forKey: .firstLastEmailTabsEnabled)
        try container.encodeIfPresent(firstLastEmailTabsMetadata, forKey: .firstLastEmailTabsMetadata)
        try container.encodeIfPresent(listTabsEnabled, forKey: .listTabsEnabled)
        try container.encodeIfPresent(listTabsMetadata, forKey: .listTabsMetadata)
        try container.encodeIfPresent(noteTabsEnabled, forKey: .noteTabsEnabled)
        try container.encodeIfPresent(noteTabsMetadata, forKey: .noteTabsMetadata)
        try container.encodeIfPresent(radioTabsEnabled, forKey: .radioTabsEnabled)
        try container.encodeIfPresent(radioTabsMetadata, forKey: .radioTabsMetadata)
        try container.encodeIfPresent(savingCustomTabsEnabled, forKey: .savingCustomTabsEnabled)
        try container.encodeIfPresent(savingCustomTabsMetadata, forKey: .savingCustomTabsMetadata)
        try container.encodeIfPresent(senderToChangeTabAssignmentsEnabled, forKey: .senderToChangeTabAssignmentsEnabled)
        try container.encodeIfPresent(senderToChangeTabAssignmentsMetadata, forKey: .senderToChangeTabAssignmentsMetadata)
        try container.encodeIfPresent(sharedCustomTabsEnabled, forKey: .sharedCustomTabsEnabled)
        try container.encodeIfPresent(sharedCustomTabsMetadata, forKey: .sharedCustomTabsMetadata)
        try container.encodeIfPresent(tabDataLabelEnabled, forKey: .tabDataLabelEnabled)
        try container.encodeIfPresent(tabDataLabelMetadata, forKey: .tabDataLabelMetadata)
        try container.encodeIfPresent(tabLocationEnabled, forKey: .tabLocationEnabled)
        try container.encodeIfPresent(tabLocationMetadata, forKey: .tabLocationMetadata)
        try container.encodeIfPresent(tabLockingEnabled, forKey: .tabLockingEnabled)
        try container.encodeIfPresent(tabLockingMetadata, forKey: .tabLockingMetadata)
        try container.encodeIfPresent(tabScaleEnabled, forKey: .tabScaleEnabled)
        try container.encodeIfPresent(tabScaleMetadata, forKey: .tabScaleMetadata)
        try container.encodeIfPresent(tabTextFormattingEnabled, forKey: .tabTextFormattingEnabled)
        try container.encodeIfPresent(tabTextFormattingMetadata, forKey: .tabTextFormattingMetadata)
        try container.encodeIfPresent(textTabsEnabled, forKey: .textTabsEnabled)
        try container.encodeIfPresent(textTabsMetadata, forKey: .textTabsMetadata)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        allowTabOrder = try container.decodeIfPresent(String.self, forKey: .allowTabOrder)
        allowTabOrderMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .allowTabOrderMetadata)
        approveDeclineTabsEnabled = try container.decodeIfPresent(String.self, forKey: .approveDeclineTabsEnabled)
        approveDeclineTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .approveDeclineTabsMetadata)
        calculatedFieldsEnabled = try container.decodeIfPresent(String.self, forKey: .calculatedFieldsEnabled)
        calculatedFieldsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .calculatedFieldsMetadata)
        checkboxTabsEnabled = try container.decodeIfPresent(String.self, forKey: .checkboxTabsEnabled)
        checkBoxTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .checkBoxTabsMetadata)
        dataFieldRegexEnabled = try container.decodeIfPresent(String.self, forKey: .dataFieldRegexEnabled)
        dataFieldRegexMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .dataFieldRegexMetadata)
        dataFieldSizeEnabled = try container.decodeIfPresent(String.self, forKey: .dataFieldSizeEnabled)
        dataFieldSizeMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .dataFieldSizeMetadata)
        drawTabsEnabled = try container.decodeIfPresent(String.self, forKey: .drawTabsEnabled)
        drawTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .drawTabsMetadata)
        firstLastEmailTabsEnabled = try container.decodeIfPresent(String.self, forKey: .firstLastEmailTabsEnabled)
        firstLastEmailTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .firstLastEmailTabsMetadata)
        listTabsEnabled = try container.decodeIfPresent(String.self, forKey: .listTabsEnabled)
        listTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .listTabsMetadata)
        noteTabsEnabled = try container.decodeIfPresent(String.self, forKey: .noteTabsEnabled)
        noteTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .noteTabsMetadata)
        radioTabsEnabled = try container.decodeIfPresent(String.self, forKey: .radioTabsEnabled)
        radioTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .radioTabsMetadata)
        savingCustomTabsEnabled = try container.decodeIfPresent(String.self, forKey: .savingCustomTabsEnabled)
        savingCustomTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .savingCustomTabsMetadata)
        senderToChangeTabAssignmentsEnabled = try container.decodeIfPresent(String.self, forKey: .senderToChangeTabAssignmentsEnabled)
        senderToChangeTabAssignmentsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .senderToChangeTabAssignmentsMetadata)
        sharedCustomTabsEnabled = try container.decodeIfPresent(String.self, forKey: .sharedCustomTabsEnabled)
        sharedCustomTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .sharedCustomTabsMetadata)
        tabDataLabelEnabled = try container.decodeIfPresent(String.self, forKey: .tabDataLabelEnabled)
        tabDataLabelMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .tabDataLabelMetadata)
        tabLocationEnabled = try container.decodeIfPresent(String.self, forKey: .tabLocationEnabled)
        tabLocationMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .tabLocationMetadata)
        tabLockingEnabled = try container.decodeIfPresent(String.self, forKey: .tabLockingEnabled)
        tabLockingMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .tabLockingMetadata)
        tabScaleEnabled = try container.decodeIfPresent(String.self, forKey: .tabScaleEnabled)
        tabScaleMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .tabScaleMetadata)
        tabTextFormattingEnabled = try container.decodeIfPresent(String.self, forKey: .tabTextFormattingEnabled)
        tabTextFormattingMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .tabTextFormattingMetadata)
        textTabsEnabled = try container.decodeIfPresent(String.self, forKey: .textTabsEnabled)
        textTabsMetadata = try container.decodeIfPresent(SettingsMetadata.self, forKey: .textTabsMetadata)
    }
}

extension TabsBlob: Hashable {
    public static func == (lhs: TabsBlob, rhs: TabsBlob) -> Bool {
        lhs.allowTabOrder == rhs.allowTabOrder &&
            lhs.allowTabOrderMetadata == rhs.allowTabOrderMetadata &&
            lhs.approveDeclineTabsEnabled == rhs.approveDeclineTabsEnabled &&
            lhs.approveDeclineTabsMetadata == rhs.approveDeclineTabsMetadata &&
            lhs.calculatedFieldsEnabled == rhs.calculatedFieldsEnabled &&
            lhs.calculatedFieldsMetadata == rhs.calculatedFieldsMetadata &&
            lhs.checkboxTabsEnabled == rhs.checkboxTabsEnabled &&
            lhs.checkBoxTabsMetadata == rhs.checkBoxTabsMetadata &&
            lhs.dataFieldRegexEnabled == rhs.dataFieldRegexEnabled &&
            lhs.dataFieldRegexMetadata == rhs.dataFieldRegexMetadata &&
            lhs.dataFieldSizeEnabled == rhs.dataFieldSizeEnabled &&
            lhs.dataFieldSizeMetadata == rhs.dataFieldSizeMetadata &&
            lhs.drawTabsEnabled == rhs.drawTabsEnabled &&
            lhs.drawTabsMetadata == rhs.drawTabsMetadata &&
            lhs.firstLastEmailTabsEnabled == rhs.firstLastEmailTabsEnabled &&
            lhs.firstLastEmailTabsMetadata == rhs.firstLastEmailTabsMetadata &&
            lhs.listTabsEnabled == rhs.listTabsEnabled &&
            lhs.listTabsMetadata == rhs.listTabsMetadata &&
            lhs.noteTabsEnabled == rhs.noteTabsEnabled &&
            lhs.noteTabsMetadata == rhs.noteTabsMetadata &&
            lhs.radioTabsEnabled == rhs.radioTabsEnabled &&
            lhs.radioTabsMetadata == rhs.radioTabsMetadata &&
            lhs.savingCustomTabsEnabled == rhs.savingCustomTabsEnabled &&
            lhs.savingCustomTabsMetadata == rhs.savingCustomTabsMetadata &&
            lhs.senderToChangeTabAssignmentsEnabled == rhs.senderToChangeTabAssignmentsEnabled &&
            lhs.senderToChangeTabAssignmentsMetadata == rhs.senderToChangeTabAssignmentsMetadata &&
            lhs.sharedCustomTabsEnabled == rhs.sharedCustomTabsEnabled &&
            lhs.sharedCustomTabsMetadata == rhs.sharedCustomTabsMetadata &&
            lhs.tabDataLabelEnabled == rhs.tabDataLabelEnabled &&
            lhs.tabDataLabelMetadata == rhs.tabDataLabelMetadata &&
            lhs.tabLocationEnabled == rhs.tabLocationEnabled &&
            lhs.tabLocationMetadata == rhs.tabLocationMetadata &&
            lhs.tabLockingEnabled == rhs.tabLockingEnabled &&
            lhs.tabLockingMetadata == rhs.tabLockingMetadata &&
            lhs.tabScaleEnabled == rhs.tabScaleEnabled &&
            lhs.tabScaleMetadata == rhs.tabScaleMetadata &&
            lhs.tabTextFormattingEnabled == rhs.tabTextFormattingEnabled &&
            lhs.tabTextFormattingMetadata == rhs.tabTextFormattingMetadata &&
            lhs.textTabsEnabled == rhs.textTabsEnabled &&
            lhs.textTabsMetadata == rhs.textTabsMetadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(allowTabOrder?.hashValue)
        hasher.combine(allowTabOrderMetadata?.hashValue)
        hasher.combine(approveDeclineTabsEnabled?.hashValue)
        hasher.combine(approveDeclineTabsMetadata?.hashValue)
        hasher.combine(calculatedFieldsEnabled?.hashValue)
        hasher.combine(calculatedFieldsMetadata?.hashValue)
        hasher.combine(checkboxTabsEnabled?.hashValue)
        hasher.combine(checkBoxTabsMetadata?.hashValue)
        hasher.combine(dataFieldRegexEnabled?.hashValue)
        hasher.combine(dataFieldRegexMetadata?.hashValue)
        hasher.combine(dataFieldSizeEnabled?.hashValue)
        hasher.combine(dataFieldSizeMetadata?.hashValue)
        hasher.combine(drawTabsEnabled?.hashValue)
        hasher.combine(drawTabsMetadata?.hashValue)
        hasher.combine(firstLastEmailTabsEnabled?.hashValue)
        hasher.combine(firstLastEmailTabsMetadata?.hashValue)
        hasher.combine(listTabsEnabled?.hashValue)
        hasher.combine(listTabsMetadata?.hashValue)
        hasher.combine(noteTabsEnabled?.hashValue)
        hasher.combine(noteTabsMetadata?.hashValue)
        hasher.combine(radioTabsEnabled?.hashValue)
        hasher.combine(radioTabsMetadata?.hashValue)
        hasher.combine(savingCustomTabsEnabled?.hashValue)
        hasher.combine(savingCustomTabsMetadata?.hashValue)
        hasher.combine(senderToChangeTabAssignmentsEnabled?.hashValue)
        hasher.combine(senderToChangeTabAssignmentsMetadata?.hashValue)
        hasher.combine(sharedCustomTabsEnabled?.hashValue)
        hasher.combine(sharedCustomTabsMetadata?.hashValue)
        hasher.combine(tabDataLabelEnabled?.hashValue)
        hasher.combine(tabDataLabelMetadata?.hashValue)
        hasher.combine(tabLocationEnabled?.hashValue)
        hasher.combine(tabLocationMetadata?.hashValue)
        hasher.combine(tabLockingEnabled?.hashValue)
        hasher.combine(tabLockingMetadata?.hashValue)
        hasher.combine(tabScaleEnabled?.hashValue)
        hasher.combine(tabScaleMetadata?.hashValue)
        hasher.combine(tabTextFormattingEnabled?.hashValue)
        hasher.combine(tabTextFormattingMetadata?.hashValue)
        hasher.combine(textTabsEnabled?.hashValue)
        hasher.combine(textTabsMetadata?.hashValue)
    }
}
