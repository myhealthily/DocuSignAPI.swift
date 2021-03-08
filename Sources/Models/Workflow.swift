//
// Workflow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Describes the workflow for an envelope. */
public final class Workflow: Content {
    /** The `workflowStepId` of the current step. This is not an index into the `workflowSteps` array in this object. See the `workflowStep` object. */
    public var currentWorkflowStepId: String?
    /** The status of the workflow:  - `paused` if the workflow is paused - `in_progress` if the workflow is in progress */
    public var workflowStatus: String?
    /** An array of workflow steps. */
    public var workflowSteps: [WorkflowStep]?

    public init(currentWorkflowStepId: String? = nil, workflowStatus: String? = nil, workflowSteps: [WorkflowStep]? = nil) {
        self.currentWorkflowStepId = currentWorkflowStepId
        self.workflowStatus = workflowStatus
        self.workflowSteps = workflowSteps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentWorkflowStepId
        case workflowStatus
        case workflowSteps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(currentWorkflowStepId, forKey: .currentWorkflowStepId)
        try container.encodeIfPresent(workflowStatus, forKey: .workflowStatus)
        try container.encodeIfPresent(workflowSteps, forKey: .workflowSteps)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        currentWorkflowStepId = try container.decodeIfPresent(String.self, forKey: .currentWorkflowStepId)
        workflowStatus = try container.decodeIfPresent(String.self, forKey: .workflowStatus)
        workflowSteps = try container.decodeIfPresent([WorkflowStep].self, forKey: .workflowSteps)
    }
}

extension Workflow: Hashable {
    public static func == (lhs: Workflow, rhs: Workflow) -> Bool {
        lhs.currentWorkflowStepId == rhs.currentWorkflowStepId &&
            lhs.workflowStatus == rhs.workflowStatus &&
            lhs.workflowSteps == rhs.workflowSteps
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(currentWorkflowStepId?.hashValue)
        hasher.combine(workflowStatus?.hashValue)
        hasher.combine(workflowSteps?.hashValue)
    }
}