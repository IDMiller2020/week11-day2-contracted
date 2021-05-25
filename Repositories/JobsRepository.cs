using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using contracted.Interfaces;
using contracted.Models;
using Dapper;

namespace contracted.Repositories
{
  public class JobsRepository : IRepo<Job>
  {
    private readonly IDbConnection _db;
    public JobsRepository(IDbConnection db)
    {
      _db = db;
    }

    public Job Create(Job data)
    {
      throw new NotImplementedException();
    }

    public Job GetById(int id)
    {
      throw new NotImplementedException();
    }

    public Job Update(Job data)
    {
      throw new NotImplementedException();
    }

    internal List<Job> GetAll()
    {
      string sql = "SELECT * FROM jobs";
      return _db.Query<Job>(sql).ToList();
    }

    List<Job> IRepo<Job>.GetAll()
    {
      throw new NotImplementedException();
    }
  }
}