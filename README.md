# Habit Hero

A web app to log and track habits you want to work on. Modeled on the Streaks app.

Users can add habits to track. Every day the user can +1 the habit to track how many days in a row they completed the habit.

### Links
- [Application](https://dommarr.github.io/habit-tracker-frontend/)
- [Back end](https://dommarr-habit-tracker.herokuapp.com/)
- [Front end repo](https://github.com/dommarr/habit-tracker-frontend)
- [Back end repo](https://github.com/dommarr/habit-tracker-backend)

### Development
1. Start with the back end.
  1. Build out database and api.
2. Develop front end, working through each CRUD action.
  1. Edit backend as needed (CRUD authentication, etc.)
3. Once the above is complete, shift to general (non-api) front end functionality.
4. Then focus on styling.

### Technologies
- HTML
- CSS
- Bootstrap
- Handlebars
- Javascript
- jQuery
- AJAX
- Ruby
- Rails

### User Stories

```md
As a user, I want to sign up & auto sign in.
As a user, I want to sign in.
As a signed-in user, I want to change my password.
As a signed-in user, I want to sign out.
As a signed-in user, I want to add a new habit.
As a signed-in user, I want to edit existing habits.
As a signed-in user, I want to delete existing habits.
As a signed-in user, I want to record if I did a habit daily.
As a signed-in user, I want to see the number of days in a row I have completed a habit.
```

### Database

The application will have a simple one to many relationship between two tables: users and habits.

```md
Table: Users
- email: string
- first_name: string
- last_name: string
- id: index

Table: Habits
- habit_title: string
- streak: integer
- habit_id: index
```

### ERD

![ERD](https://i.imgur.com/RvXkEy2.png "ERD")

### Wireframes

![Sign Up](https://i.imgur.com/FegJYap.png "Sign Up")
![Sign In](https://i.imgur.com/O9R31eF.png "Sign In")
![Home](https://i.imgur.com/jDAHgFK.png "Home")
![Menu](https://i.imgur.com/jrrMM65.png "Menu")
![Create Habit](https://i.imgur.com/ad5Ql8s.png "Create Habit")

### Unsolved Issues / Future Features
- Improve styling.
- Set timebound streaks, so it resets to zero if the habit has not been completed in a day.
- Add icons.
- Track longest streak for every habit.
- Show percent completion over time.
