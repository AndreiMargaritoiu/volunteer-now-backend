using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using backendapi.Models;
using MongoDB.Driver;

namespace backendapi.Services
{
    public class UserService
    {

        private readonly IMongoCollection<User> _users;

        public UserService(IDatabaseSettings settings)
        {
            var client = new MongoClient(settings.ConnectionString);
            var database = client.GetDatabase(settings.DatabaseName);

            _users = database.GetCollection<User>(settings.UserCollectionName);

        }

        public List<User> Get() =>
            _users.Find(user => true).ToList();

        public User Create(User user)
        {
            _users.InsertOne(user);
            return user;
        }

        public void UpdateUser(string id, User userData) =>
               _users.FindOneAndReplace(userId => userData.Id == id, userData);


    }
}
