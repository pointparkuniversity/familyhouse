# Notifications to be sent to the IOS App from NodeJS
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

# Services
## **Family House Rest End Points** /

*List a single entry selected at random*

### Rest End Points
Route | Method | Description
| --- | --- | --- 
| /api/v1/faq | GET| Captures all of the FAQ Data | 
| /api/v1/faq:/faqid | GET| Captures all of the FAQ Data by id number| 
| /api/v1/linens | GET | Captures all of the Linens Data | 
| /api/v1/linens:/linenid | GET | Captures all of the Linens Data by linenid number | 
| /api/v1/events | GET | Captures all of the Events Data | 
| /api/v1/events:/eventid | GET | Captures all of the Events Data by eventid number | 
| /api/v1/linens | POST | Add new linen data (HouseName, RoomNumber, Guests, LinenType) | 
| /api/v1/events | POST | Add new event data(Data Category, Location & Message) | 
| /api/v1/events:/eventid | PUT | Updates the DateCategory, Location and or Message by eventid| 


## Scheduler
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
  included_segments: ["All"]  // Who will receive the messages. All = All subscribers
};
```
Posting a Message in PostMan:
- URL to send a Post Message as per Rest End Points
- JSON Message based on what is able to be sent to the route
- Callback Message from the service that the message was accepted

