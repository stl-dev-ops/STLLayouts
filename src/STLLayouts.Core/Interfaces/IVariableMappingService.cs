using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IVariableMappingService
{
    Task<List<VariableMapping>> GetAllMappingsAsync();
    Task<List<VariableMapping>> GetMappingsByCategoryAsync(string category);
    Task<VariableMapping?> GetByVariableNameAsync(string variableName);
    Task<VariableMapping> CreateMappingAsync(VariableMapping mapping);
    Task UpdateMappingAsync(VariableMapping mapping);
    Task DeleteMappingAsync(int mappingId);
    Task<Dictionary<string, object>> ResolveVariablesAsync(Job job);
    Task<object> EvaluateMappingAsync(VariableMapping mapping, Job job);
}
