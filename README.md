# Twarly

Presenting Twarly: This App helps to reduce waste at events and fairs by providing a digital alternative to physical tickets, flyers, business cards and maps. You have everything you need at one place with your Twarly app.

## How to use the app

1. Create a log-in account
  - you will be directed to the homescreen

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/3bb2c460-4ffe-4f55-87fa-3d93276a8b92

2. Set up your account
  - press the default profile picture at the top right corner
  - press "edit profile"
  - here you can edit your profile picture, display name, city, job, add a bio and enter your ticket code for the entry ticket
  - confirm by pressing "save changes"
  - press the arrows at the top left corner to get back to the homescreen

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/34b946ca-e215-487d-95aa-3e5c3db0e596

3. Homescreen
  - the homescreen displays the total and idividual waste-saving counter for the event
  - you can also switch to the CO2-saving counter by pressing "Display Co2" or swiping to the left
  - the QR-code on the homescreen contains the individual user ID of your account
  - others can scan this code to connect with you some of the account information (name, city, job, bio) will be displayed
  - the "scan" button opens a QR-code scanner
  - with this scanner flyer, business cards, and account-qr-codes can be scanned

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/d83dde77-b967-4db0-adf8-73918299043b

4. Ticket
  - the button on the bottom far left leads to the ticket
  - if the ticket code you entered in the account settings matches a ticket in the ticket database this ticket will be displayed here
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/534b6f12-721b-41c0-b673-6a9c3337e184

5. Wallet
  - the wallet can be accessed by pressing the button on the bottom mid-left
  - all collected flyers and business cards are collected here
  - you can see the full version of the flyer/business card by pressing on the preview field
  - you can exit the inspect mode by pressing at the top part or swiping down
  - the plus button on the bottom right corner opens the QR-code scanner again to add items to your wallet
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/918dafdb-1b6c-4747-b72e-9ca4d947f6b8

6. Map
   - the map can be accessed by pressing the button on the bottom mid-right
   - you can tap on the map to zoom in and out
   - you exit the inspect mode by pressing the "x" in the top left corner
   - the button "sow all exhibitors" is currently not enabled but would be connected to a page of all exhibitors in the future
   - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/bb06884c-5b7d-4467-9f37-25bc0922ca42

7. Chat
  - a look a like prototype of the chat feature can accessed by the button on the bottom far right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/5341bd81-2218-4553-8d12-31fef61be8da

8. Scanning
  - if you scan a flyer, business card or account-qr-code successfully a new page will load with the digital version of the scanned item
  - you can "pick up" the item or "cancel"
  - in case you pick up the item you will be redirected to the wallet
  - in case you cancel you will be redirected to the homescreen

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/a7349b99-7193-451b-a2de-4047cc374c75

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/db3a634d-2060-41e9-9208-8aecb9fd4929

9. Achievements
  - you can access the achievement page by pressing the icon on the top left corner of the homescreen
  - the collectible achivements are diplayed by default
  - you can get further information on how to collect the achievement by tapping onto the achivement
  - by swiping right or tapping on "leaderboard" you can see the leaderboard of individual waste savers
  - the achievement page is currently not functional programmed and shows how it could be realized in the future

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/c4ee5557-edcd-493c-8f32-fabbc647cb56

## Databases

The database was set up using Firebase. Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase and Google Cloud.

Currently the app takes information primarly from three different databases

### User information

The database "TicketListe" contains all the account specifc data as pictured below.
![TicketListe](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/fbca5f04-99b9-45ab-8344-8d4a77bf84e5)

The user ID (uid) is generated during the account set up and can not be changed and is therefore an unique identifier for the specific account. Most of the other entrys can be changed by the user in the settings of the app.

### Tickets

The database "TicketDatenbank" contains the information of the sold event tickets. This database has to be set up by the organizer of the event or fair.
![TicketDatenbank](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/3d8dbf99-4c6f-4f87-9cab-61797c276dd4)

The event organizer can sell the tickets online and send the "TicketNO" to the customer. The customer can enter the "TicketNO" in the account settings of the app. If the "TicketNO" matches the "TicketCode" of one entry in the "TicketDatenbank" the ticket and all of the other ticket information will be displayed in the app.

### Waste counter

The database "WasteCounter" contains information of scanning events.
![WasteCounter](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/dbf26353-ac46-46cf-8f1f-09b99b08084f)

When a user picks up a digital flyer or business card, the database receives an entry containing all information shown in the picture above. The sum of all entries results in the total waste saved counter displayed at the homescreen of the app. The indiviual waste saved can be calculated by the sum of all entries with the account specific "userID". Custom functions were used to calculate the sums of the entries.

Example of custom function code for summing up the individual waste weight saved:
![image](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/70b77460-ec6a-4551-ab7b-6e14fc6e40fd)

## Scanning

You can scan QR-Codes with Twarly to pick up flyers and business cards. For demo purposes this function is currently set up with a simple if-then logic. A connection with a flyer and business card database would be suggested for the development in the future. You can also connect with people through scanning their personal QR-code on the homescreen. The homescreen QR-code contains information about the unique user ID. The QR-code scanner queries the user database. The app generates a business card with some of the account information (for example name, e-mail adress, job, ...) if a user ID is scanned.


    
# Twarly

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### Getting started continued:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
