using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface IContextSchemaService
{
    Task<IReadOnlyList<ContextFieldInfo>> GetScalarFieldsAsync(CancellationToken cancellationToken = default);
    Task<IReadOnlyList<ContextFieldInfo>> GetCollectionFieldsAsync(string collectionName, CancellationToken cancellationToken = default);
}
