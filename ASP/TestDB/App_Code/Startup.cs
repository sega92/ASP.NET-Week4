using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TestDB.Startup))]
namespace TestDB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
