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

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/bf0b5884-e780-4eb5-b414-5efb290e0f44

3. Homescreen
  - the homescreen displays the total and idividual waste-saving counter for the event
  - you can also switch to the CO2-saving counter by pressing "Display Co2" or swiping to the left
  - the QR-code on the homescreen contains the individual user ID of your account
  - others can scan this code to connect with you some of the account information (name, city, job, bio) will be displayed
  - the "scan" button opens a QR-code scanner
  - with this scanner flyer, business cards, and account-qr-codes can be scanned

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/592c9e2d-27e8-4b7d-9253-63c9d0f51a50

4. Ticket
  - the button on the bottom far left leads to the ticket
  - if the ticket code you entered in the account settings matches a ticket in the ticket database this ticket will be displayed here
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/f5a00b9a-3410-4a0f-b1f5-78b7fa04bc7d

5. Wallet
  - the wallet can be accessed by pressing the button on the bottom mid-left
  - all collected flyers and business cards are collected here
  - you can see the full version of the flyer/business card by pressing on the preview field
  - you can exit the inspect mode by pressing at the top part or swiping down
  - the plus button on the bottom right corner opens the QR-code scanner again to add items to your wallet
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/ccadc51f-cea7-43e8-b8a6-526c1bdd5c38

6. Map
   - the map can be accessed by pressing the button on the bottom mid-right
   - you can tap on the map to zoom in and out
   - you exit the inspect mode by pressing the "x" in the top left corner
   - the button "sow all exhibitors" is currently not enabled but would be connected to a page of all exhibitors in the future
   - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/9d7af79e-522d-446f-946e-5c6daaa175fa

7. Chat
  - a look a like prototype of the chat feature can accessed by the button on the bottom far right

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/c51196f2-9de2-4b87-a7f5-533baccdc05d

8. Scanning
  - if you scan a flyer, business card or account-qr-code successfully a new page will load with the digital version of the scanned item
  - you can "pick up" the item or "cancel"
  - in case you pick up the item you will be redirected to the wallet
  - in case you cancel you will be redirected to the homescreen

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/7b39dacf-5717-4e5e-9cce-9decdcdf352f

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/31d9dd3f-0bed-4230-97eb-0696b824a6f0

9. Achievements
  - you can access the achievement page by pressing the icon on the top left corner of the homescreen
  - the collectible achivements are diplayed by default
  - you can get further information on how to collect the achievement by tapping onto the achivement
  - by swiping right or tapping on "leaderboard" you can see the leaderboard of individual waste savers
  - the achievement page is currently not functional programmed and shows how it could be realized in the future

https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/5581a5d7-4752-4f61-a2a7-d5ac24c437de

## Databases

The database was set up using Firebase. Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase and Google Cloud.

Currently the app takes information primarly from three different databases

### User information

The database "TicketListe" contains all the account specifc data as pictured below.
![UserDatenbank](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/e5531348-8cbb-4a1b-b624-2ef4559b611c)

The user ID (uid) is generated during the account set up and can not be changed and is therefore an unique identifier for the specific account. Most of the other entrys can be changed by the user in the settings of the app.

### Tickets

The database "TicketDatenbank" contains the information of the sold event tickets. This database has to be set up by the organizer of the event or fair.
![TicketDatenbank](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/511436e9-ac03-4cd4-a01d-a045d29d18d5)

The event organizer can sell the tickets online and send the "TicketNO" to the customer. The customer can enter the "TicketNO" in the account settings of the app. If the "TicketNO" matches the "TicketCode" of one entry in the "TicketDatenbank" the ticket and all of the other ticket information will be displayed in the app.

### Waste counter

The database "WasteCounter" contains information of scanning events.
![WasteCounterDatenbank](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/2eb989a8-fa41-4f33-a847-0578b748005f)

When a user picks up a digital flyer or business card, the database receives an entry containing all information shown in the picture above. The sum of all entries results in the total waste saved counter displayed at the homescreen of the app. The indiviual waste saved can be calculated by the sum of all entries with the account specific "userID". Custom functions were used to calculate the sums of the entries.

Example of custom function code for summing up the individual waste weight saved:
![sumUserwasteweight](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/98162f12-aba1-40c2-8ca1-32f081624a9c)

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
