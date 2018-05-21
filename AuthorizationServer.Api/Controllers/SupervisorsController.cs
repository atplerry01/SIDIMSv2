using AuthorizationServer.Api.Infrastructure;
using AuthorizationServer.Api.Models;
using Microsoft.AspNet.Identity;
using SID.Common.Model.Production;
using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace AuthorizationServer.Api.Controllers
{
    [Authorize]
    [RoutePrefix("api/supervisor")]
    public class SupervisorsController : ApiController
    {
        private ApplicationRepository _repo = null;
        readonly SidimBreezeRepository _repository = new SidimBreezeRepository();
        ApplicationDbContext context = new ApplicationDbContext();

        string _userId;

        public SupervisorsController()
        {
            _repo = new ApplicationRepository();
            //string userId = User.Identity.GetUserId();
        }

       

        [HttpPost]
        [Route("unflagjob/create")]
        public async Task<IHttpActionResult> CreateJobFlag(JobFlag entity)
        {
            _userId = User.Identity.GetUserId();

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var jobTracker = await context.JobTrackers.FindAsync(entity.JobTrackerId);
            var jobFlag = await context.JobFlags.FindAsync(entity.Id);

            var updateJobTracker = jobTracker;
            updateJobTracker.IsFlag = false;
            var t0UpdateJobTracker = await UpdateJobTracker(updateJobTracker.Id, updateJobTracker);


            var updateJobFlag = jobFlag;
            updateJobFlag.IsResolved = true;
            var t0UpdateJobFlag = await UpdateJobFlag(updateJobFlag.Id, updateJobFlag);

            return Ok<JobFlag>(entity);
        }

        [HttpPost]
        [Route("updatejobandtracker/create")]
        public async Task<IHttpActionResult> CreateUpdateJobAndTracker(JobAndTrackerModel entity)
        {
            //Todo: Incase i have two tracker for the job
            _userId = User.Identity.GetUserId();

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var jobTypePersoOnly = _repo.FindJobTypeByName("Perso Only");
            var jobTypePrintingOnly = _repo.FindJobTypeByName("Printing Only");
            var jobTypeMailingOnly = _repo.FindJobTypeByName("Mailing Only");
            var jobTypeDispatchOnly = _repo.FindJobTypeByName("Dispatch Only");
            var jobTypePrintingAndPerso = _repo.FindJobTypeByName("Printing And Perso");
            var jobTypePrintingPersoAndMailing = _repo.FindJobTypeByName("Printing, Perso And Mailing");
            var jobTypePersoAndMailing = _repo.FindJobTypeByName("Perso And Mailing");

            var jobStatusPending = _repo.FindJobStatusByName("Pending");
            var jobStatusWIP = _repo.FindJobStatusByName("WIP");
            var jobStatusCompleted = _repo.FindJobStatusByName("Completed");
            var jobStatusQueue = _repo.FindJobStatusByName("Queue");
            var jobStatusNotRequired = _repo.FindJobStatusByName("Not Required");

            var job = await context.Jobs.FindAsync(entity.JobId);
            var previousJob = job;
            var previousServiceId = job.ServiceTypeId;

            var jobTrackerByJob = _repo.FindJobTrackerByJobId(job.Id);
            var jobTracker = await context.JobTrackers.FindAsync(jobTrackerByJob.Id);
            var existingJobTracker = jobTrackerByJob;

            //if new Quantity detected and Inventory have already issued
            if (previousJob.Quantity != entity.Quantity && existingJobTracker.InventoryId == jobStatusCompleted.Id)
            {
                var message = string.Format("Job Quantity Cant be change after Inventory Issuance");
                var err = new HttpError(message);
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, err));
            }

            ////UpdateJob
            job.SidSectorId = entity.SidSectorId;
            job.SidClientId = entity.SidClientId;
            job.SidCardTypeId = entity.SidCardTypeId;
            job.Remark = entity.Remark;
            job.ServiceTypeId = entity.ServiceTypeId;
            job.Quantity = entity.Quantity;
            var tJob = await UpdateJob(job.Id, job);
            
            // If New Service Detected
            if (previousServiceId != entity.ServiceTypeId)
            {
                #region JobTrackerSetup

                // reste the jobTracker to default and transfer the previous content
                if (entity.ServiceTypeId == jobTypePersoOnly.Id)
                {
                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusNotRequired.Id;
                    jobTracker.PrintQAId = jobStatusNotRequired.Id;
                    jobTracker.PrintQCId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrId = jobStatusPending.Id;
                    jobTracker.QAId = jobStatusPending.Id;
                    jobTracker.FirstJobRunId = jobStatusQueue.Id;
                    jobTracker.CardEngrResumeId = jobStatusPending.Id;
                    jobTracker.QCId = jobStatusPending.Id;
                    jobTracker.MailingId = jobStatusNotRequired.Id;
                    jobTracker.DispatchId = jobStatusPending.Id; //Create dispatch setups
                    jobTracker.CustomerServiceId = jobStatusPending.Id;
                    jobTracker.MAudId = jobStatusPending.Id;

                    // Transfer the previous
                    jobTracker.ModifiedOn = DateTime.Now;

                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.FirstJobRunId == jobStatusCompleted.Id) { jobTracker.FirstJobRunId = jobStatusCompleted.Id; }
                    if (existingJobTracker.QAId == jobStatusCompleted.Id) { jobTracker.QAId = jobStatusCompleted.Id; }
                    if (existingJobTracker.CardEngrResumeId == jobStatusCompleted.Id) { jobTracker.CardEngrResumeId = jobStatusCompleted.Id; }
                    if (existingJobTracker.QCId == jobStatusCompleted.Id) { jobTracker.QCId = jobStatusCompleted.Id; }

                }
                else if (entity.ServiceTypeId == jobTypePrintingOnly.Id)
                {

                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusQueue.Id;
                    jobTracker.PrintQAId = jobStatusPending.Id;
                    jobTracker.PrintQCId = jobStatusPending.Id;
                    jobTracker.CardEngrId = jobStatusNotRequired.Id;
                    jobTracker.QAId = jobStatusNotRequired.Id;
                    jobTracker.FirstJobRunId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrResumeId = jobStatusNotRequired.Id;
                    jobTracker.QCId = jobStatusNotRequired.Id;
                    jobTracker.MailingId = jobStatusNotRequired.Id;
                    jobTracker.DispatchId = jobStatusPending.Id; //Create dispatch setups
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    jobTracker.ModifiedOn = DateTime.Now;

                    // Overide Functions
                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.PrintingId == jobStatusCompleted.Id || existingJobTracker.PrintingId == jobStatusWIP.Id)
                    {
                        jobTracker.PrintingId = existingJobTracker.PrintingId;
                        jobTracker.PrintQAId = existingJobTracker.PrintQAId;
                        jobTracker.PrintQCId = existingJobTracker.PrintQCId;
                    }

                }
                else if (entity.ServiceTypeId == jobTypeMailingOnly.Id)
                {
                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusNotRequired.Id;
                    jobTracker.PrintQAId = jobStatusNotRequired.Id;
                    jobTracker.PrintQCId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrId = jobStatusNotRequired.Id;
                    jobTracker.QAId = jobStatusNotRequired.Id;
                    jobTracker.FirstJobRunId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrResumeId = jobStatusNotRequired.Id;
                    jobTracker.QCId = jobStatusNotRequired.Id;
                    jobTracker.MailingId = jobStatusQueue.Id;
                    jobTracker.DispatchId = jobStatusPending.Id; //Create dispatch setups
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    //jobTracker.InventoryId = existingJobTracker.InventoryId;
                    jobTracker.ModifiedOn = DateTime.Now;

                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.MailingId == jobStatusCompleted.Id || existingJobTracker.MailingId == jobStatusWIP.Id) { jobTracker.MailingId = existingJobTracker.MailingId; }

                }
                else if (entity.ServiceTypeId == jobTypeDispatchOnly.Id)
                {

                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusNotRequired.Id;
                    jobTracker.PrintQAId = jobStatusNotRequired.Id;
                    jobTracker.PrintQCId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrId = jobStatusNotRequired.Id;
                    jobTracker.QAId = jobStatusNotRequired.Id;
                    jobTracker.FirstJobRunId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrResumeId = jobStatusNotRequired.Id;
                    jobTracker.QCId = jobStatusNotRequired.Id;
                    jobTracker.MailingId = jobStatusNotRequired.Id;
                    jobTracker.DispatchId = jobStatusQueue.Id;
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    //jobTracker.InventoryId = existingJobTracker.InventoryId;
                    jobTracker.ModifiedOn = DateTime.Now;

                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }

                }
                else if (entity.ServiceTypeId == jobTypePrintingAndPerso.Id)
                {
                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusQueue.Id;
                    jobTracker.PrintQAId = jobStatusPending.Id;
                    jobTracker.PrintQCId = jobStatusPending.Id;
                    jobTracker.CardEngrId = jobStatusPending.Id;
                    jobTracker.QAId = jobStatusPending.Id;
                    jobTracker.FirstJobRunId = jobStatusPending.Id;
                    jobTracker.CardEngrResumeId = jobStatusPending.Id;
                    jobTracker.QCId = jobStatusPending.Id;
                    jobTracker.MailingId = jobStatusNotRequired.Id;
                    jobTracker.DispatchId = jobStatusPending.Id; //Create dispatch setups
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    jobTracker.InventoryId = existingJobTracker.InventoryId;
                    jobTracker.ModifiedOn = DateTime.Now;


                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.PrintingId == jobStatusCompleted.Id || existingJobTracker.PrintingId == jobStatusWIP.Id)
                    {
                        jobTracker.PrintingId = existingJobTracker.PrintingId;
                        jobTracker.PrintQAId = existingJobTracker.PrintQAId;
                        jobTracker.PrintQCId = existingJobTracker.PrintQCId;
                    }

                    if (existingJobTracker.FirstJobRunId == jobStatusCompleted.Id || existingJobTracker.FirstJobRunId == jobStatusWIP.Id) { jobTracker.FirstJobRunId = existingJobTracker.FirstJobRunId; }
                    if (existingJobTracker.QAId == jobStatusCompleted.Id || existingJobTracker.QAId == jobStatusWIP.Id) { jobTracker.QAId = existingJobTracker.QAId; }
                    if (existingJobTracker.CardEngrResumeId == jobStatusCompleted.Id || existingJobTracker.CardEngrResumeId == jobStatusWIP.Id) { jobTracker.CardEngrResumeId = existingJobTracker.CardEngrResumeId; }
                    if (existingJobTracker.QCId == jobStatusCompleted.Id || existingJobTracker.QCId == jobStatusWIP.Id) { jobTracker.QCId = existingJobTracker.QCId; }


                }
                else if (entity.ServiceTypeId == jobTypePersoAndMailing.Id)
                {
                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusNotRequired.Id;
                    jobTracker.PrintQAId = jobStatusNotRequired.Id;
                    jobTracker.PrintQCId = jobStatusNotRequired.Id;
                    jobTracker.CardEngrId = jobStatusQueue.Id;
                    jobTracker.QAId = jobStatusPending.Id;
                    jobTracker.FirstJobRunId = jobStatusQueue.Id;
                    jobTracker.CardEngrResumeId = jobStatusPending.Id;
                    jobTracker.QCId = jobStatusPending.Id;
                    jobTracker.MailingId = jobStatusPending.Id;
                    jobTracker.DispatchId = jobStatusPending.Id;
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    jobTracker.InventoryId = existingJobTracker.InventoryId;
                    jobTracker.ModifiedOn = DateTime.Now;

                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.FirstJobRunId == jobStatusCompleted.Id || existingJobTracker.FirstJobRunId == jobStatusWIP.Id) { jobTracker.FirstJobRunId = existingJobTracker.FirstJobRunId; }
                    if (existingJobTracker.QAId == jobStatusCompleted.Id || existingJobTracker.QAId == jobStatusWIP.Id) { jobTracker.QAId = existingJobTracker.QAId; }
                    if (existingJobTracker.CardEngrResumeId == jobStatusCompleted.Id || existingJobTracker.CardEngrResumeId == jobStatusWIP.Id) { jobTracker.CardEngrResumeId = existingJobTracker.CardEngrResumeId; }
                    if (existingJobTracker.QCId == jobStatusCompleted.Id || existingJobTracker.QCId == jobStatusWIP.Id) { jobTracker.QCId = existingJobTracker.QCId; }
                    if (existingJobTracker.MailingId == jobStatusCompleted.Id || existingJobTracker.MailingId == jobStatusWIP.Id) { jobTracker.MailingId = existingJobTracker.MailingId; }

                }
                else if (entity.ServiceTypeId == jobTypePrintingPersoAndMailing.Id)
                {
                    jobTracker.CardOpsId = jobStatusCompleted.Id;
                    jobTracker.InventoryId = jobStatusQueue.Id;
                    jobTracker.PrintingId = jobStatusQueue.Id;
                    jobTracker.PrintQAId = jobStatusPending.Id;
                    jobTracker.PrintQCId = jobStatusPending.Id;
                    jobTracker.CardEngrId = jobStatusPending.Id;
                    jobTracker.QAId = jobStatusPending.Id;
                    jobTracker.FirstJobRunId = jobStatusPending.Id;
                    jobTracker.CardEngrResumeId = jobStatusPending.Id;
                    jobTracker.QCId = jobStatusPending.Id;
                    jobTracker.MailingId = jobStatusPending.Id;
                    jobTracker.DispatchId = jobStatusPending.Id;
                    jobTracker.MAudId = jobStatusPending.Id;
                    jobTracker.CustomerServiceId = jobStatusPending.Id;

                    jobTracker.InventoryId = existingJobTracker.InventoryId;
                    jobTracker.ModifiedOn = DateTime.Now;

                    if (existingJobTracker.InventoryId == jobStatusCompleted.Id) { jobTracker.InventoryId = jobStatusCompleted.Id; }
                    if (existingJobTracker.PrintingId == jobStatusCompleted.Id || existingJobTracker.PrintingId == jobStatusWIP.Id)
                    {
                        jobTracker.PrintingId = existingJobTracker.PrintingId;
                        jobTracker.PrintQAId = existingJobTracker.PrintQAId;
                        jobTracker.PrintQCId = existingJobTracker.PrintQCId;
                    }

                    if (existingJobTracker.FirstJobRunId == jobStatusCompleted.Id || existingJobTracker.FirstJobRunId == jobStatusWIP.Id) { jobTracker.FirstJobRunId = existingJobTracker.FirstJobRunId; }
                    if (existingJobTracker.QAId == jobStatusCompleted.Id || existingJobTracker.QAId == jobStatusWIP.Id) { jobTracker.QAId = existingJobTracker.QAId; }
                    if (existingJobTracker.CardEngrResumeId == jobStatusCompleted.Id || existingJobTracker.CardEngrResumeId == jobStatusWIP.Id) { jobTracker.CardEngrResumeId = existingJobTracker.CardEngrResumeId; }
                    if (existingJobTracker.QCId == jobStatusCompleted.Id || existingJobTracker.QCId == jobStatusWIP.Id) { jobTracker.QCId = existingJobTracker.QCId; }
                    if (existingJobTracker.MailingId == jobStatusCompleted.Id || existingJobTracker.MailingId == jobStatusWIP.Id) { jobTracker.MailingId = existingJobTracker.MailingId; }

                }

                #endregion

                var t0UpdateJobTracker = await UpdateJobTracker(jobTracker.Id, jobTracker);

            }
            
            return Ok<Job>(job);
        }


        public async Task<IHttpActionResult> UpdateJob(int id, Job entity)
        {
            var existingEntity = await context.Jobs.FindAsync(entity.Id);
            if (id != entity.Id) { return BadRequest(ModelState); }

            if (existingEntity != null && context.Entry(existingEntity).State != EntityState.Detached)
            {
                context.Entry(existingEntity).State = EntityState.Detached;
            }

            var local = context.Set<Job>().Local.FirstOrDefault(f => f.Id == entity.Id);
            if (local != null) { context.Entry(local).State = EntityState.Detached; }

            context.Jobs.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
            await context.SaveChangesAsync();

            return Ok<Job>(entity);

        }

        public async Task<IHttpActionResult> UpdateJobTracker(int id, JobTracker entity)
        {
            var existingEntity = await context.JobTrackers.FindAsync(entity.Id);
            if (id != entity.Id) { return BadRequest(ModelState); }

            if (existingEntity != null && context.Entry(existingEntity).State != EntityState.Detached)
            {
                context.Entry(existingEntity).State = EntityState.Detached;
            }

            var local = context.Set<JobTracker>().Local.FirstOrDefault(f => f.Id == entity.Id);
            if (local != null) { context.Entry(local).State = EntityState.Detached; }

            context.JobTrackers.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
            await context.SaveChangesAsync();

            return Ok<JobTracker>(entity);

        }

        public async Task<IHttpActionResult> UpdateJobFlag(int id, JobFlag entity)
        {
            _userId = User.Identity.GetUserId();
            var existingEntity = await context.JobFlags.FindAsync(entity.Id);
            if (id != entity.Id) { return BadRequest(ModelState); }

            if (existingEntity != null && context.Entry(existingEntity).State != EntityState.Detached)
            {
                context.Entry(existingEntity).State = EntityState.Detached;
            }

            var local = context.Set<JobFlag>().Local.FirstOrDefault(f => f.Id == entity.Id);
            if (local != null) { context.Entry(local).State = EntityState.Detached; }

            entity = existingEntity;
            entity.ModifiedOn = DateTime.Now;
            entity.ModifiedById = _userId;

            context.JobFlags.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
            await context.SaveChangesAsync();

            return Ok<JobFlag>(entity);

        }


        [HttpPost]
        [Route("reset")]
        public async Task<IHttpActionResult> CreateResetProcess()
        {

            // Server Job Reset
            #region ServerJobQueues

            var serverJobs = _repository.ServerJobQueues;

            foreach (var serverJob in serverJobs)
            {
                serverJob.IsTreated = false;
                var t1 = await UpdateServerJobQueue(serverJob.Id, serverJob);
            }

            #endregion

            return Ok("Ok");
        }

        /// ServerJobs
        public async Task<IHttpActionResult> UpdateServerJobQueue(int id, ServerJobQueue entity)
        {
            string userId = User.Identity.GetUserId();
            ServerJobQueue existingEntity = await context.ServerJobQueues.FindAsync(entity.Id);

            if (entity == null)
            {
                return NotFound();
            }

            if (id != entity.Id)
            {
                return BadRequest(ModelState);
            }

            if (existingEntity != null && context.Entry(existingEntity).State != EntityState.Detached)
            {
                context.Entry(existingEntity).State = EntityState.Detached;
            }

            var local = context.Set<JobTracker>().Local.FirstOrDefault(f => f.Id == entity.Id);
            if (local != null) { context.Entry(local).State = EntityState.Detached; }

            context.ServerJobQueues.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
            await context.SaveChangesAsync();

            return Ok<ServerJobQueue>(entity);

        }

        //////
        ///Revert Process
        
        //1. Delete all the related information


        ////
        ///Delete Job Process


    }
}
