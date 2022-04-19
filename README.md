MakersBnB
=================

Task
-------

MakersBnb is a web application that allows registered users to request to hire a space for one night, which needs to be approved by the owner of the property. Any signed up users can list multiple
spaces (properties). 

Users are able to list their space with a short description, price per night, name and availability.

Only one user can book a space on a given night, and the user will only secure that space (property) once a confirmation from the owner has been received.


We approached this challenge by using a test driven approach. We created the unit and feature tests with Rspec and Capybara:

1) Create a domain model and diagram from the user story
2) Create a failing test (red) in Rspec
3) Develop code to result in a passing test (green)
4) Refactor the code and re-test (orange)
5) Once I have A) high coverage, B) passing Rspec tests, C) code that fulfills the user story. I progress to the next user story and repeat steps 1-5

I used the MVC pattern to develop the web application. 

The server is created with Sinatra.

The database was created using PostgreSQL

The password of users are encrypted in the database with the use of 'bcrypt'

## Getting started

1) git clone path-to-repo
2) Install bundler via `gem install bundle` (if you don't have bundler already)
3) Install dependencies via `bundle`

## Test Code

[Follow these instructions to set-up the PostgreSQL test database](#Database-Setup-for-Testing)

Run rspec from the root directory to test the code and check test coverage

## Run

[Follow these instructions to set-up the PostgreSQL database](#Database-Setup)

In the terminal whilst at the root directory, type `rackup` and press enter
Enter the following url into your preferred browser: http://localhost:9292/

## User Stories


# Any signed-up user can list a new space.

`As a user
so I can access the platform
I want to sign up for an account`

`As a user
so I can access my account
I want to log in`

`As a user
so I can exit my account
I want to log out`

`As an owner
so I can show my property
I want to list a new property`

# Users can list multiple spaces.

`As an owner
so I can list multiple spaces
I would like to add multiple properties to my account`

# Users should be able to name their space, provide a short description of the space, and a price per night.

`As an owner
so I can list my property
I want to name my property`

`As an owner
so I can list my property
I want to provide a short description of my property`

`As an owner
so I can list my property
I want to provide a price of my property per night`

# Users should be able to offer a range of dates where their space is available.

`As an owner
so customers can decide when to stay
I want to list available dates to rent`

# Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.

`As a renter
so I can choose a property
I would like to make a booking request`

`As an owner
so I can review the booking request
I would like to confirm the booking`

# Nights for which a space has already been booked should not be available for users to book that space.

`As a user
so there are no booking clashes
I want properties already booked to be unavailable on specific dates`

# Until a user has confirmed a booking request, that space can still be booked for that night.

`As an owner
I want my property to still be available until the booking is confirmed
I would like my property to be open for booking`

# Database Setup

1. Connect to `psql` (it's important to run this command from the root directory of 'chitter-challenge')
2. Create the database using the `psql` command `CREATE DATABASE **NAME**;`
3. Connect to the database using the `pqsl` command `\c **NAME**;`
4. Run the following commands within psql:
   `\i example.sql`


# Database Setup for Testing

1. Connect to `psql` (it's important to run this command from the root directory of 'chitter-challenge')
2. Create the database using the `psql` command `CREATE DATABASE **NAME**;`
3. Connect to the database using the `pqsl` command `\c **NAME**;`
4. Run the following commands within psql:
   `\i example.sql`

# Contributors

Joe McNally
David Ewan Campbell
Rupert Pople
Nadia Benzineb
Conor Hope