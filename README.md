# Object Relations Assessment

For this assignment, we'll be building out Netflix! A viewer has left many ratings on movies, and a movie has been rated by many viewers.

As always, make sure to sketch out your domain and think about the single source of truth for your data.

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb`  file. Please don't submit the lab until we give you the signal.

## Deliverables

Build the following methods on the viewer class
+ Viewer.all
  + should return all of the viewers
+ Viewer.find_by_name(name)
  + given a string of a full name, returns the first customer whose full name matches
+ Viewer#create_rating
  + given a score and a movie, creates a new Rating and associates it with that viewer and that movie

Build out the following methods on the Rating class

+ Rating.all
  + returns all of the ratings
+ Rating#viewer
  + returns the viewer for that given rating
+ Rating#movie
  + returns the movie for that given rating

Build out the following methods on the movie class

+ Movie.all
  + returns an array of all movies
+ Movie.find_by_title(title)
  + given a string of movie title, returns the first movie that matches
+ Movie#ratings
  + returns an array of all ratings for that movie
+ Movie#viewers
  + should return all of the viewers who have left ratings for that movie.
+ Movie#average_rating
  + should return the average of all of the scores for the ratings of that particular movie.
