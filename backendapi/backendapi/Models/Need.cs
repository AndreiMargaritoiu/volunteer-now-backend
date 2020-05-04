using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace backendapi.Models
{
    public class Need
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; }

        public ObjectId UserId;

        public string Title { get; set; }

        public string Description { get; set; }

        public string Date { get; set; }

     

    }
}
