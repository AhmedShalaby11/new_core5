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
    public class LecturesController : ApiController
    {
        private unit5Entities1 db = new unit5Entities1();

        // GET: api/Lectures
        public IHttpActionResult GetLectures()
        {
            var list = db.Lectures.ToList();
            return Ok(list);
        }

        // GET: api/Lectures/5
        [ResponseType(typeof(Lecture))]
        public async Task<IHttpActionResult> GetLecture(int id)
        {
            Lecture lecture = await db.Lectures.FindAsync(id);
            if (lecture == null)
            {
                return NotFound();
            }

            return Ok(lecture);
        }

        // PUT: api/Lectures/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutLecture(int id, Lecture lecture)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != lecture.Id)
            {
                return BadRequest();
            }

            db.Entry(lecture).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LectureExists(id))
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

        // POST: api/Lectures
        [ResponseType(typeof(Lecture))]
        public async Task<IHttpActionResult> PostLecture(Lecture lecture)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Lectures.Where(row => row.Id == lecture.Id+1).ToList().ForEach(u => {
                u.Attended_flag = lecture.Attended_flag;
            });

            db.SaveChanges();




            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (LectureExists(lecture.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = lecture.Id }, lecture);
        }

        // DELETE: api/Lectures/5
        [ResponseType(typeof(Lecture))]
        public async Task<IHttpActionResult> DeleteLecture(int id)
        {
            Lecture lecture = await db.Lectures.FindAsync(id);
            if (lecture == null)
            {
                return NotFound();
            }

            db.Lectures.Remove(lecture);
            await db.SaveChangesAsync();

            return Ok(lecture);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool LectureExists(int id)
        {
            return db.Lectures.Count(e => e.Id == id) > 0;
        }
    }
}