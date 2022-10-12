# NavIC_RECEIVER_Automation

This is a Linux based shell script to Automatically download files from NAVIC(Navigation with Indian Constellation) Receiver via SCP and upload it to server via TCP daily at a specific time.

To automatically schedule(running a progam at a specific time periodically) of not only above, but any kind of a program, you can use the following commands to create a <b>CRONJOB</b> :-  

⭐ crontab -e  
⭐ (Minute) (Hour) (Day of the Month) (Month of the Year) (Day of the Week) - first 5 parameters   
⭐ Below is an example to run a program everday at 10:00 o'clock  
⭐ 0 10 * * * [path to program/script to execute] >> [path to backup.log for storing logs] 550 2>%1  
⭐ Then just hit ENTER  
⭐ Done!  
 
 To verify if the cron is successfully created or not, you can use this command :-  
 ⭐ crontab -l
