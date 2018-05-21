namespace AuthorizationServer.Api.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddClientDicionaryx01 : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.DictonaryClientName", newName: "DictionaryClientName");
            CreateTable(
                "dbo.DictionaryCardType",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SidClientId = c.Int(nullable: false),
                        SidCardTypeId = c.Int(nullable: false),
                        ClientShortCode = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SidCardType", t => t.SidCardTypeId, cascadeDelete: true)
                .ForeignKey("dbo.SidClient", t => t.SidClientId, cascadeDelete: true)
                .Index(t => t.SidClientId)
                .Index(t => t.SidCardTypeId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.DictionaryCardType", "SidClientId", "dbo.SidClient");
            DropForeignKey("dbo.DictionaryCardType", "SidCardTypeId", "dbo.SidCardType");
            DropIndex("dbo.DictionaryCardType", new[] { "SidCardTypeId" });
            DropIndex("dbo.DictionaryCardType", new[] { "SidClientId" });
            DropTable("dbo.DictionaryCardType");
            RenameTable(name: "dbo.DictionaryClientName", newName: "DictonaryClientName");
        }
    }
}
