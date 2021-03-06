//
// WorkflowStep.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Describes a single step in a workflow. */
public final class WorkflowStep: Content, Hashable {
    /** Indicates the action to perform.  - `pause_before`: The workflow should pause before the trigger described by `triggerOnItem` is reached. - `pause_after`: The workflow should pause after the trigger described by `triggerOnItem` is processed.  */
    public var action: String?
    /** The timestamp of when the workflow step transitioned to `completed` status. */
    public var completedDate: String?
    /** The unique ID of the item being triggered. */
    public var itemId: String?
    public var recipientRouting: RecipientRouting?
    /** The status of the step. One of:  - `inactive` - `in_progress` - `paused` - `pending` - `completed`  This is a read-only property. */
    public var status: String?
    /** The timestamp of when the workflow step transitioned to `in_progress` status. */
    public var triggeredDate: String?
    /** The type of item that triggers this workflow step. Currently, only `routing_order`, is the only supported value. */
    public var triggerOnItem: String?
    /** A unique identifier for this workflow step. This value is available from the `currentWorkflowStepId` property of the `workflow` object, */
    public var workflowStepId: String?

    public init(action: String? = nil, completedDate: String? = nil, itemId: String? = nil, recipientRouting: RecipientRouting? = nil, status: String? = nil, triggeredDate: String? = nil, triggerOnItem: String? = nil, workflowStepId: String? = nil) {
        self.action = action
        self.completedDate = completedDate
        self.itemId = itemId
        self.recipientRouting = recipientRouting
        self.status = status
        self.triggeredDate = triggeredDate
        self.triggerOnItem = triggerOnItem
        self.workflowStepId = workflowStepId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case completedDate
        case itemId
        case recipientRouting
        case status
        case triggeredDate
        case triggerOnItem
        case workflowStepId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(completedDate, forKey: .completedDate)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(recipientRouting, forKey: .recipientRouting)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(triggeredDate, forKey: .triggeredDate)
        try container.encodeIfPresent(triggerOnItem, forKey: .triggerOnItem)
        try container.encodeIfPresent(workflowStepId, forKey: .workflowStepId)
    }

    public static func == (lhs: WorkflowStep, rhs: WorkflowStep) -> Bool {
        lhs.action == rhs.action &&
            lhs.completedDate == rhs.completedDate &&
            lhs.itemId == rhs.itemId &&
            lhs.recipientRouting == rhs.recipientRouting &&
            lhs.status == rhs.status &&
            lhs.triggeredDate == rhs.triggeredDate &&
            lhs.triggerOnItem == rhs.triggerOnItem &&
            lhs.workflowStepId == rhs.workflowStepId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(action?.hashValue)
        hasher.combine(completedDate?.hashValue)
        hasher.combine(itemId?.hashValue)
        hasher.combine(recipientRouting?.hashValue)
        hasher.combine(status?.hashValue)
        hasher.combine(triggeredDate?.hashValue)
        hasher.combine(triggerOnItem?.hashValue)
        hasher.combine(workflowStepId?.hashValue)
    }
}
