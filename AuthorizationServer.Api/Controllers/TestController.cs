using AuthorizationServer.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web.Http;

namespace AuthorizationServer.Api.Controllers
{
    [RoutePrefix("api/test")]
    public class TestController : ApiController
    {
        [Route("")]
        public async Task<IHttpActionResult> GetChasis()
        {

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://csautoregapi.autoreglive.com");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                var response = client.GetAsync("api/VehicleHistory/GetVehicleHistory?APIUsername=carfacts108&APIPassword=5F-4D-CC-3B-5A-A7-65-D6-1D-83-27-DE-B8-82-CF-99&Chasis=VF32AK6F847677085").Result;
                if (response.IsSuccessStatusCode)
                {
                    string responseString = response.Content.ReadAsStringAsync().Result;
                    var modelObject = response.Content.ReadAsAsync<Object>().Result;

                    //string content = await response.Content.ReadAsStringAsync();
                    //return await Task.Run(()=> JsonObject.Parse(content));

                    return Ok(responseString);

                }
            }

            return NotFound();

        }

        public async Task<IHttpActionResult> CreateReset()
        {

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:53401");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                var response = client.GetAsync("breeze/sidimclients/metadata").Result;
                if (response.IsSuccessStatusCode)
                {
                    string responseString = response.Content.ReadAsStringAsync().Result;
                    //var modelObject = response.Content.ReadAsAsync<Student>().Result;
                }
            }

            return Ok("Reset Completed");
        }


    }
}
