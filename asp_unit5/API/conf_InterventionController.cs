using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using asp_unit5;

namespace asp_unit5.API
{
    public class conf_InterventionController : ApiController
    {
        private Entity.unit5Entities db = new Entity.unit5Entities();



        [Route("{getPatientProfile}")]
        [HttpGet]

        public IHttpActionResult getPatientData([FromUri] string name, string ticketId)
        {

            var Profile_DataObject = (dynamic)null;


            if (name != "undefined")
            {

                Profile_DataObject = db.CasulityProfiles.Where(u => u.patientName.Contains(name)).ToList();


            }
            else if (ticketId != "undefined")
            {

                Profile_DataObject = db.CasulityProfiles.Where(u => u.ticketId == ticketId).ToList();

            }


            return Ok(Profile_DataObject);
        }


        // GET: api/conf_Intervention
        public IQueryable<Entity.conf_Intervention> Getconf_Intervention()
        {
            return db.conf_Intervention;
        }

        //customized for on change action intervention page

        [Route("{getintervention}")]
        [HttpGet]
        public IHttpActionResult getInterventionType([FromUri] string name)
        {
            var type = db.conf_Intervention.Where(u => u.intervention_name == name).ToList();

            return Ok(type);
        }




        // GET: api/conf_Intervention/5
        [ResponseType(typeof(Entity.conf_Intervention))]
        public IHttpActionResult Getconf_Intervention(int id)
        {
            Entity.conf_Intervention conf_Intervention = db.conf_Intervention.Find(id);
            if (conf_Intervention == null)
            {
                return NotFound();
            }

            return Ok(conf_Intervention);
        }

        // PUT: api/conf_Intervention/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putconf_Intervention(int id, Entity.conf_Intervention conf_Intervention)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != conf_Intervention.recid)
            {
                return BadRequest();
            }

            db.Entry(conf_Intervention).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!conf_InterventionExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/conf_Intervention
        [ResponseType(typeof(Entity.conf_Intervention))]
        public IHttpActionResult Postconf_Intervention(Entity.conf_Intervention conf_Intervention)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.conf_Intervention.Add(conf_Intervention);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = conf_Intervention.recid }, conf_Intervention);
        }

        // DELETE: api/conf_Intervention/5
        [ResponseType(typeof(Entity.conf_Intervention))]
        public IHttpActionResult Deleteconf_Intervention(int id)
        {
            Entity.conf_Intervention conf_Intervention = db.conf_Intervention.Find(id);
            if (conf_Intervention == null)
            {
                return NotFound();
            }

            db.conf_Intervention.Remove(conf_Intervention);
            db.SaveChanges();

            return Ok(conf_Intervention);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool conf_InterventionExists(int id)
        {
            return db.conf_Intervention.Count(e => e.recid == id) > 0;
        }
    }
}