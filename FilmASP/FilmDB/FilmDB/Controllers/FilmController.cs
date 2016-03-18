using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FilmDB.Models;
using System.ComponentModel.DataAnnotations;

namespace FilmDB.Controllers
{
    public class FilmController : Controller
    {
        private FilmDatabaseEntities db = new FilmDatabaseEntities();
        // GET: Film


        //Index View
        public ActionResult Index(string movieGenre, string searchString)
        {
            // return View(db.FilmTables.ToList()); 
            //Fills the Index table with the records from FilmTable


            //Genre search
            var GenreList = new List<string>();
            var GenreQuery = from genreData in db.FilmTables orderby genreData.Genre select genreData.Genre;
            GenreList.AddRange(GenreQuery.Distinct());
            ViewBag.movieGenre = new SelectList(GenreList);

            var movies = from m in db.FilmTables select m;


            //Title search
            if(!String.IsNullOrEmpty(searchString))//checks if the search box is not empty
            {
                movies = movies.Where(s => s.Title.Contains(searchString));
            }
            if (!String.IsNullOrEmpty(movieGenre))
            {
                movies = movies.Where(x => x.Genre == movieGenre);
            }
            return View(movies);



        }

        //Details View
        public ActionResult Details(int? id)
        {
            FilmTable movie = db.FilmTables.Find(id);
            return View(movie);
        }

        //Create View 
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create([Bind(Include = "Id, Title, Release_Date, Genre, Price, Rating")] FilmTable movie)
        {
            if (ModelState.IsValid)
            {
                //adding database record here
                db.FilmTables.Add(movie);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(movie);
        }


        //Delete View
        public ActionResult Delete(int? id)
        {
            FilmTable movie = db.FilmTables.Find(id);
            return View(movie);
        }

        [HttpPost, ActionName ("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            FilmTable movie = db.FilmTables.Find(id);

            //deleting database record here
            db.FilmTables.Remove(movie);
            db.SaveChanges();

            return RedirectToAction("Index");
        }



        //Edit View
        public ActionResult Edit(int? id)
        {
            FilmTable movie = db.FilmTables.Find(id);
            return View(movie);
        }

        [HttpPost]
        public ActionResult Edit([Bind(Include = "Id, Title, Release_Date, Genre, Price, Rating")] FilmTable movie)
        {
            if (ModelState.IsValid)
            {
                //Editing database record here
                db.Entry(movie).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(movie);
        }
    }
}