# sellers_app

Restaurant Application ( Seller side App) created usig flutter and dart, used firebase authentication, firestore database and storage API and location API

## Getting Started

Each restaurant owner will need to create an account in our application by filling in details like First Name, Last Name, Email ID, password, restaurant address, and profile picture. These details will be stored to the firebase database and will be authenticated by the Firebase Authentication. 

Once the restaurant owner registers, he can log in with his username and password. We have even used Form Validations for login. If any incorrect details are provided. An error authentication will be displayed and prompts the user to enter the username and password again.

Since it is a multivendor application, each vendor will log in with their credentials and add their own menus and items through their account for the customer to place an order through the Nearby Eateries user application.

The sellers have a menu, and they can edit their menu by adding and removing the items. If we log in through a seller account, they have the accessibility to make changes to only their menu and items page.

Finally, once the user places the order through the Nearby Eateries user application., he will see the order being reflected on his portal.

