using SID.Common.Model.Lookups;
using System.ComponentModel.DataAnnotations.Schema;

namespace SID.Common.Model.Production
{
    public class JobVariant
    {
        public int Id { get; set; }
        public int JobId { get; set; }
        public int SidProductId { get; set; }
        public int SidVariantId { get; set; }


        [ForeignKey("JobId")]
        public virtual Job Job { get; set; }

        [ForeignKey("SidProductId")]
        public virtual SidProduct SidProduct { get; set; }

        [ForeignKey("SidVariantId")]
        public virtual SidVariant SidVariant { get; set; }

    }
}