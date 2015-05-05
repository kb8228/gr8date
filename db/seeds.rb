# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




#RESTAURANT SEEDS:
Restaurant.destroy_all #clears out database of all data / cleans slate
#array of Restaurants
dinners = Restaurant.create([
  {name: "The Misfit Restaurant + Bar",
    address: "225 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "12:00pm - 12:00am",
        tue: "12:00pm - 12:00am", 
        wed: "12:00pm - 12:00am", 
        thu: "12:00pm - 1:00am",  
        fri: "12:00pm - 1:00am",
        sat: "11:00am - 1:00am",  
        sun: "10:30am - 11:00pm"
      },
    phone_number: "(310) 656-9800",
    type: "Informal",
    alcohol:"Yes",
    cuisine: "Americana"
    image_url: "http://www.themisfitbar.com/wp-content/uploads/2014/01/misfit-home-bar-fly.jpg"
  },
  {name: "Tender Greens",
    address: "201 Arizona Ave. Santa Monica, CA 90401",
    hours: {
        mon: "11:00am - 10:00pm",
        tue: "11:00am - 10:00pm",
        wed: "11:00am - 10:00pm",
        thu: "11:00am - 10:00pm",
        fri: "11:00am - 10:00pm",
        sat: "11:00am - 10:00pm",
        sun: "11:00am - 10:00pm",
      },
    phone_number: "(310) 587-2777",
    type: "Informal",
    alcohol:"Yes",
    cuisine: "Salads & Sandwiches"
    image_url: "http://www.tendergreens.com/thumbs/286x170/files/zc/marinasign2_97457.jpg"
  },
  {name: "Mercado",
    address: "1416 4th St. Santa Monica, CA 90401",
    hours: {
        mon: "5:00pm - 10:00pm",
        tue: "5:00pm - 10:00pm",
        wed: "5:00pm - 10:00pm",
        thu: "5:00pm - 11:00pm",
        fri: "5:00pm - 11:00pm",
        sat: "4:00pm - 10:00pm",
        sun: "11:00am - 11:00pm",
      },
    phone_number: "(310) 526-7121",
    type: "Informal",
    alcohol:"Yes",
    cuisine: "Mexican"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/adWZI_u8B2Giuyu1260eOw/l.jpg"
  },
  {name: "Ushuaia Argentinean Steakhouse",
    address: "2628 Wilshire Blvd. Santa Monica, CA 90403",
    hours: {
        mon: "11:00am - 9:00pm",
        tue: "11:00am - 9:00pm",
        wed: "11:00am - 10:00pm",
        thu: "11:00am - 10:00pm",
        fri: "11:00am - 11:00pm",
        sat: "5:00am - 11:00pm",
        sun: "5:00am - 9:00pm",
      },
    phone_number: "(310) 315-5457",
    type: "Formal",
    alcohol:"Yes",
    cuisine: "Steak House"
    image_url: "http://www.ushuaiasteakhouse.com/wp-content/uploads/2013/09/front-page-1.jpg"
  },
  {name: "Del Frisco’s Grille",
    address: "1551 Ocean Ave. Santa Monica, CA 90401",
    hours: {
        mon: "11:00am - 11:00pm",
        tue: "11:00am - 11:00pm",
        wed: "11:00am - 11:00pm",
        thu: "11:00am - 11:00pm",
        fri: "11:00am - 11:00pm",
        sat: "11:00am - 11:00pm",
        sun: "11:00am - 10:00pm",
      },
    phone_number: "(310) 395-7333",
    type: "Semi-formal",
    alcohol:"Yes",
    cuisine: "American"
    image_url: "http://www.bizbash.com/content/editorial/storyimg/big/bar-web-ready.jpg"
  },
  {name: "Taberna Arros y Vi",
    address: "1403 2nd St. Santa Monica, CA 90401",
    hours: {
        mon: "6:00pm - 10:00pm",
        tue: "6:00pm - 10:00pm",
        wed: "6:00pm - 10:00pm",
        thu: "6:00pm - 10:00pm",
        fri: "5:00pm - 11:00pm",
        sat: "5:00pm - 10:00pm",
        sun: "5:00pm - 10:00pm",
      },
    phone_number: "(310) 393-3663",
    type: "Informal",
    alcohol:"Yes",
    cuisine: "Spanish Tapas"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/8c_ncG6OwGR-t1S-gKNMIQ/l.jpg"
  },
  {name: "R+D Kitchen",
    address: "1323 Montana Ave. Santa Monica, CA 90403",
    hours: {
        mon: "11:30am - 10:00pm",
        tue: "11:30am - 10:00pm",
        wed: "11:30am - 10:00pm",
        thu: "11:30am - 10:00pm",
        fri: "11:30am - 11:00pm",
        sat: "11:00am - 11:00pm",
        sun: "11:00am - 11:00pm",
      },
    phone_number: "(310) 395-3314",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Americana"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/9bpHkKF7aZ6R-_Y8oyO4Sg/o.jpg"
  },
  {name: "Tar & Roses",
    address: "602 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "5:30pm - 10:30pm",
        tue: "5:30pm - 10:30pm",
        wed: "5:30pm - 10:30pm",
        thu: "5:30pm - 10:30pm",
        fri: "5:30pm - 10:30pm",
        sat: "5:30pm - 10:30pm",
        sun: "5:30pm - 9:30pm",
      },
    phone_number: "(310) 587-0700",
    type: "Casual",
    alcohol:"Beer & Wine Only",
    cuisine: "Americana"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/9N7glMgWRCDQpRoUGjkoBg/l.jpg"
  },
  {name: "Hungry Pocket Falafel House",
    address: "1715 Pico Blvd. Santa Monica, CA 90405",
    hours: {
        mon: "10:00am - 9:00pm",
        tue: "10:00am - 9:00pm",
        wed: "10:00am - 9:00pm",
        thu: "10:00am - 9:00pm",
        fri: "10:00am - 9:00pm",
        sat: "11:00am - 8:00pm",
        sun: "Closed",
      },
    phone_number: "(310) 450-5335",
    type: "Casual",
    alcohol:"No",
    cuisine: "Mediterranean"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/_XVp7atWN_nRQgFvlGrB1A/l.jpg"
  },
  {name: "Melisse",
    address: "1104 Wilshire Blv. Santa Monica, CA 90401",
    hours: {
        mon: "Closed",
        tue: "6:00pm - 9:30pm",
        wed: "6:00pm - 9:30pm",
        thu: "6:00pm - 9:30pm",
        fri: "6:00pm - 10:00pm",
        sat: "6:00pm - 10:00pm",
        sun: "Closed",
      },
    phone_number: "(310) 395-0881",
    type: "Dressy",
    alcohol:"Yes",
    cuisine: "French"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/DtZbOkZylg8ySWlKRb4Chw/l.jpg"
  },
  {name: "The Little Door",
    address: "246 26th St. Santa Monica, CA 90402",
    hours: {
        mon: "5:30pm - 10:00pm",
        tue: "5:30pm - 10:00pm",
        wed: "5:30pm - 10:00pm",
        thu: "5:30pm - 10:00pm",
        fri: "5:30pm - 12:00am",
        sat: "5:30pm - 12:00am",
        sun: "5:30pm - 10:00pm",
      },
    phone_number: "(310) 310-8064",
    type: "Dressy",
    alcohol:"Yes",
    cuisine: "French Moroccan"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/R3bRXLH752TvQN5PvcFE9Q/o.jpg"
  },
  {name: "Musha Restaurant",
    address: "424 Wilshire Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "6:00pm - 11:30pm",
        tue: "6:00pm - 11:30pm",
        wed: "6:00pm - 11:30pm",
        thu: "6:00pm - 11:30pm",
        fri: "6:00pm - 11:30pm",
        sat: "6:00pm - 11:30pm",
        sun: "6:00pm - 11:30pm",
      },
    phone_number: "(310) 576-6330",
    type: "Casual",
    alcohol:"Beer & Wine Only",
    cuisine: "Japanese"
    image_url: "https://irs0.4sqi.net/img/general/600x600/17190593_Lut_WjAs3BmFczQlBFipyZ49U5zHSs8-M4JNyHSE_rQ.jpg"
  },
  {name: "Stella Barra Pizzeria",
    address: "2000 Main St. Santa Monica, CA 90405",
    hours: {
        mon: "5:00pm - 12:00am",
        tue: "5:00pm - 12:00am",
        wed: "5:00pm - 12:00am",
        thu: "5:00pm - 12:00am",
        fri: "11:00am - 1:00am",
        sat: "10:00am - 1:00am",
        sun: "10:00am - 11:00pm",
      },
    phone_number: "(310) 396-9250",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Italian"
    image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/QirC_OCPGtOb7EuFon-3bg/l.jpg"
  },
  {name: "Umami Burger",
    address: "500 Broadway Santa Monica, CA 90401",
    hours: {
        mon: "11:00am - 10:00pm",
        tue: "11:00am - 10:00pm",
        wed: "11:00am - 10:00pm",
        thu: "11:00am - 11:00pm",
        fri: "11:00am - 11:00pm",
        sat: "11:00am - 11:00pm",
        sun: "12:00pm - 10:00pm",
      },
    phone_number: "(310) 451-1300",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Americana"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/5KmWFCoSqtKuo8kSYOCKVA/l.jpg"
  },
  {name: "BOA Steakhouse",
    address: "101 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "12:00pm - 10:30pm",
        tue: "12:00pm - 10:30pm",
        wed: "12:00pm - 10:30pm",
        thu: "12:00pm - 10:30pm",
        fri: "12:00pm - 10:30pm",
        sat: "12:00pm - 10:30pm",
        sun: "12:00pm - 10:30pm",
      },
    phone_number: "(310) 899-4466",
    type: "Dressy",
    alcohol:"Yes",
    cuisine: "Steakhouse"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/VznG0sE32LKmFohC4Iuz-Q/l.jpg"
  },
  {name: "P.F. Chang’s",
    address: "326 Wilshire Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "11:00am - 10:00pm",
        tue: "11:00am - 10:00pm",
        wed: "11:00am - 10:00pm",
        thu: "11:00am - 10:00pm",
        fri: "11:00am - 11:00pm",
        sat: "11:00am - 11:00pm",
        sun: "11:00am - 10:00pm",
      },
    phone_number: "(310) 395-1912",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Chinese"
    image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/bNYIA4OODNJLLdPVMdL2hw/l.jpg"
  },
  {name: "Bangkok West Thai",
    address: "606 Santa Monica Blvd. Santa Monica, CA 90401",
    hours: {
        mon: "11:00am - 10:00pm",
        tue: "11:00am - 10:00pm",
        wed: "11:00am - 10:00pm",
        thu: "11:00am - 10:00pm",
        fri: "11:00am - 10:00pm",
        sat: "11:00am - 10:00pm",
        sun: "11:00am - 10:00pm",
      },
    phone_number: "(310) 395-9658",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Thai"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/dQP5lPM08tjkpfhmZ0TUMQ/l.jpg"
  },
  {name: "Father’s Office",
    address: "1018 Montana Ave. Santa Monica, CA 90403",
    hours: {
        mon: "5:00pm - 1:00am",
        tue: "5:00pm - 1:00am",
        wed: "5:00pm - 1:00am",
        thu: "5:00pm - 1:00am",
        fri: "4:00pm - 2:00am",
        sat: "12:00pm - 2:00am",
        sun: "12:00pm - 12:00am",
      },
    phone_number: "(310) 393-2337",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Gastropub"
    image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/w_Dn0zayaTMAu1CpUNw8Iw/l.jpg"
  },
  {name: "Brick+Mortar",
    address: "2435 Main St. Santa Monica, CA 90405",
    hours: {
        mon: "12:00pm - 12:00am",
        tue: "12:00pm - 12:00am",
        wed: "12:00pm - 12:00am",
        thu: "12:00pm - 1:00am",
        fri: "12:00pm - 1:00am",
        sat: "10:00am - 1:00am",
        sun: "10:00am - 12:00am",
      },
    phone_number: "(310) 450-3434",
    type: "Casual",
    alcohol:"Yes",
    cuisine: "Gastropub"
    image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/-1PY1OH3j-OjbeN-ggf50g/l.jpg"
  },
  {name: "Tacos Punta Cabras",
    address: "2311 Santa Monica Blvd. Santa Monica, CA 90404",
    hours: {
        mon: "12:00pm - 12:00am",
        tue: "12:00pm - 12:00am",
        wed: "12:00pm - 12:00am",
        thu: "12:00pm - 1:00am",
        fri: "12:00pm - 1:00am",
        sat: "10:00am - 1:00am",
        sun: "10:00am - 12:00am",
      },
    phone_number: "(310) 917-2244",
    type: "Casual",
    alcohol:"No",
    cuisine: "Mexican"
    image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/GNo2rqW-mNXQns5nGd4acg/l.jpg"
  },
])