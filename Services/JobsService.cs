using System;
using System.Collections.Generic;
using contracted.Models;
using contracted.Repositories;

namespace contracted.Services
{
  public class JobsService
  {
    private readonly JobsRepository _jobsRepo;

    public JobsService(JobsRepository jobsRepo)
    {
      _jobsRepo = jobsRepo;
    }

    internal List<Job> GetAll()
    {
      return _jobsRepo.GetAll();
    }
  }
}