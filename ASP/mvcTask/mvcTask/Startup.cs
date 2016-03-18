using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(mvcTask.Startup))]
namespace mvcTask
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
