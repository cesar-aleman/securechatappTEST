Alot of credit for the front-end goes to CodingNepal on Youtube. I followed his tutorial on how to set the majority of this up. I was able to 
incorporate the encrypted messages, input validation, etc. 

Please follow these steps to get the project up and running.

Go to https://github.com/cesar-aleman/securechatappTEST/tree/main/securechatapp_TEST for the 
Source files and download them as a ZIP.

1. Install (if you don't already have it) xampp. This is used for the Apache Server needed for the database. 
	-https://www.apachefriends.org/download.html and select the latest version for your OS.
	-take note of where it is being installed as you will need to know the location for step 2.

2. Once xampp is installed take the folder named 'securechatapp' and place it into the following path
	Windows: D:\xampp\htdocs (or where ever you installed xampp)
	MAC: applications\xamps\htdocs (or whoever you installed xampp) 

FOR MAC!!!
	Launch xampp and select 'Open Application Folder' then follow the step above.

3. Launch Xampp Control Panel then start the following.
	-Apache
	-MySQL 
FOR MAC!!!
	In the top bar there is an option called 'Manage Servers'. Select that and start:
	-MySQL Database
	-Apache Web Server

4. Go to http://localhost/phpmyadmin/index.php so that you can view the database GUI and you can load the .sql file to load the database.

5. Select 'New' in the left menu and in the 'Database Name' field input: 
	securechatapp

6. After you have done that, select the newly created database from the left hand side menu. Once the database is selected, in the top menu select 'Import'. 
   Once in the import menu, select 'Choose File' and select the file name 'securechatapp.sql' that is found in the folder where the other source code is. 
   Select 'Go' in the bottom right corner. The database has been created and you should see it in the left hand menu now!

7. Now go to http://localhost/securechatapp/login.php and begin your analysis!!

FOR MAC USERS: unfortunately with the profile picture setup it requires that the picture be saved locally, and this requires additional permission. 
I would rather not mess with your permissions so please use this pre-created account:
	username: mac@nopics.com
	password: password

Once you create an account you can then create a second one to simulate messaging between two people. Once you have done so and sent a couple messages, you
can go to the myphpadmin page to see the inputted items in the database. You will see that the passwords are encrypted as well as the messages. To do so you
just have to click on the tables 'users' and 'messages' to see their contents. 

Thank you! 
If you have any issues or question please reach out to me!


	
