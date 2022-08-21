# users_app

Restaurant Application for Users.

## Getting Started

Each user will need to create an account in our application by filling in details like First Name, Last 
Name, Email ID, password, and profile picture. These details will be added to the firebase database and 
will be authenticated by the Firebase Authentication. 

Once the user registers, he can log in with his username and password. We have even used Form 
Validations for login. If any incorrect details are provided. An error authentication will be displayed and 
prompts the user to enter the username and password again.

The user now can see a list of available restaurants in the home page. Each restaurant will have a 
menu with dishes and their price from which the customer can select. The user can see all the menus of
the restaurants. Once the customer selects a dish, it will be added to the cart and the total cart value will 
be displayed. Once added item cannot be added to cart again. If we try to add it will show that Item 
already exists in the cart.

We are using Location API to capture the current location of the customer. After the address is 
populated, it directs to the payment page. The customer will get a message saying that the order is 
successfully placed. 

All this information i.e., user login details, his profile picture and the order details are stored in the 
firebase., and this information will be displayed in the application. Finally, the customer has an option 
to sign out of the application.
