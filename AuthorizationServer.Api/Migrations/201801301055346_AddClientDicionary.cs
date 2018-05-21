namespace AuthorizationServer.Api.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddClientDicionary : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.DictonaryClientName",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SidClientId = c.Int(nullable: false),
                        ClientShortCode = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SidClient", t => t.SidClientId, cascadeDelete: true)
                .Index(t => t.SidClientId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.DictonaryClientName", "SidClientId", "dbo.SidClient");
            DropIndex("dbo.DictonaryClientName", new[] { "SidClientId" });
            DropTable("dbo.DictonaryClientName");
        }
    }
}
