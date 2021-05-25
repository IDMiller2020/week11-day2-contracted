using System;
using System.ComponentModel.DataAnnotations;

namespace contracted.Models
{
  public class JobContractor
  {
    public int Id { get; set; }
    [Required]
    public int JobId { get; set; }
    [Required]
    public int ContractorId { get; set; }
  }
  public class JobContractorViewModel : Job
  {
    public string ContractorName { get; set; }
    public int jobId { get; set; }
    public int contractorId { get; set; }
    public int JobContractorId { get; set; }
  }
}