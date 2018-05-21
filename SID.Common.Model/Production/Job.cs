using SID.Common.Model.Lookups;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace SID.Common.Model.Production
{
    public class Job //: IAuditInfo
    {
        public Job()
        {
            IsJobPartial = false;
            SortingFile = false;
            CreatedOn = DateTime.Now;
            ModifiedOn = DateTime.Now;
        }

        public int Id { get; set; }
        public string JobName { get; set; }
        public string JobNameId { get; set; }
        public int SidSectorId { get; set; }
        public int SidClientId { get; set; }
        public string Remark { get; set; }
        public int ServiceTypeId { get; set; }
        public int SidCardTypeId { get; set; }
        public int JobStatusId { get; set; }
        public bool IsJobPartial { get; set; }

        public int Quantity { get; set; }
        public bool SortingFile { get; set; }


        [ForeignKey("SidSectorId")]
        public virtual SidSector SidSector { get; set; }

        [ForeignKey("SidClientId")]
        public virtual SidClient SidClient { get; set; }

        [ForeignKey("SidCardTypeId")]
        public virtual SidCardType SidCardType { get; set; }

        [ForeignKey("ServiceTypeId")]
        public virtual ServiceType ServiceType { get; set; }

        [ForeignKey("JobStatusId")]
        public virtual JobStatus JobStatus { get; set; }
        
        //// Audit Section
        public DateTime CreatedOn { get; set; }
        public DateTime ModifiedOn { get; set; }

    }
}