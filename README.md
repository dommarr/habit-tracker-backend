# Habit Tracker

A web app to log and track habits you want to work on.

## User Stories

```md
As a user, I want to be able to sign up, sign in, sign out, and change my password.
As a signed-in user, I want to add a new habit.
As a signed-in user, I want to edit existing habits.
As a signed-in user, I want to record if I did a habit daily.
As a signed-in user, I want to see the number of days in a row I have completed a habit.
```

## Tables

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

## ERD

![ERD](https://i.imgur.com/RvXkEy2.png "ERD")

## Wireframes

![Sign Up](https://i.imgur.com/FegJYap.png "Sign Up")
![Sign In](https://i.imgur.com/O9R31eF.png "Sign In")
![Home](https://i.imgur.com/jDAHgFK.png "Home")
![Menu](https://i.imgur.com/jrrMM65.png "Menu")
![Create Habit](https://i.imgur.com/ad5Ql8s.png "Create Habit")
