# Bookmark Manager

### What is this?

This is a web app that uses a database. A bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

### User stories

```
  As a time-pressed user
  So that I can see my favourite websites
  I'd like to see a list of bookmarks

  As a time-pressed user
  So that I can save a website
  I would like to add the site's address and title to bookmark manager
```

### How it works

This app uses the MVC (Model View Controller) pattern. When the user clicks to be able to see all bookmarks on the screen, the url /bookmarks is used. This is sent as a GET request to the app, hitting the controller first. The controller receives this request and a function is triggered which asks for .all from the Bookmark model (class). The bookmarks model is returned to the controller in the form of an array and then sent to the view, whereupon a view is created showing all the bookmarks, which is returned to the controller in html format. This is sent back as a response - to the browser - displaying all the bookmarks for the user to see.

```
* CREATE - POST /bookmarks
* READ - GET /bookmarks/123
* UPDATE - PATCH /bookmarks/123
* DELETE - DELETE /bookmarks/123
```
```
Verb    URI Pattern            Controller#action
------  ---------------------  ------------------
GET     /bookmarks           bookmarks#index
POST    /bookmarks           bookmarks#create
GET     /bookmarks/new       bookmarks#new
GET     /bookmarks/:id/edit  bookmarks#edit
GET     /bookmarks/:id       bookmarks#show
PATCH   /bookmarks/:id       bookmarks#update
PUT     /bookmarks/:id       bookmarks#update
DELETE  /bookmarks/:id       bookmarks#destroy
```

### Stack

Sinatra (web framework) with ERB (embedded ruby)
Test Suites - Capybara with RSpec

### How to install



### How to test

```
$ rspec
$ rubocop
```