using System.ComponentModel.DataAnnotations.Schema;

namespace SID.Common.Model.Lookups
{
    public class SidProduct
    {
        public int Id { get; set; }
        public int SidClientId { get; set; }
        public int SidCardTypeId { get; set; }
        public string Name { get; set; }
        public string ShortCode { get; set; }

        [ForeignKey("SidClientId")]
        public virtual SidClient SidClient { get; set; }

        [ForeignKey("SidCardTypeId")]
        public virtual SidCardType SidCardType { get; set; }

    }
}