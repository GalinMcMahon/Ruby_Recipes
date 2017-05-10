# VOLUNTEER TRACKER

App allows users to keep track of recipes

# BUGS

No bugs.  Ever.

### Prerequisites

~~~~
Web browser with ES6 compatibility
Examples: Chrome, Safari
Ruby 2.3.1
Bundler
~~~~

### Installing

Clone this repository to your machine.  Navigate to the file path in your terminal and run 'app.rb' by typing:
~~~~
$ruby app.rb
~~~~
Copy into your browser:
~~~~
localhost://4567
~~~~

### Creating the Database in SQL

This is the database schema:
<!-- ![screenshot](https://github.com/GalinMcMahon/Ruby_Recipes/blob/master/public/img/schema.png) -->
![screenshot](https://github.com/mwarsame9/ruby_recipes/blob/master/public/img/schema.png)

~~~~
Run psql (In one terminal window type: postgres.  In a second terminal window type: psql.)
In psql, enter the following lines:
~~~~

## Built With

~~~~
* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* SQL
* ActiveRecord
~~~~

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
|add a recipe with ingredients and instructions|Recipe|Recipe|
|tag my recipes with different categories|"Mexican"|"Mexican"|
|update tags|"Mexican"|"Chilean"|
|delete tags|"Chilean"||
|edit recipes|"Chikken"|"Chicken"|
|delete recipes|"Burrito"||
|rate recipes|5|5|
|list recipes by rating|4, 3, 5|5, 4, 3|
|list recipes by ingredients|"Chicken"|"Burrito"|

## Authors

* Galin McMahon and Mohamed Warsame

## License

Open Source

Copyright © 2017 Galin McMahon and Mohamed Warsame
