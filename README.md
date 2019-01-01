project 2 essay plan…how to create an api using Ruby on Rails

	In this essay, I will explain creating an API using ruby on rails. I believe with study and practice, it can be simple to create, which I will try and explain. There are a few steps to follow in order to create your API.
	Step 1 is to first install Rails. You can install rail from your command line, First go in to your terminal, create a folder to store all your files. Then in your folder, simply type install rails. After a few seconds, you will now have access to rails and all its feature.

	Now that you have install rails, you’re all set to create your API. From your command line, type touch  .env. This will create a file called .env on atom to store your important information. After you need to set up your secret keys. Type
function generate_rails_secret_keys {
echo SECRET_KEY_BASE_DEVELOPMENT=`bundle exec rake secret` | tee .env && echo SECRET_KEY_BASE_TEST=`bundle exec rake secret` | tee -a .env
} and this will create your secret keys into your .env file.
Now you can run your server	by typing rails server to get your server address.
	It is now time to setup your database. There are a couple of ways to do it, but I’m going to explain the faster and easier way to do it. It is called scaffold.
Now lets say we want to create a database for books. From the command line type, bin/rails generate scaffold Book book_name:string date_published:string. You just created a database for books that has the book title and date published. Using scaffold will create your book model and controller. Doing it this way will avoid unnecessary typos and is a lot quicker.
	Next you want to make sure your controller and model is set up correctly. Go into you file and make sure it has the correct data and the syntax are all correct. This is important because in your controller folder, thats where all the CRUD methods exist. In your model folder, you can connect your database to another database. For example, if your database is books and you want to connect it to the author database, you put
class Book < ApplicationRecord
  belongs_to :author
end. This will connect the two databases.
	Next you want to create your routes in the routes folder. This is where you would create your file paths for your website. The syntax is very simple. Here’s an example.
post '/sign-up' => 'users#signup'
This is a post method file path or route. Its a route to sign up to create a profile on our website.
	Once your routes are all set, your rails API is ready to go. Modern web developers use API to have a backend that can help with the functions of the website. It stores and create data and great for single page applications.
	Perfect Practice makes perfect practice
Rails is my favorite backend to use so far because of the simplicity. Hopefully after reading my essay, you can now create your own rails API from scratch.
