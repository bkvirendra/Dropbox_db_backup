Prerequistes
------------

      dropbox==1.5.1
    
You can install it using pip:

      pip install dropbox==1.5.1


Setup
-----

```db_backup.sh``` is the shell script that makes use of ```pg_dump``` to get the compressed backup of the database,

```uploader.py``` is the Python script that uploads the database to the Dropbox folder, 

```client_secrets.json``` stores the credentials including app_key, app_secret, access_key and access_secret.


You need to provide the ```DB_Username``` and ```DB_Name``` in ```db_backup.sh```.


Dropbox Setup
-------------

Follow these steps to setup the Dropbox app:

1. You will need to create a Dropbox app, to get the ```App_key``` and ```App_Secret```. You can create it [here](https://www.dropbox.com/developers/apps). (select the App Type as Core and select the Permission type as Full Dropbox)

2. Once the app is successfully created, Dropbox will provide you the ```app_key``` and ```app_secret```. Then provide this ```app_key``` and ```app_secret``` in ```client_secrets.json``` (please do not share your App_Key and App_Secret publicly).

3. Then run the ```uploader.py```, it will generate an authentication link which you will need to open in your web browser. Press the Allow button, and hit Enter in the shell.

4. It will then print the ```access_key``` and the ```access_secret```, that you will need to provide in the ```client_secrets.json```

And you are done with the Dropbox setup. 


Cron Setup
----------

After that, you can setup a Cron job that will execute the db_backup.sh everyday and get your Database backup in your Dropbox folder.




The scripts all yours under creative commons license :)
