User.destroy_all #clears out database of all data / cleans slate
#array of Users
users = User.create([


  {id: 1,
   name: "Nick",
   email: "nick@example.com",
   password: "password",
   password_confirmation: "password"
  },

  {id: 2,
   name: "Zack",
   email: "zack@example.com",
   password: "password",
   password_confirmation: "password"
  },

  {id: 3,
   name: "Ksenia",
   email: "ksenia@example.com",
   password: "password",
   password_confirmation: "password"
  },

  {id: 4,
   name: "Shawn",
   email: "shawn@example.com",
   password: "password",
   password_confirmation: "password"
  },

  {id: 5,
   name: "Glenn",
   email: "glenn@example.com",
   password: "password",
   password_confirmation: "password"
  },

 
  {id: 6,
   name: "Jimmy",
   email: "jimmy@example.com",
   password: "password",
   password_confirmation: "password"
  }
])


#RESTAURANT SEEDS:

Dinner.destroy_all #clears out database of all data / cleans slate
#array of Dinners
dinners = Dinner.create([
  {id: 1,
    name: "The Misfit Restaurant + Bar",
    address: "225 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: "Mon:    12:00pm - 12:00am, Tue: 12:00pm - 12:00am, Wed: 12:00pm - 12:00am, Thu: 12:00pm - 1:00am, Fri: 12:00pm - 1:00am, Sat: 11:00am - 1:00am, Sun: 10:30am - 11:00pm",
    phone_number: "(310) 656-9800",
    alcohol:"Yes",
    cuisine: "Americana",
    image_url: "http://www.themisfitbar.com/wp-content/uploads/2014/01/misfit-home-bar-fly.jpg"
  },
  {id: 2,
    name: "Tender Greens",
    address: "201 Arizona Ave. Santa Monica, CA 90401",
    hours: "Mon:    11:00am - 10:00pm, Tue: 11:00am - 10:00pm, Wed: 11:00am - 10:00pm, Thu: 11:00am - 10:00pm, Fri: 11:00am - 10:00pm, Sat: 11:00am - 10:00pm, Sun: 11:00am - 10:00pm",
    phone_number: "(310) 587-2777",
    alcohol:"Yes",
    cuisine: "Salads & Sandwiches",
    image_url: "http://www.tendergreens.com/Thumbs/286x170/files/zc/marinasign2_97457.jpg"
  },
  {id: 3,
    name: "Mercado",
    address: "1416 4th St. Santa Monica, CA 90401",
    hours: "Mon:    5:00pm - 10:00pm, Tue: 5:00pm - 10:00pm, Wed: 5:00pm - 10:00pm, Thu: 5:00pm - 11:00pm, Fri: 5:00pm - 11:00pm, Sat: 4:00pm - 10:00pm, Sun: 11:00am - 11:00pm",
    phone_number: "(310) 526-7121",
    alcohol:"Yes",
    cuisine: "Mexican",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/adWZI_u8B2Giuyu1260eOw/l.jpg"
  },
  {id: 4,
    name: "Ushuaia Argentinean Steakhouse",
    address: "2628 Wilshire Blvd. Santa Monica, CA 90403",
    hours: "Mon:    11:00am - 9:00pm, Tue: 11:00am - 9:00pm, Wed: 11:00am - 10:00pm, Thu: 11:00am - 10:00pm, Fri: 11:00am - 11:00pm, Sat: 5:00am - 11:00pm, Sun: 5:00am - 9:00pm",
    phone_number: "(310) 315-5457",
    alcohol:"Yes",
    cuisine: "Steak House",
    image_url: "http://www.ushuaiasteakhouse.com/wp-content/uploads/2013/09/front-page-1.jpg"
  },
  {id: 5,
    name: "Del Frisco’s Grille",
    address: "1551 Ocean Ave. Santa Monica, CA 90401",
    hours: "Mon:    11:00am - 11:00pm, Tue: 11:00am - 11:00pm, Wed: 11:00am - 11:00pm, Thu: 11:00am - 11:00pm, Fri: 11:00am - 11:00pm, Sat: 11:00am - 11:00pm, Sun: 11:00am - 10:00pm",
    phone_number: "(310) 395-7333",
    alcohol:"Yes",
    cuisine: "American",
    image_url: "http://www.bizbash.com/content/editorial/storyimg/big/bar-web-ready.jpg"
  },
  {id: 6,
    name: "Taberna Arros y Vi",
    address: "1403 2nd St. Santa Monica, CA 90401",
    hours: "Mon:    6:00pm - 10:00pm, Tue: 6:00pm - 10:00pm, Wed: 6:00pm - 10:00pm, Thu: 6:00pm - 10:00pm, Fri: 5:00pm - 11:00pm, Sat: 5:00pm - 10:00pm, Sun: 5:00pm - 10:00pm",
    phone_number: "(310) 393-3663",
    alcohol:"Yes",
    cuisine: "Spanish Tapas",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/8c_ncG6OwGR-t1S-gKNMIQ/l.jpg"
  },
  {id: 7,
    name: "R+D Kitchen",
    address: "1323 Montana Ave. Santa Monica, CA 90403",
    hours: "Mon:    11:30am - 10:00pm, Tue: 11:30am - 10:00pm, Wed: 11:30am - 10:00pm, Thu: 11:30am - 10:00pm, Fri: 11:30am - 11:00pm, Sat: 11:00am - 11:00pm, Sun: 11:00am - 11:00pm",
    phone_number: "(310) 395-3314",
    alcohol:"Yes",
    cuisine: "Americana",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/9bpHkKF7aZ6R-_Y8oyO4Sg/o.jpg"
  },
  {id: 8,
    name: "Tar & Roses",
    address: "602 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: "Mon:    5:30pm - 10:30pm, Tue: 5:30pm - 10:30pm, Wed: 5:30pm - 10:30pm, Thu: 5:30pm - 10:30pm, Fri: 5:30pm - 10:30pm, Sat: 5:30pm - 10:30pm, Sun: 5:30pm - 9:30pm",
    phone_number: "(310) 587-0700",
    alcohol:"Beer & Wine Only",
    cuisine: "Americana",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/9N7glMgWRCDQpRoUGjkoBg/l.jpg"
  },
  {id: 9,
    name: "Hungry Pocket Falafel House",
    address: "1715 Pico Blvd. Santa Monica, CA 90405",
    hours: "Mon:    10:00am - 9:00pm, Tue: 10:00am - 9:00pm, Wed: 10:00am - 9:00pm, Thu: 10:00am - 9:00pm, Fri: 10:00am - 9:00pm, Sat: 11:00am - 8:00pm, Sun: Closed",
    phone_number: "(310) 450-5335",
    alcohol:"No",
    cuisine: "Mediterranean",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/_XVp7atWN_nRQgFvlGrB1A/l.jpg"
  },
  {id: 10,
    name: "Melisse",
    address: "1104 Wilshire Blv. Santa Monica, CA 90401",
    hours: "Mon:    Closed, Tue: 6:00pm - 9:30pm, Wed: 6:00pm - 9:30pm, Thu: 6:00pm - 9:30pm, Fri: 6:00pm - 10:00pm, Sat: 6:00pm - 10:00pm, Sun: Closed",
    phone_number: "(310) 395-0881",
    alcohol:"Yes",
    cuisine: "French",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/DtZbOkZylg8ySWlKRb4Chw/l.jpg"
  },
  {id: 11,
    name: "The Little Door",
    address: "246 26th St. Santa Monica, CA 90402",
    hours: "Mon:    5:30pm - 10:00pm, Tue: 5:30pm - 10:00pm, Wed: 5:30pm - 10:00pm, Thu: 5:30pm - 10:00pm, Fri: 5:30pm - 12:00am, Sat: 5:30pm - 12:00am, Sun: 5:30pm - 10:00pm",
    phone_number: "(310) 310-8064",
    alcohol:"Yes",
    cuisine: "French Moroccan",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/R3bRXLH752TvQN5PvcFE9Q/o.jpg"
  },
  {id: 12,
    name: "Musha Restaurant",
    address: "424 Wilshire Blvd. Santa Monica, CA 90401",
    hours: "Mon:    6:00pm - 11:30pm, Tue: 6:00pm - 11:30pm, Wed: 6:00pm - 11:30pm, Thu: 6:00pm - 11:30pm, Fri: 6:00pm - 11:30pm, Sat: 6:00pm - 11:30pm, Sun: 6:00pm - 11:30pm",
    phone_number: "(310) 576-6330",
    alcohol:"Beer & Wine Only",
    cuisine: "Japanese",
    image_url: "https://irs0.4sqi.net/img/general/600x600/17190593_Lut_WjAs3BmFczQlBFipyZ49U5zHSs8-M4JNyHSE_rQ.jpg"
  },
  {id: 13,
    name: "Stella Barra Pizzeria",
    address: "2000 Main St. Santa Monica, CA 90405",
    hours: "Mon:    5:00pm - 12:00am, Tue: 5:00pm - 12:00am, Wed: 5:00pm - 12:00am, Thu: 5:00pm - 12:00am, Fri: 11:00am - 1:00am, Sat: 10:00am - 1:00am, Sun: 10:00am - 11:00pm",
    phone_number: "(310) 396-9250",
    alcohol:"Yes",
    cuisine: "Italian",
    image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/QirC_OCPGtOb7EuFon-3bg/l.jpg"
  },
  {id: 14,
    name: "Umami Burger",
    address: "500 Broadway Santa Monica, CA 90401",
    hours: "Mon:    11:00am - 10:00pm, Tue: 11:00am - 10:00pm, Wed: 11:00am - 10:00pm, Thu: 11:00am - 11:00pm, Fri: 11:00am - 11:00pm, Sat: 11:00am - 11:00pm, Sun: 12:00pm - 10:00pm",
    phone_number: "(310) 451-1300",
    alcohol:"Yes",
    cuisine: "Americana",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/5KmWFCoSqtKuo8kSYOCKVA/l.jpg"
  },
  {id: 15,
    name: "BOA Steakhouse",
    address: "101 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: "Mon:    12:00pm - 10:30pm, Tue: 12:00pm - 10:30pm, Wed: 12:00pm - 10:30pm, Thu: 12:00pm - 10:30pm, Fri: 12:00pm - 10:30pm, Sat: 12:00pm - 10:30pm, Sun: 12:00pm - 10:30pm",
    phone_number: "(310) 899-4466",
    alcohol:"Yes",
    cuisine: "Steakhouse",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/VznG0sE32LKmFohC4Iuz-Q/l.jpg"
  },
  {id: 16,
    name: "P.F. Chang’s",
    address: "326 Wilshire Blvd. Santa Monica, CA 90401",
    hours: "Mon:    11:00am - 10:00pm, Tue: 11:00am - 10:00pm, Wed: 11:00am - 10:00pm, Thu: 11:00am - 10:00pm, Fri: 11:00am - 11:00pm, Sat: 11:00am - 11:00pm, Sun: 11:00am - 10:00pm",
    phone_number: "(310) 395-1912",
    alcohol:"Yes",
    cuisine: "Chinese",
    image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/bNYIA4OODNJLLdPVMdL2hw/l.jpg"
  },
  {id: 17,
    name: "Bangkok West Thai",
    address: "606 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: "Mon:    11:00am - 10:00pm, Tue: 11:00am - 10:00pm, Wed: 11:00am - 10:00pm, Thu: 11:00am - 10:00pm, Fri: 11:00am - 10:00pm, Sat: 11:00am - 10:00pm, Sun: 11:00am - 10:00pm",
    phone_number: "(310) 395-9658",
    alcohol:"Yes",
    cuisine: "Thai",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/dQP5lPM08tjkpfhmZ0TUMQ/l.jpg"
  },
  {id: 18,
    name: "Father’s Office",
    address: "1018 Montana Ave. Santa Monica, CA 90403",
    hours: "Mon:    5:00pm - 1:00am, Tue: 5:00pm - 1:00am, Wed: 5:00pm - 1:00am, Thu: 5:00pm - 1:00am, Fri: 4:00pm - 2:00am, Sat: 12:00pm - 2:00am, Sun: 12:00pm - 12:00am",
    phone_number: "(310) 393-2337",
    alcohol:"Yes",
    cuisine: "Gastropub",
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/w_Dn0zayaTMAu1CpUNw8Iw/l.jpg"
  },
  {id: 19,
    name: "Brick+Mortar",
    address: "2435 Main St. Santa Monica, CA 90405",
    hours: "Mon:    12:00pm - 12:00am, Tue: 12:00pm - 12:00am, Wed: 12:00pm - 12:00am, Thu: 12:00pm - 1:00am, Fri: 12:00pm - 1:00am, Sat: 10:00am - 1:00am, Sun: 10:00am - 12:00am",
    phone_number: "(310) 450-3434",
    alcohol:"Yes",
    cuisine: "Gastropub",
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/-1PY1OH3j-OjbeN-ggf50g/l.jpg"
  },
  {id: 20,
    name: "Tacos Punta Cabras",
    address: "2311 Santa Monica Blvd. Santa Monica, CA 90404",
    hours: "Mon:    12:00pm - 12:00am, Tue: 12:00pm - 12:00am, Wed: 12:00pm - 12:00am, Thu: 12:00pm - 1:00am, Fri: 12:00pm - 1:00am, Sat: 10:00am - 1:00am, Sun: 10:00am - 12:00am",
    phone_number: "(310) 917-2244",
    alcohol:"No",
    cuisine: "Mexican",
    image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/GNo2rqW-mNXQns5nGd4acg/l.jpg"
  }
])


