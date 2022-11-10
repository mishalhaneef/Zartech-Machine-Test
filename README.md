# Zartek Machine Test

 This is a machine test for [Zartek.com](https://www.zartek.in/)

:red_circle: Important Note
 ```
 I tried the API you gave on the document. But the API link has some problem . Tried to fix that... But didn't work.
The API link is working fine. I checked that in postman. But when I tried to call inside the code it didn't work.
I provide that code also in the main channel of this repository. But that code will shows errors. You can check the code.
 
 So I found another API... I asked permission before that with the HR. Not the same as this with the category list and all. 
 But I managed to implement that as you said.
 
 ```
- working code is in ‘working-api’ channel.
- Code with the api that you gave in the ‘main’ channel



## Task
- Google Authentication
- Phone Authentication
- API integration
- Checkout screen
- Side Navigation bar


# Techstacks I used

- Flutter - Mobile Development sdk by google
- provider statemanagement - easy to implement and code
- thecocktaildb Api - Drink api
- MVVM - model-view-view_model architecture. it is easy to understand the code 
- http - future-based library for making HTTP requests
- Firebase Auth - google cloud hosting service


## Run The Project

Go to terminal and run the command
> code .

> flutter emulators --launch < emulator id >

> flutter run

### Install and test the application

- To install on emulator from your IDE try this command
> flutter build apk --split-per-abi    
> flutter install 

Or try on your physical device. download from [here](https://drive.google.com/file/d/17Hcdz7cAc4e6MjvqZRE2_-AF9d-hW_vL/view?usp=share_link)


## What I Did

- #### Registration Screen
Sign in with google account and with phone number. when you tap the google signin button you can select and sign in with your google account. and on the phone number authentication, you can enter your phone number, and enter the OTP from sms. 

- #### Home Screen 
Integrated thecocktaildb API, also implemented the add to cart button and also cart section with the total number of added items

- #### CheckOut Screen 
When you press the cart icon you will be redirect to to check out screen/ cart screen, there you can manage your order and also can see the total amount of those selected prodcuts. 


## How the app works

- You can login with your google account or phone number, and you will navigate to home screen. there you can add products to your cart. and you can go to the checkout screen by tapping the cart button. there you can manage and place your order

## Bugs and Problems

Facing a little problem on the check out screen when adding/removing the items. fixing it right now. 

### Trying to fix these problems right now, after I will push the code again

