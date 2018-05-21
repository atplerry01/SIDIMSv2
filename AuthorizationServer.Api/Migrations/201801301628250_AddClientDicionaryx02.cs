namespace AuthorizationServer.Api.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddClientDicionaryx02 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.DictionaryCardType", "SidClientId", "dbo.SidClient");
            DropIndex("dbo.DictionaryCardType", new[] { "SidClientId" });
            CreateTable(
                "dbo.DictionaryServiceType",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SidClientId = c.Int(nullable: false),
                        SidCardTypeId = c.Int(nullable: false),
                        ServiceTypeId = c.Int(nullable: false),
                        ServiceCodeName = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.ServiceType", t => t.ServiceTypeId, cascadeDelete: true)
                .ForeignKey("dbo.SidCardType", t => t.SidCardTypeId, cascadeDelete: true)
                .ForeignKey("dbo.SidClient", t => t.SidClientId, cascadeDelete: true)
                .Index(t => t.SidClientId)
                .Index(t => t.SidCardTypeId)
                .Index(t => t.ServiceTypeId);
            
            AddColumn("dbo.DictionaryCardType", "CardCodeName", c => c.String());
            AddColumn("dbo.DictionaryClientName", "ClientCodeName", c => c.String());
            DropColumn("dbo.DictionaryCardType", "SidClientId");
            DropColumn("dbo.DictionaryCardType", "ClientShortCode");
            DropColumn("dbo.DictionaryClientName", "ClientShortCode");
        }
        
        public override void Down()
        {
            AddColumn("dbo.DictionaryClientName", "ClientShortCode", c => c.String());
            AddColumn("dbo.DictionaryCardType", "ClientShortCode", c => c.String());
            AddColumn("dbo.DictionaryCardType", "SidClientId", c => c.Int(nullable: false));
            DropForeignKey("dbo.DictionaryServiceType", "SidClientId", "dbo.SidClient");
            DropForeignKey("dbo.DictionaryServiceType", "SidCardTypeId", "dbo.SidCardType");
            DropForeignKey("dbo.DictionaryServiceType", "ServiceTypeId", "dbo.ServiceType");
            DropIndex("dbo.DictionaryServiceType", new[] { "ServiceTypeId" });
            DropIndex("dbo.DictionaryServiceType", new[] { "SidCardTypeId" });
            DropIndex("dbo.DictionaryServiceType", new[] { "SidClientId" });
            DropColumn("dbo.DictionaryClientName", "ClientCodeName");
            DropColumn("dbo.DictionaryCardType", "CardCodeName");
            DropTable("dbo.DictionaryServiceType");
            CreateIndex("dbo.DictionaryCardType", "SidClientId");
            AddForeignKey("dbo.DictionaryCardType", "SidClientId", "dbo.SidClient", "Id", cascadeDelete: true);
        }
    }
}
