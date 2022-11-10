# Zartek Machine Test

 This is a machine test for [Zartek.com](https://www.zartek.in/)'s machine test

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
- login screen
- user dashboard
- api integration
- Better UI
- provider state management
- mvvm architecture


# Techstacks I used

- Flutter - Mobile Development sdk by google
- provider statemanagement - easy to implement and code
- Google Api - book api from google
- MVVM - model-view-view_model architecture. it is easy to understand the code 
- http - future-based library for making HTTP requests


## Run The Project

Go to terminal and run the command
> code .

> flutter emulators --launch < emulator id >

> flutter run

### Install and test the application

- To install on emulator from your IDE try this command
> flutter build apk --split-per-abi    
> flutter install 

Or try on your physical device. download from [here](https://drive.google.com/file/d/1h0tQGT9v0kWYFVQ-fTNNGQzHMiqYmfuL/view?usp=sharing)


## What I Did

- #### Registration Screen
A Simple registration screen with username, age, and favorite book. And this data will be displayed in the dashboard, and also in the home page drawer.

- #### Home Screen 
Integrated google book API, and fetches the data to book list sections.

- #### Book Screen (Second Screen)
Used matrix 4 for the book swiping effect. matrix4 is a 4x4 matrix. With a 4x4 matrix, we can build 3d animations and things on 2d surfaces. We need a 4d matrix to transform an object in 3 dimensions.

- #### Audio Book Screen
Tried to use the audio_player package but faced some bugs. So I didn't implement the audio player into this app, but you can see the UI



## How the app works

- Here you can login with your name and age. And you will be redirected to dashboard, from There you can go to home page.
There you can find a button to fetch the api datas on the top right.

![Fetch API](https://lh3.googleusercontent.com/Bm-AgNjKfx-Jh_1ksYK-771qcJ5dfcLLpZDS9zFNLfB-sD1vE5RrDcpykBoIVKQHuolcAl-hUY69SYcgv7wbm4RuggFA-eevLSN_iEORnya02u0UgNtnKSuD2dnLIrKXFCI-ZOwamSJNzjCuhjyFLkYu2r3uIA692b0Lr_Sk3CW7si_T48uGpAA3KizJXRZuUdegjcw3hGD53pjVDrbV0seiLVFtIYLYXwiq6qbMJTzVImlWTIvYSBZuYPpmstLG69hzmwEVmIG4B698Jzy3URqeAVme4qTFasqFUkTFI1UAmNrnnK_f1RyL97rflTlK4dGP-ChT-TgZkpcLC4bWH0dujWSBkGYHpzAT_xJ9r0LlPsyhSXDdxmkvQ8TQ3Q0UPoS40SWO-4f_juqD_7iqYCLyqzXVKv1cDryW_cCQFREZIxsNe4CdKl-AYSKNSDxcj8ROxY7G6M7R2u7gNg0nIWgloVnd5fCwtPq-YYDnYM5AW4aYgicymkaT9zig-VeCq7x4QM7B-LEOw62-96sRFZBM7ZqCS9Q9p9wbChV-dp4HcZyUet4BHlyMv_v5pFyfI4q8ZXM2xu-YXCMRvN4UkBo6058zcs-RpNTj8fYrL2CjxJp6t89RmNrj5rharrSXXQGSxvnRVIe4rlK4NC5NzBt7UxLkAWP2yHfTrVY60vrNSQuUEJQ7HcwjogeyYWJTbrEUAF3DKx-DNvGdf4zFte8UICcQtoc3a0_jr8cqxCSbDyNcgxUVWbEcbxSCNd5c46Z2e1RSDNXD47_dNq1dV2JrN5BB6qg_PS1bs3SixLIF9rnZelR7diZ3QLyqnh_4AhEmQtxoJe1WWTcMzByP3yULA4VU7aQYy2fhXg2Qnkwh-6M5nLK6l4hvMdCStyWL3c93wBDdTZfeOrGfvojmCorkrk0NNJh7mC4nO9eDeedH7fUvPll_x9mwiJ5H3dTMh4lJr1a48Lk0Irc883nTTZRv07qsUoewjVjRchAembF97LOw1I8XkqXXjPWBMTrHaszsfrXDLkBNSYIsVaJtcQrOPL-yc-PeL-vQVPCwtFuDmJ0OxR_8M-bZ0SW-ggu_39nSQoqv73xCl2FC8O2GOa4wPA=w643-h687-no?authuser=1)


## Bugs and Problems

In the audioplayer faces a lot of bugs and issues. And I dropped the idea due to lack of time.
tried to implement another book category for the bottom section (for you section) of the application. But faces some issues. Trying to implement that now. You can see the two different codes for implementing two categories in the repository folder

### Trying to fix these problems right now, after I will push this again

