using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using asp_unit5.Entity;

namespace asp_unit5.API
{
    public class Clinical_RoundsController : ApiController
    {
        private unit5Entities1 db = new unit5Entities1();

        // GET: api/Clinical_Rounds
        public IHttpActionResult GetClinical_Rounds()
        {
          var list=   db.Clinical_Rounds.ToList();
            return Ok(list);
        }

        // GET: api/Clinical_Rounds/5
        [ResponseType(typeof(Clinical_Rounds))]
        public async Task<IHttpActionResult> GetClinical_Rounds(int id)
        {
            Clinical_Rounds clinical_Rounds = await db.Clinical_Rounds.FindAsync(id);
            if (clinical_Rounds == null)
            {
                return NotFound();
            }

            return Ok(clinical_Rounds);
        }

        // PUT: api/Clinical_Rounds/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutClinical_Rounds(int id, Clinical_Rounds clinical_Rounds)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != clinical_Rounds.Id)
            {
                return BadRequest();
            }

            db.Entry(clinical_Rounds).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Clinical_RoundsExists(id))
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

        // POST: api/Clinical_Rounds
        [ResponseType(typeof(Clinical_Rounds))]
        public async Task<IHttpActionResult> PostClinical_Rounds(Clinical_Rounds clinical_Rounds)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Clinical_Rounds.Add(clinical_Rounds);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = clinical_Rounds.Id }, clinical_Rounds);
        }

        // DELETE: api/Clinical_Rounds/5
        [ResponseType(typeof(Clinical_Rounds))]
        public async Task<IHttpActionResult> DeleteClinical_Rounds(int id)
        {
            Clinical_Rounds clinical_Rounds = await db.Clinical_Rounds.FindAsync(id);
            if (clinical_Rounds == null)
            {
                return NotFound();
            }

            db.Clinical_Rounds.Remove(clinical_Rounds);
            await db.SaveChangesAsync();

            return Ok(clinical_Rounds);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Clinical_RoundsExists(int id)
        {
            return db.Clinical_Rounds.Count(e => e.Id == id) > 0;
        }
    }
}