using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using backendapi.Models;
using MongoDB.Driver;

namespace backendapi.Services
{
    public class NeedService
    {

        private readonly IMongoCollection<Need> _needs;

        public NeedService(IDatabaseSettings settings)
        {
            var client = new MongoClient(settings.ConnectionString);
            var database = client.GetDatabase(settings.DatabaseName);

            _needs = database.GetCollection<Need>(settings.NeedCollectionName);
        }

        public List<Need> Get() =>
          _needs.Find(donation => true).ToList();

        public Need GetNeed(string id) =>
            _needs.Find(need => need.Id == id).FirstOrDefault();

    }
}
