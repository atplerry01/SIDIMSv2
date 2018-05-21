namespace AuthorizationServer.Api.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ClientUsers : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ClientUser",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SidClientId = c.Int(nullable: false),
                        UserId = c.String(maxLength: 128),
                        CreatedOn = c.DateTime(nullable: false),
                        ModifiedOn = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SidClient", t => t.SidClientId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.SidClientId)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ClientUser", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.ClientUser", "SidClientId", "dbo.SidClient");
            DropIndex("dbo.ClientUser", new[] { "UserId" });
            DropIndex("dbo.ClientUser", new[] { "SidClientId" });
            DropTable("dbo.ClientUser");
        }
    }
}
