# Africa Ruby Community(ARC) Platform

## Introduction
On project is aimed a building a platform that  African ruby language enthusiasts can use to connect, share their knowledge and experience, collaborate on projects, and stay up-to-date with the latest developments in the Ruby community. Whether you're a seasoned developer or a beginner just starting out. The platform features a variety of resources including different chapters for different countries and cities, merchandise, meetup information etc. It will also help users get information on online workshops, webinars, and meetups organized by the community, to learn from experts and network with other enthusiasts.

Nb: Please note that this project is open source, you are therefore encourage to contribute

## Application Settup

### Step 1: Install prerequisites

* Ruby Version 3.0.2
* Rails Version 7.0.3

### Step 2: Create a Fork & Branch

* Create a fork of this repository from main branch
* Select an issue to work on from the main repository
* Create a branch name to match the selected issue

NB: All changes you changes for the issue will be on this branch

### Step 3: Clone & install dependencies

Run the following command in the terminal 

``` $ git clone <link to you forked repo> ```

``` $ cd <path to your cloned repo> ```

``` $ bundle install ```

### Step 4: Setup the database

``` $ rails db:create ```

``` $ rails db:migrate ```

### Step 4: Install yarn dependancies

``` yarn install ```

### Step 5: Start server

``` $ rails server ``` 

or 

``` $ rails s ```

### step 5: Creating a pull request

* make changes locally on your branch 
* push your changes to your branch on github
* create a pull request to main branch of the main repository

### step 5: Merging

Once your changes are reviewed they will be merged to the main branch

NB: The section below outlines how the README should be written

# README

This README would normally document whatever steps are necessary to get the
application up and running. (guide)

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
