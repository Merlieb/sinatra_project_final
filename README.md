# sinatra_project_final

App struture
 ```
├── app
│ ├── controllers
│ │ ├── application_controller.rb
│ │ ├── images_controller.rb
│ │ ├── sessions_controller.rb
│ │ └── users_controller.rb
│ ├── models
│ │ ├── image.rb
│ │ ├── user.rb
│ ├── uploader
│ │ └── images_uploader.rb
│ └── views
│ ├── images
│ │ ├── index.erb
│ │ └── show.erb
│ ├── sessions
│ │ └── login.erb
│ ├── users
│ │ ├── terms-and-conditions.erb
│ │ ├── index.erb
│ │ ├── edit.erb
│ │ ├── delete.erb
│ │ ├── new.erb
│ │ └── show.erb
│ ├── home.erb
│ └── layout.erb
├── config
│ ├── environment.rb
├── db
│ ├── migrate
│ │ ├── create_users.rb
│ │ └── images.rb
│ └── schema.rb
├── public
│ ├── css
│ │ └── style.css
│ └── images
│ └──imagew.PNG
├──config.ru
├── Gemfile
├── Gemfile.lock
└── Rakefile
```