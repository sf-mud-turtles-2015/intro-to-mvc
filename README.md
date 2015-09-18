# Intro to Model View Controller

- An ancient design pattern for applications that display information and take user input
- Developed in the 1970s by Smalltalk programmers for desktop apps
- Has taken off in popularity as a design pattern for the web
- Many web frameworks, including Ruby on Rails, follow the MVC pattern
- MVC is all about separation of concerns, it helps us seperate domain logic from user interface

### Model
- Describes domain logic (app rules and behavior, or business logic)
- Independent of the user interface
- Sometime a model is also responsible for persistence (storing and retreiving app data)

### View
- Presentation version(s) of the model
- Outputs information to the human
- All a view knows is how to show a model

### Controller
- Keeps the view and the model separate
- Processes input
- Communicates with the model based on input
- Outputs updated view
