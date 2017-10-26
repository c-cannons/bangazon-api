# Bangazon API

### High-Level Description
Bangazon API provides endpoints for developers to access the bangazon.com database.
### Installation Instructions
1. Fork and/or clone this repo.
1. Ensure you have Rails ~> 5.1.4 installed.
1. Run `bundle install` to install the necessary gems.
1. Run `rails server`.
1. Make sure you seed the file in correct order to ensure no error.  Reference the [ERD](https://github.com/c-cannons/bangazon-api/blob/master/API-ERD%20(3).pdf) Run `rails db:seed` to seed database.


  ##### To make A request for customers from Bangazon.com
  - make sure your ~~refrigerator~~ rails server is running
  - Add a host mask of the local http server [How do I do that?](http://www.mactip.net/how-to-edit-the-hosts-file-on-a-mac/)
  - set the mask to `bangazon.com`
  - From the bangazon directory Run `hs`
  - Go to `bangazon.com:8080` in the browser to request list of customers

### Dependency List with Version Numbers
* Rails ~> 5.1.4
* sqlite3
* puma ~> 3.7
* rack-cors ~> 1.0
* faker ~> 1.7
* byebug
* listen >= 3.0.5
* spring
* spring-watcher-listen ~> 2.0.0
* tzinfo-data
* active_model_serializers

### Team Members

* [Eric Palmerie](https://github.com/palmierie)
* [Ted Pennington](https://github.com/tedpennington)
* [Hiatt Collins](https://github.com/hiattcollins)
* [Matt Brown](https://github.com/mtallentb)
* [Dan Certa](https://github.com/daniel-certa-1228)
