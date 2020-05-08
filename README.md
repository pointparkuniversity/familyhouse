# Notifications to be sent to the IOS & Android App from NodeJS
This serves as an example of multiple things.
- How to send notifications via NodeJS to the service
- How to use node scheduler to schedule a notification to be sent based on the date and time of day

## Current Version
1.0

## Software Used
Utilized PostMan for both get, post and put calls.
https://www.postman.com/

## Libraries used

#### [Libraries](https://www.npmjs.com/)
```
JavaScript
Express
Body-Parser
Rest-Api
Node-Scheduler
```
## Scheduler
```
var schedule = require('node-schedule');
var year = 2020;
var month = 04; //0=Jan,1=Feb,2=Mar,3=Apr,4=May etc;
var day = 06; //day
var hour = 22;
var minute = 40;

var date = new Date(year, month, day, hour, minute, 0);

var j = schedule.scheduleJob(date, function(){
  console.log('Sent Notification');
  sendNotification(message);
});
```
Variables:

```
var schedule = require('node-schedule');    // Required NPM Package to be used
var year = 2020; // Year
var month = 04; //0=Jan,1=Feb,2=Mar,3=Apr,4=May etc;
var day = 06; //day
var hour = 22; // Hour
var minute = 40;...' // Minute
```
```
Execute Table Creation Script 'CreateDatabaseEnvironment.sql'
```
Schedule Job:
```
  var date = new Date(year, month, day, hour, minute, 0); // Declare the variable to use the new date for scheduling
  var j = schedule.scheduleJob(date, function(){  // Schedule the Job 
    console.log('Sent Notification'); // Write to the console
    sendNotification(message); // Call the method
});
```
Params:
```
 var options = {
    host: "onesignal.com",          // Host of the service utilizing
    port: 443,                      // Port #
    path: "/api/v1/notifications",  // Path
    method: "POST",                 // API Method
    headers: headers
  };
```
Message to be sent as notificiation:
```
 var message = {
  app_id: appid,    // AppID
  contents: {"en": "Point Park Students are at the kitchen"}, // Title of the message
  headings: {"en": "Meet the Point Park Staff"},  // Body of the notification message
  ios_attachments: {"id1": "https://familyhouse.it.pointpark.edu/images/sammy.png"}, //Send Image with notification
	url: "https://familyhouse.org", //URL originates from
  included_segments: ["All"]  // Who will receive the messages. All = All subscribers
};
```
Sending a message to an Android Device: (Adding another section that allows this to use Authorization/App_ID. The id will be differ betweeen two OS (IOS/Android)
```
 var headers = { "Authorization": "Input your Android API Key here"
 var message = { app_id: "Android App ID Key"
```
Posting a Message in PostMan:
- URL to send a Post Message as per Rest End Points
- JSON Message based on what is able to be sent to the route

## How to test the sending of messages via PostMan
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/Notifications_Postman_.png)

## Required Headers
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/Notifications_Headers.png)

## Successful Message when a notification is sent
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/Notifications_SuccessMsgSent.png)

## Successful Message received from an iphone
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/IOSN.jpg)

## Successful Message received from an Android
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/AndroidNot1.png)

## Successful Message received from an Android
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/AndroidNot2.png)

## Successful Message received from an Android
![Notifications PostMan Post Example](https://familyhouse.it.pointpark.edu/images/AndroidNot3.png)
