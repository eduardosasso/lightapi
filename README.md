# ApiUrl.io
Quickly design and prototype API's.  
Describe your data structure declaratively.  
Get test data automatically based on your input.

## Use cases
A classical example would be something like this - you're a mobile engineer and you need a new API but it takes forever for the backend guys to build it so you are pretty much blocked until they have something to show. 
  
Using ApiUrl.io you can collaboratively design the API and work in independently, your team mate building the real API can use the prototype you guys created as a baseline and you the iOS engineer can start building and simply replace the API endpoint when the official API is ready. 

## Demo
```
http://localhost:8080/trip/users.json?response={id:number,url:string,name:string,email:email,%20date:date}&rows=3

[
  {
    id: 4522344254,
    url: "http://koch.biz/emelie.raynor",
    name: "officiis",
    email: "iva.muller@cronin.info",
    date: "2017-11-16"
  },
  {
    id: 1136377739,
    url: "http://bahringer.co/felipa_dooley",
    name: "voluptatem",
    email: "easton.dietrich@trantow.biz",
    date: "2017-11-11"
  },
  {
    id: 8814665917,
    url: "http://kerlukekeebler.com/enoch.williamson",
    name: "unde",
    email: "rosemary_wyman@dubuquekuhic.com",
    date: "2017-11-08"
  }
]

```

## Development
* `git@github.com:eduardosasso/apiurl.io.git`
* `docker-compose up --build`
* `http://localhost:8080`

### Useful commands
```
docker-compose logs -f

remove all images
docker rmi -f $(docker images -q)

remove all containers
docker rm -f $(docker ps -a -q)

get shell access
docker-compose exec app sh
```

## Deployment
Create a droplet on DigitalOcean
```
docker-machine create apiurl.io --driver=digitalocean --digitalocean-access-token=<token>
```

Deploy to production
```
eval $(docker-machine env apiurl.io)
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build
eval $(docker-machine env -u)
```
