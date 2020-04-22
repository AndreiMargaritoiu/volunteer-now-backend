using backendapi.Models;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backendapi.Services
{
    public class DonationsService
    {
        private readonly IMongoCollection<Donations> _donations;

        public DonationsService(IDatabaseSettings settings)
        {
            var client = new MongoClient(settings.ConnectionString);
            var database = client.GetDatabase(settings.DatabaseName);

            _donations = database.GetCollection<Donations>(settings.DonationsCollectionName);
        }

        public List<Donations> Get() =>
           _donations.Find(donation => true).ToList();

        public Donations GetDonation(string id) =>
            _donations.Find(donations => donations.Id == id).FirstOrDefault();

        public void UpdateDonation(string id, Donations donationIn) =>
            _donations.FindOneAndReplace(donation => donation.Id == id, donationIn);

        public Donations CreateDonation(Donations donation)
        {
            _donations.InsertOne(donation);
            return donation;
        }

        public void DeleteDonation(string id) =>
            _donations.DeleteOne(donation => donation.Id == id);
    
         
            

    }
}
