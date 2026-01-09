using STLLayouts.Core.Entities;

namespace STLLayouts.Core.Interfaces;

public interface ICollectionDataService
{
    Task<IReadOnlyList<Dictionary<string, object?>>> GetCollectionAsync(
        Job job,
        string collectionName,
        CancellationToken cancellationToken = default);
}
