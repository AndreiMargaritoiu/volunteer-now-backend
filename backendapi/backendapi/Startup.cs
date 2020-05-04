using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using backendapi.Models;
using MongoDB.Driver;
using Microsoft.Extensions.Options;
using backendapi.Services;

namespace backendapi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public void ConfigureServices(IServiceCollection services)
        {

            services.Configure<DatabaseSettings>(Configuration.GetSection(nameof(DatabaseSettings)));
               

            services.AddSingleton<IDatabaseSettings>(sp =>
                sp.GetRequiredService<IOptions<DatabaseSettings>>().Value);


            services.AddSingleton<DonationsService>();
            services.AddSingleton<UserService>();
            services.AddSingleton<NeedService>();


           
            services.AddCors(options => options.AddPolicy("AllowCors", builder =>
            {
                builder.WithOrigins("http:localhost:3000").WithMethods("GET", "PUT", "POST", "DELETE")
                    .AllowAnyHeader().SetIsOriginAllowed((host) => true);
            }));

            services.AddControllers();
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseCors("AllowCors");

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
