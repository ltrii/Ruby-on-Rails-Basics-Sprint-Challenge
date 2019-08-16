# Ruby & Ruby on Rails Basics - Sprint Challenge - Awesome Blog Gem

## Instructions

**Read these instructions carefully. Understand exactly what is expected before starting this Sprint Challenge.**

This is an individual assessment. All work must be your own. Your challenge score will be a measure of your ability to work independently using the material covered during this sprint. You need to demonstrate proficiency in the concepts and objectives introduced and practiced in the preceding days.

You are not allowed to collaborate during the Sprint Challenge. However, you are encouraged to follow the twenty-minute rule and seek support from your PM and Instructor in your cohort help channel on Slack. Your work reflects your proficiency in Ruby and Ruby on Rails Basics.

You have three hours to complete this challenge. Plan your time accordingly.

## Commits

Commit your code regularly and meaningfully. This helps both you (in case you ever need to return to old code for any reason) and your project manager.

## Description

You are going to make a gem that can be used across applications that have `published_at` fields in their models. You'll
make a `publishable` gem that provides `publish`, `unpublish` and `pubished?` methods that can be mixed in to our `awesome_blog` application's models.

### Git Set Up

- [ ] Fork the project into your GitHub user account
- [ ] Clone the forked project into a directory on your machine
- [ ] Create a pull request before you start working on the project requirements.  You will continuously push your updates throughout the project.
- [ ] You are now ready to build this project with your preferred IDE

## Minimum Viable Product

You are going to make a gem that can be used across applications that have `published_at` fields in their models. You'll
make a `publishable` gem that provides `publish`, `unpublish` and `pubished?` methods that can be mixed in to our `awesome_blog` application's models.

These are the steps you should take in order to create your MVP:

1. Use bundler to generate a gem named `publishable` in a directory adjacent to your `awesome_blog` application (not inside it).
2. Fill out the `TODO` portions of the `.gemspec` files.
3. Add a `publish` method to the `publishable` module (at `lib/publishable.rb`) that calls `update` with the `published_at` value set to `Time.now`.
4. Add the `unpublish` method which will update the `published_at` value to `nil`.
5. Add a `published?` method to check if the `published_at` field is 'not `nil`'.
6. Add the `publishable` gem to `awesome_blog` as a local gem.
7. Mixin `publishable` to the `Quote` and `Post` models.
8. Use the rails console to test the new methods (from the `publishable` module) that should now be available.

## Stretch Problems

1. Update the index views to only show `published?` posts.
