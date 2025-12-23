using Microsoft.EntityFrameworkCore;
using STLLayouts.Core.Entities;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Data.Repositories;

public class VariableMappingRepository : Repository<VariableMapping>, IVariableMappingRepository
{
    public VariableMappingRepository(ApplicationDbContext context) : base(context)
    {
    }

    public async Task<List<VariableMapping>> GetMappingsByCategoryAsync(string category)
    {
        return await _dbSet
            .Where(m => m.Category == category)
            .OrderBy(m => m.VariableName)
            .ToListAsync();
    }

    public async Task<VariableMapping?> GetByVariableNameAsync(string variableName)
    {
        return await _dbSet
            .FirstOrDefaultAsync(m => m.VariableName == variableName);
    }
}
