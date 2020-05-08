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
          _needs.Find(need => true).ToList();

        public Need GetNeed(string id) =>
            _needs.Find(need => need.Id == id).FirstOrDefault();

        public Need CreateNeed(Need need)
        {
            _needs.InsertOne(need);
            return need;
        }

        public List<Need> GetNeedsByUser(string id)
        {
            MongoDB.Bson.ObjectId needsIds = new MongoDB.Bson.ObjectId(id);
            return _needs.Find(need => need.UserId == needsIds).ToList();
        }


        public void DeleteNeed(string id)
        {
            _needs.DeleteOne(need => need.Id == id);
        }

        public void UpdateNeed(string id, Need needIn) =>
            _needs.FindOneAndReplace(need => need.Id == id, needIn);

    }
}
