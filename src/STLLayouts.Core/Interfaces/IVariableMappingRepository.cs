using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IVariableMappingRepository : IRepository<VariableMapping>
{
    Task<List<VariableMapping>> GetMappingsByCategoryAsync(string category);
    Task<VariableMapping?> GetByVariableNameAsync(string variableName);
}
