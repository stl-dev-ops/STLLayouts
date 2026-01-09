using Microsoft.EntityFrameworkCore;
using STLLayouts.Core.Interfaces;

namespace STLLayouts.Data.Repositories;

public class Repository<T> : IRepository<T> where T : class
{
    protected readonly ApplicationDbContext _context;
    protected readonly DbSet<T> _dbSet;

    public Repository(ApplicationDbContext context)
    {
        _context = context;
        _dbSet = context.Set<T>();
    }

    public virtual async Task<T?> GetByIdAsync(Guid id)
    {
        return await _dbSet.FindAsync(id);
    }

    public virtual async Task<List<T>> GetAllAsync()
    {
        return await _dbSet.ToListAsync();
    }

    public virtual async Task<T> AddAsync(T entity)
    {
        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();
        return entity;
    }

    public virtual async Task UpdateAsync(T entity)
    {
        // Prevent: "cannot be tracked because another instance with the same key value is already being tracked"
        // This can happen when the UI holds onto a tracked entity instance and we try to Update with a different instance.
        var key = _context.Model.FindEntityType(typeof(T))?.FindPrimaryKey();
        if (key != null)
        {
            var keyValues = key.Properties
                .Select(p => typeof(T).GetProperty(p.Name)?.GetValue(entity))
                .ToArray();

            var tracked = _context.ChangeTracker.Entries<T>()
                .FirstOrDefault(e => key.Properties
                    .Select(p => typeof(T).GetProperty(p.Name)?.GetValue(e.Entity))
                    .SequenceEqual(keyValues));

            if (tracked != null)
            {
                tracked.State = EntityState.Detached;
            }
        }

        _dbSet.Update(entity);
        await _context.SaveChangesAsync();
    }

    public virtual async Task DeleteAsync(Guid id)
    {
        var entity = await GetByIdAsync(id);
        if (entity != null)
        {
            _dbSet.Remove(entity);
            await _context.SaveChangesAsync();
        }
    }
}
