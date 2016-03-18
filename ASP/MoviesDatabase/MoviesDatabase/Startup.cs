using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MoviesDatabase.Startup))]
namespace MoviesDatabase
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
