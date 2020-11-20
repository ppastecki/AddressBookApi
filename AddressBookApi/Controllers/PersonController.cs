using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AddressBookApi.Models;
using Microsoft.AspNetCore.Mvc;

namespace AddressBookApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class PersonController : ControllerBase
    {
        public async Task<IEnumerable<Person>> GetAll()
        {
            var people = new[]
            {
                new Person
                {
                    PersonId = 1,
                    FirstName = "Nancy",
                    LastName = "Kapoor",
                    ModifiedDate = DateTime.Parse("2019-03-01 19:45:12.345")
                },
                new Person
                {
                    PersonId = 2,
                    FirstName = "Tanya",
                    LastName = "Ramos",
                    ModifiedDate = DateTime.Parse("2020-11-20 16:13:05.367")
                }
            };

            return await Task.FromResult(people);
        }
    }
}
