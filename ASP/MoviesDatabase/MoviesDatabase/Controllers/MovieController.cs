using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MoviesDatabase.Models;

namespace MoviesDatabase.Controllers
{
    public class MoviesController : Controller
    {
        private MoviesEntities db = new MoviesEntities();

        // GET: Movies
        public ActionResult Index()
        {
            return View(db.moviesdbs.ToList());
        }

        public ActionResult Details(int? id)
        {
            moviesdb movie = db.moviesdbs.Find(id);
            if (id!= null)
            {

            }
            return View(movie);

        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create([Bind(Include = "Id, Title, Release_Date, Genre, Price, Rating")] moviesdb movie)
        {
            if (ModelState.IsValid)
            {
                //add database record here
                db.moviesdbs.Add(movie);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(movie);
        }



        public ActionResult Delete(int? id)
        {
            moviesdb movie = db.moviesdbs.Find(id);
            if (id != null)
            {

            }
            return View();
        }

        [HttpPost]
        public ActionResult Delete([Bind(Include = "Id, Title, Release_Date, Genre, Price, Rating")] moviesdb movie)
        {
            if (ModelState.IsValid)
            {
                //deleting database record here
                db.moviesdbs.Remove(movie);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(movie);
        }
    }
}
