#What Is the project.

Location sensitive social notifier is a platform for sharing messages via the use of locations, it main aim is to be a fun application to share messages within a social group but could be used for more interesting applications for example it could be used within a marathon setting to add points along the route with useful information like how far the user is through the route.

#What does it comprise of.

The project has been broken into 3 distinct parts, 

* Android application, which is what the user interacts with.
* Middle tier HAPI Node.js server application that handles the API side.
* Database, where most of the data manipulation happens via database functions.

#Design approach.

My approach for the applications design was to break the application into its core functionality and to start by designing the database first with all the relevant links between the different data. Next to design a simple URL scheme for the REST interface to enable the application. I also proceeded to design a few simple mockups of the application UI.

#Method

The development of the application so far is to use a FDD style type of development where I have broken the application down into the various parts of the functionality that is needed to complete the concept of the application. And work through them one by one till they are at a point where they are at a workable state.

My plan is to try and get most of the functionality working even if the UI is not 100% complete to get a beta build of application ready for people to use and test by the by the week starting the 30th April.

I have tried to keep a blog of for any problems that I have found, mostly documenting problems that I have had with Android, I had a good 2 weeks of not being able to get any code to run on the Android SDK and the phones that I had. 

#Technologies

So for the project alot of the functionality is reliant on different technologies playing nicely together.

I will start with the backend as that is a bit more straightforward. The backend is written in Javascript using the Node.js runtime, I use the hapi.js for the server framework which serves the various endpoints for the application this acts as a tie between the android application and the database.

The hapi.js application hooks into a postgres database via sequelize which is a library that offers object relation mapping, which i'm not using and have elected to use raw queries that return json objects that can then be processed appropriately.

I have elected to make the database do as much work as it can to try and speed things up, I have created database functions where I can to process the data this should also help improve security by trying to eliminate sql injection where I could.

The Backend services are being run on a Debian server supplied with by digital ocean

The phone application is written in Android which is Java, and integrates the Google maps API to give the mapping dialogs within the application. I discredited the use of phonegap after some research indicated I would have todo alot of my own development for core parts of the framework as phonegap is missing alot of the features taken for granted in the Android SDK.

#Issues

Most of the issues so far I have had with the project have been down to the use of different technologies and having issues with specific technologies, As i mentioned before i had alot of issues with getting a working android development environment with various phones having different problems to the other ones.

Other issues have been down to configuration problems on the deployment server, where the version of postgress and node.js on the server are older than the versions I am using to develop meaning some crucial features I need do not exist. 

Re learning Java has been somewhat difficult as well and learning how Android works with the use of activities, fragments and intents and how they all work together to generate a UI.

#Questions