# EVENTS:

Event.destroy_all

events = Event.create([
  { id: 1,
    event_name: "The LAF Supper",
    event_date: "2015-05-20", 
    event_time: "8:30 PM",
    venue_name: "Santa Monica Playhouse",
    address: "1211 4th St, Santa Monica, CA 90401",
    phone: "310-394-9779", 
    category: "theater",
    venue_url: "http://santaMonicaplayhouse.com",
    image_url: "http://www.santaMonicaplayhouse.com/uploads/2/3/7/2/23728733/1754092.jpg"
  },

  { id: 2,
    event_name: "Almost Perfect",
    event_date: "2015-05-20", 
    event_time: "7:30 PM",
    venue_name: "Santa Monica Playhouse",
    address: "1211 4th St, Santa Monica, CA 90401",
    phone: "310-394-9779",
    category: "theater", 
    venue_url: "http://santaMonicaplayhouse.com",
    image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/GNo2rqW-mNXQns5nGd4acg/l.jpg"
  },

  { id: 3,
    event_name: "Avengers: Age of Ultron",
    event_date: "2015-05-20",
    event_time: "8:00 PM",
    venue_name: "AMC Santa Monica 7", 
    address: "1310 3rd St, Santa Monica, CA 90401",
    phone: "310-451-9440" ,
    category: "movie", 
    venue_url: "https://www.amctheatres.com/movie-theatres/los-angeles/amc-santa-Monica-7",
    image_url: "http://www.santaMonicaplayhouse.com/uploads/2/3/7/2/23728733/1754092.jpg"
  },

  { id: 4,
    event_name: "Furious 7",
    event_date: "2015-05-20",
    event_time: "7:45 PM",
    venue_name: "AMC Santa Monica 7",
    address: "1310 3rd St, Santa Monica, CA 90401",
    phone: "310-451-9440" ,
    category: "movie",
    venue_url: "https://www.amctheatres.com/movie-theatres/los-angeles/amc-santa-Monica-7",
    image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/GNo2rqW-mNXQns5nGd4acg/l.jpg"
  },

  { id: 5,
    event_name: "Get Hard", 
    event_date: "2015-05-20",
    event_time: "6:45 PM",
    venue_name: "AMC Santa Monica 7", 
    address: "1310 3rd St, Santa Monica, CA 90401",
    phone: "310-451-9440",
    category: "movie",
    venue_url: "https://www.amctheatres.com/movie-theatres/los-angeles/amc-santa-Monica-7",
    image_url: "https://cdn.amctheatres.com/theatres/images/Primary/Large/203.jpg"
  },

  { id: 6,
    event_name: "Rocky Horror Picture Show",
    event_date: "2015-05-20", 
    event_time: "12:00 AM", 
    venue_name: "Nuart Theater",
    address: "11272 Santa Monica Blvd, Los Angeles, CA 90067", 
    phone: "310-473-8530",
    category: "movie", 
    venue_url: "http://www.landmarktheatres.com/los-angeles/nuart-theatre",
    image_url: "http://www.harboreast.com/files/7913/4073/8541/Harbor_East_0067_Landmark.jpg"
  },

  { id: 7,
    event_name: "Back to the Future",
    event_date: "2015-05-20",
    event_time: "12:00 AM",
    venue_name: "Nuart Theater",
    address: "1272 Santa Monica Blvd, Los Angeles, CA 90067",
    phone: "310-473-8530",
    category: "movie", 
    venue_url: "http://www.landmarktheatres.com/los-angeles/nuart-theatre",
    image_url: "http://www.harboreast.com/files/7913/4073/8541/Harbor_East_0067_Landmark.jpg"
  },

  { id: 8,
    event_name: "Alien",
    event_date: "2015-05-20", 
    event_time: "12:00 AM",
    venue_name: "Nuart Theater",
    address: "1272 Santa Monica Blvd, Los Angeles, CA 90067",
    phone: "310-473-8530", 
    category: "movie", 
    venue_url: "http://www.landmarktheatres.com/los-angeles/nuart-theatre",
    image_url: "http://www.harboreast.com/files/7913/4073/8541/Harbor_East_0067_Landmark.jpg"
  },

  { id: 9,
    event_name: "Diavolo", 
    event_date: "2015-05-20", 
    event_time: "7:30 PM",
    venue_name: "The Broad Stage", 
    address: "90401, 1310 11th St, Santa Monica, CA 90401",
    phone: "310-434-3200",
    category: "theater",
    venue_url: "http://thebroadstage.com",
    image_url: "http://events-media.nationalgeographic.com/media/images/photos/BroadStage1-tp__jpg_610x343_crop_upscale_q85.jpg"
  },

  { id: 10,
    event_name: "Joyce DiDonato", 
    event_date: "2015-05-20", 
    event_time: "7:30 PM",
    venue_name: "The Broad Stage", 
    address: "90401, 1310 11th St, Santa Monica, CA 90401", 
    phone: "310-434-3200" ,
    category: "music", 
    venue_url: "http://thebroadstage.com",
    image_url: "http://events-media.nationalgeographic.com/media/images/photos/BroadStage1-tp__jpg_610x343_crop_upscale_q85.jpg"
  },

  { id: 11,
    event_name: "Joyce DiDonato",
    event_date: "2015-05-20",
    event_time: "7:30 PM",
    venue_name: "The Broad Stage", 
    address: "90401, 1310 11th St, Santa Monica, CA 90401",
    phone: "310-434-3200",
    category: "music", 
    venue_url: "http://thebroadstage.com",
    image_url: "http://events-media.nationalgeographic.com/media/images/photos/BroadStage1-tp__jpg_610x343_crop_upscale_q85.jpg"
  },

  { id: 12,
    event_name: "Little Miss Nasty", 
    event_date: "2015-05-20",
    event_time: "8:00 PM",
    venue_name: "Harvelle's",
    address: "1432 4th St, Santa Monica, CA 90401",
    phone: "310-434-3200",
    category: "dance", 
    venue_url: "http://harvelles.com",
    image_url: "https://lh4.googleusercontent.com/-ZLyGfB4Myc4/U_TpZkstDYI/AAAAAAAErRY/SQ8Vo8Wuddg/w1300-h867/Harvelle%2527s%2BSM-4.jpg"
  },     

  { id: 13,
    event_name: "Andy Frasco", 
    event_date: "2015-05-20",
    event_time: "7:30 PM",
    venue_name: "Harvelle's", 
    address: "1432 4th St, Santa Monica, CA 90401",
    phone: "310-434-3200",
    category: "music", 
    venue_url: "http://harvelles.com",
    image_url: "https://lh4.googleusercontent.com/-ZLyGfB4Myc4/U_TpZkstDYI/AAAAAAAErRY/SQ8Vo8Wuddg/w1300-h867/Harvelle%2527s%2BSM-4.jpg"
  }
])

