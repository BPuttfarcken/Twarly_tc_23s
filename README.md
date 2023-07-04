# Twarly

Presenting Twarly: This App helps to reduce waste at events and fairs by providing a digital alternative to physical tickets, flyers, business cards and maps. You have everything you need at one place with your Twarly app.

## How to use the app

1. Create a log-in account
  - you will be directed to the homescreen

2. Set up your account
  - press the default profile picture at the top right corner
  - press "edit profile"
  - here you can edit your profile picture, display name, city, job, add a bio and enter your ticket code for the entry ticket
  - confirm by pressing "save changes"
  - press the arrows at the top left corner to get back to the homescreen
    
3. Homescreen
  - the homescreen displays the total and idividual waste-saving counter for the event
  - you can also switch to the CO2-saving counter by pressing "Display Co2" or swiping to the left
  - the QR-code on the homescreen contains the individual user ID of your account
  - others can scan this code to connect with you some of the account information (name, city, job, bio) will be displayed
  - the "scan" button opens a QR-code scanner
  - with this scanner flyer, business cards, and account-qr-codes can be scanned

4. Ticket
  - the button on the bottom far left leads to the ticket
  - if the ticket code you entered in the account settings matches a ticket in the ticket database this ticket will be displayed here
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

5. Wallet
  - the wallet can be accessed by pressing the button on the bottom mid-left
  - all collected flyers and business cards are collected here
  - you can see the full version of the flyer/business card by pressing on the preview field
  - you can exit the inspect mode by pressing at the top part or swiping down
  - the plus button on the bottom right corner opens the QR-code scanner again to add items to your wallet
  - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right

6. Map
   - the map can be accessed by pressing the button on the bottom mid-right
   - you can tap on the map to zoom in and out
   - you exit the inspect mode by pressing the "x" in the top left corner
   - the button "sow all exhibitors" is currently not enabled but would be connected to a page of all exhibitors in the future
   - you can get back to the homescreen by pressing the arrow on the top left corner or swiping right
  
7. Chat
  - the chat feature, accessed by the button on the bottom far right, is currently not available

8. Scanning
  - if you scan a flyer, business card or account-qr-code successfully a new page will load with the digital version of the scanned item
  - you can "pick up" the item or "cancel"
  - in case you pick up the item you will be redirected to the wallet
  - in case you cancel you will be redirected to the homescreen

## Database

The database was set up using Firebase. Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase and Google Cloud.

Currently the app takes information primarly from three different databases

### User information

The database "TicketListe" contains all the account specifc data as pictured below.
![TicketListe](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/fbca5f04-99b9-45ab-8344-8d4a77bf84e5)

The user ID (uid) is generated during the account set up and can not be changed and is therefore an unique identifier for the specific account. Most of the other entrys can be changed by the user in the settings of the app.

The database "TicketDatenbank" contains the information of the sold event tickets. This database has to be set up by the organizer of the event or fair.
![TicketDatenbank](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/3d8dbf99-4c6f-4f87-9cab-61797c276dd4)

The event organizer can sell the tickets online and send the "TicketNO" to the customer. The customer can enter the "TicketNO" in the account settings of the app. If the "TicketNO" matches the "TicketCode" of one entry in the "TicketDatenbank" the ticket and all of the other ticket information will be displayed in the app.

The database "WasteCounter" contains information of scanning events.
![WasteCounter](https://github.com/BPuttfarcken/Twarly_tc_23s/assets/138579475/dbf26353-ac46-46cf-8f1f-09b99b08084f)

When a user picks up a digital flyer or business card, the database receives an entry. The sum of all entries results in the total waste saved counter displayed at the homescreen of the app. The indiviual waste saved can be calculated by the sum of all entries with the account specific "userID". 




    
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
