using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AuthorizationServer.Api.Models
{
    public class JobModel
    {
        public int Id { get; set; }
        public string JobName { get; set; }
        public string JobNameId { get; set; }
        public int SidSectorId { get; set; }
        public int SidClientId { get; set; }
        public string Remark { get; set; }
        
        public int ServiceTypeId { get; set; } // {Perso Only, Printing Only, Printing + Perso, Mailing}
        public int SidCardTypeId { get; set; }
        public int JobStatusId { get; set; }
        public bool IsJobPartial { get; set; }

        public int Quantity { get; set; }
        public bool SortingFile { get; set; } // Todo: filelocation

        public string JobType { get; set; }
    }
}