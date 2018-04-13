﻿using System;
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
        private unit5Entities db = new unit5Entities();

        // GET: api/conf_Intervention
        public IQueryable<conf_Intervention> Getconf_Intervention()
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
        [ResponseType(typeof(conf_Intervention))]
        public IHttpActionResult Getconf_Intervention(int id)
        {
            conf_Intervention conf_Intervention = db.conf_Intervention.Find(id);
            if (conf_Intervention == null)
            {
                return NotFound();
            }

            return Ok(conf_Intervention);
        }

        // PUT: api/conf_Intervention/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putconf_Intervention(int id, conf_Intervention conf_Intervention)
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
        [ResponseType(typeof(conf_Intervention))]
        public IHttpActionResult Postconf_Intervention(conf_Intervention conf_Intervention)
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
        [ResponseType(typeof(conf_Intervention))]
        public IHttpActionResult Deleteconf_Intervention(int id)
        {
            conf_Intervention conf_Intervention = db.conf_Intervention.Find(id);
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