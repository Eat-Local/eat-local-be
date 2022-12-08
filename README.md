<a name="readme-top"></a>

<br />
<div align="center">
  <a href="https://github.com/Eat-Local/eat-local-be">
    <img src="https://raw.githubusercontent.com/Eat-Local/eat-local-fe/main/public/favicon.ico" alt="Logo" width="500" height="300">
  </a>

<h1 align="center"><strong>Eat Local</strong></h1>

  <p align="center">
    <h2> Eat local was designed to exclusively support local businesses.  Small businesses do not have the resources or the capital to survive without sales and support, like larger companies do.  Approximately 1 out of 5 small businesses close their doors permanently within their first year of business.  The odds of a small business failing increases more each year they are open with a failure rate of 66% after 10 years of business.  Running a small business is very difficult, but is near impossible without support. To continue to have diverse options to eat, drink, and shop there needs to be an effort made to support these businesses or your favorite neighborhood spots may not be around much longer.  Please eat local!</h2>
    <br />
    <a href="https://github.com/Eat-Local/eat-local-be"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/Eat-Local/eat-local-be/issues">Report Bug</a>
    ·
    <a href="https://github.com/Eat-Local/eat-local-be/issues">Request Feature</a>
  </p>
</div>
<br>

# About The Project
<details>
  <h1><summary>Table of Contents</summary></h1>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
        <li><a href="#built-with">Built With</a></li>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#apis">APIs</a></li>
    <li><a href="#contacts">Contacts</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>
 

### Built With
<center>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Issues][issues-shield]][issues-url]


![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![CircleCI](https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white)
![GraphQL](https://img.shields.io/badge/GraphQl-E10098?style=for-the-badge&logo=graphql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![Miro](https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white)

</center>


### Getting Started
<br />

#### Prerequistites

The Eat Local backend is build on Rails 5.2.8.1 and Ruby 2.7.4


#### Installation and setup
1. Clone the repo
   ```sh
   git clone git@github.com:Eat-Local/eat-local-be.git
   ```

1. Add gems
   In the main body:
   ```sh
   gem 'faraday'
   gem 'figaro'
   gem 'graphiql-rails'
   gem 'graphql'
   gem 'jsonapi-serializer'
   gem 'rack-cors'
   ```
   In group :development, :test do

   ```sh
   gem 'capybara'
   gem 'factory_bot_rails'
   gem 'faker'
   gem 'pry'
   gem 'rspec-rails'
   gem 'rubocop'
   gem 'rubocop-faker'
   gem 'rubocop-rails'
   gem 'shoulda-matchers'
   gem 'simplecov'
   gem 'vcr'
   gem 'webmock'
   ```

1. Install Gems with `$bundle install`

1. Migrate database with `$rails db:{create,migrate}`

1. Seed development/test database with `$rails db:seed`

1. Enter your API keys

   Run
   ```sh
   $ bundle exec figaro install
   ```
   File config/application.yml should be created and ignored. 
   ```sh
   YELP_API_KEY: 'ENTER_YOUR_API'
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

--------

 #### Database Schema

<center>
  <img src="app/assets/images/schema.png" alt="Logo" width="500" height="300">
</center>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---------

<center>



#### Gem Documentation

<table>
  <tr>
    <td align="center"><a href="https://github.com/teamcapybara/capybara">Capybara</a></td>
    <td align="center"><a href="https://github.com/thoughtbot/factory_bot_rails">factory_bot_rails</a></td>
    <td align="center"><a href="https://github.com/faker-ruby/faker">faker</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://lostisland.github.io/faraday">faraday</a></td>
    <td align="center"><a href="https://github.com/laserlemon/figaro">figaro</a></td>
    <td align="center"><a href="https://github.com/rmosolgo/graphiql-rails">graphiql</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/rmosolgo/graphql-ruby">graphql</a></td>
    <td align="center"><a href="https://github.com/jsonapi-serializer/jsonapi-serializer">jsonapi-serializer</a></td>
    <td align="center"><a href="https://github.com/pry/pry">pry</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/cyu/rack-cors">rack-cors</a></td>
    <td align="center"><a href="https://github.com/rspec/rspec-rails">rspec-rails</a></td>
    <td align="center"><a href="https://github.com/rubocop/rubocop-rails">rubocop</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/koic/rubocop-faker">rubocop-faker</a></td>
    <td align="center"><a href="https://github.com/thoughtbot/shoulda-matchers">shoulda-matchers</a></td>
    <td align="center"><a href="https://github.com/simplecov-ruby/simplecov">simplecov</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/vcr/vcr">vcr</a></td>
    <td align="center"><a href="https://github.com/bblimke/webmock">webmock</a></td>
  </tr>
</table>


</center>

------
<center>

## Contacts

***Individual contributors:***

<table align="center">
    <tr>
        <td align="center"> Erik Riggs: <a href="https://github.com/eriggs0207">GitHub</a> || <a href="https://www.linkedin.com/in/erik-riggs/">LinkedIn</a></td>
        <td align="center"> Benjamin Randolph: <a href="https://github.com/neb417">GitHub</a> || <a href="https://www.linkedin.com/in/benjamin-randolph-43881a95/">LinkedIn</a></td>
        <td align="center"> Kaelin Sleevi: <a href="https://github.com/KaelinSleevi">GitHub</a> || <a href="https://www.linkedin.com/in/kaelin-sleevi-2b5426196/">LinkedIn</a></td>
        <td align="center"> Dominic O'Donnell: <a href="https://github.com/Dominicod">GitHub</a> || <a href="https://www.linkedin.com/in/dominic-odonnell/">LinkedIn</a></td>
    </tr>
 <td align="center"><img src="https://avatars.githubusercontent.com/u/106836658?v=4" alt="Erik Riggs GitHub"
 width="150" height="auto" /></td>
 <td align="center"><img src="https://avatars.githubusercontent.com/u/104036158?v=4" alt="Benjamin Randolph GitHub"
 width="150" height="auto" /></td>
 <td align="center"><img src="https://avatars.githubusercontent.com/u/105956031?v=4" alt="Kaelin Sleevi GitHub"
 width="150" height="auto" /></td>
 <td align="center"><img src="https://avatars.githubusercontent.com/u/93290186?v=4" alt="Dominic O'Donnell GitHub"
 width="150" height="auto" /></td>
</table>



Project Link: [Eat Local BE](https://github.com/Eat-Local/eat-local-be)


<p align="right">(<a href="#readme-top">back to top</a>)</p>
</center>

[contributors-shield]: https://img.shields.io/github/contributors/Eat-Local/eat-local-be.svg?style=for-the-badge
[contributors-url]: https://github.com/Eat-Local/eat-local-be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Eat-Local/eat-local-be.svg?style=for-the-badge
[forks-url]: https://github.com/Eat-Local/eat-local-be/network/members
[issues-shield]: https://img.shields.io/github/issues/Eat-Local/eat-local-be.svg?style=for-the-badge
[issues-url]: https://github.com//Eat-Local/eat-local-be/issues
