
## App
  https://mmorgan412.github.io/capstone-front-end/
## Front End Repo
  https://github.com/mmorgan412/capstone-front-end
## Heroku Site
  https://git.heroku.com/mels-capstone.git

  ## Technologies
  This project was made using Javascript, Jquery, CSS, HTML, Handlebars and Bootstrap for the front end.
  Moment.js package used
  The back end uses Ruby on

## Development Story
  For this app I knew I wanted to use more than one resource.  I started with Users and Pets and made sure I was able to CRUD on pets.  I then added Appointments and tested CRUD on appointments.  Users have many pets and pets have many appointments.  A user has many appointments through pets.  I wanted to challenge myself with more than once resource which ended up being easier than I imagined.

  I ran into a few issues with the time field and ended up changing the type from "time" to a "string" in order to get it to work properly.  I also ran into some issues with handlebars helpers and had to find work arounds.

## Installation
  npm install to get all dependencies

## Future Enhancements
  - Add an installer for pets to upload pictures
  - Add more default images for different types of pets
  - Locate Veteranarians and/or show link to vet's homepage
  - Show dates in order of date/times
  - Allow a user to see appointments for all pets on one screen with the pets name  screen with the pets name

  I ran into issues with handlebars helpers and had to find a workaround for updating my data.  I also strugged dealing with the time field.  I found that even though I was only sending hh:mm the data was coming back in a timezone other than EST and it was updating to EST because of my browser.  In order to fix this issue I changed the field type to a string.


## ERD

https://i.imgur.com/nwUgwIR.jpg

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### Pet Actions

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/pets`                | `pets#index`      |
| GET    | `/pets/:id`            | `pets#show`       |
| POST   | `/pets`                | `pets#create`     |
| PATCH  | `/pets/:id`            | `pets#update`     |
| DELETE | `/pets/:id`            | `pets#destroy`    |

### Appointment Actions

| Verb   | URI Pattern            | Controller#Action      |
|--------|------------------------|----------------------- |
| GET    | `/appointments`        | `appointments#index`   |
| GET    | `/appointments/:id`    | `appointments#show`    |
| POST   | `/appointments`        | `appointments#create`  |
| PATCH  | `/appointments/:id`    | `appointments#update`  |
| DELETE | `/appointments/:id`    | `appointments#destroy` |
