# Intro to Model View Controller

- An ancient design pattern for applications that display information and take user input
- Developed in the 1970s by Smalltalk programmers for desktop apps
- Has taken off in popularity as a design pattern for the web
- Many frameworks, including RoR, follow the MVC pattern

### Model
- Describes domain logic (app logic and rules)
- Independent of the user interface

### View
- Presentation version of the model
- All a view understands is stuff about how to show a model

### Controller
- Keeps the view and the model separate
- Processes input
- Communicates with the model based on input
- Outputs updated view
