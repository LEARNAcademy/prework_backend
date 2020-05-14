[![GitHub issues](https://img.shields.io/github/issues/Naereen/StrapDown.js.svg)](https://github.com/LEARNAcademy/prework_backend/issues)
[![GitHub pull-requests closed](https://img.shields.io/github/issues-pr-closed/Naereen/StrapDown.js.svg)](https://github.com/LEARNAcademy/prework_backend/pull)

# LEARN Prework Application Rails API
LEARN Academy prework backend Rails API that attaches to the [LEARN Academy react frontend](https://github.com/LEARNAcademy/prework-frontend). 
This API handles all of the content management and delivery. It also handles the admin and user tracking via [Devise](https://github.com/heartcombo/devise).

## Installation

**A quick note before installing**: While this API can run on its own independantly, it is designed to connect with the frontend to see the real magic happen. 

Steps to install:
1. Clone the repository
```
git clone repo-link-goes-here
```

2. CD into the directory
```
cd repo-directory
```

3. Run the following dependency commands

```
npm i
```
```
bundle install
```
4. Set up the databases
```
rails db:create
```
```
rails db:migrate
```

5. Import the seed file. This will include the first user that has admin access that will allow the frontend to create more users.
```
rails db:seed
```
6. Run the server
```
rails s
```

After you've run the server, you should be able to see it running by visiting localhost:3000 in your browser. 

# Dependencies
We're utiilizing a number of different dependencies in the backend. 

- Devise
- JWT (devise-jwt)
- CORs
- RSpec
  - Shoulda Matchers

# Ports
The API runs on

```
localhost:3000
```

# Models, Controllers and Routes, oh my!
Below you can find what models, controllers and routes are built out and what some of the rails generators we used. 

## Models, relations and columns
- users
  - email (string)
  - password (string, 6 char min)
  - authentications_token (string)
  - last_q (integer)
  - last_l (integer)

- jwt_blacklist
  - jti (string)
  - exp (datetime)

- topic (has_many: code_modules)
  - title (string)

- code_module ( belongs_to: topic, has_many: lessons, has_many: questions (through lessons) )
  - lesson (string)
  - topic_id (integer)

- lesson (belongs_to: code_module, has_many: questions)
  - content (text)
  - title (string)
  - img_src (text)
  - code_module_id (integer)

- question (belongs_to: lesson, belongs_to: code_module, has_many: resources)
  - title (string)
  - content (text)
  - answer (text)
  - img_src (integer)
  - multiple_choice (boolean)
  - lesson_id (integer)

- resource
  - name (string)
  - link (text)
  - question_id (integer)

## Controllers

- admin folder
  - users_controller (for creating users via the password generator on the front-end)

- code_modules_controller
- lessons_controller
- questions_controller
- resources_controller
- sessons_controller
- topics_controller
- users_controller (for updating user last_q and last_l) 

## Routes
namespace :admin - resources :user

resources :topics
resources :resources
resoucess :questions
resources :lessons
resources :code_modules
devise_for :users, controllers: users/sessions
resources :users

## Rails generators for creating the models.  
```
rails g resource Topic title:string
```

```
rails g resource CodeModule lesson:string topic_id:integer user_id:integer
```

```
rails g resource Lesson title:string content:text img_src:text code_module_id:integer
```

```
rails g resource Question multiple_choice:boolean title:string content:text answer:text img_src:text lesson_id:integer code_module_id:integer
```

```
rails g resource Resource name:string link:text question_id:integer
```

