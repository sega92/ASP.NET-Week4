using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TestDB1.Startup))]
namespace TestDB1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
