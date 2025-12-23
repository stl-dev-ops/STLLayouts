namespace STLLayouts.Core.Enums;

public enum AuditEventType
{
    // User Actions
    LayoutSelected,
    DocumentGenerated,
    DocumentExported,

    // Rule Engine
    RuleEvaluated,
    RuleCreated,
    RuleModified,
    RuleDeleted,
    RuleActivated,
    RuleDeactivated,

    // Template Management
    TemplateUploaded,
    TemplateModified,
    TemplateDeleted,
    TemplateActivated,
    TemplateDeactivated,

    // Variable Mapping
    VariableMappingCreated,
    VariableMappingModified,
    VariableMappingDeleted,

    // System Events
    ApplicationStarted,
    ApplicationStopped,
    DatabaseConnectionFailed,
    NetworkShareUnavailable,

    // Errors
    DocumentGenerationFailed,
    RuleEvaluationError,
    TemplateParsingError
}
