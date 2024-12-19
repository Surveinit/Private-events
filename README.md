# Private Events

## Description
Private Events is a web application that allows users to create and attend events. It demonstrates the functionality of associations between models in a Ruby on Rails application.

## Features
- Users can sign up and log in.
- Users can create events.
- Users can view events they are attending and events they have created.
- Events are categorized as past or upcoming based on their date.

## Technologies Used
- Ruby on Rails
- HTML
- CSS
- PostgreSQL

## Setup Instructions

### Prerequisites
- Ruby (version 3.0.0 or higher)
- Rails (version 7.0.0 or higher)
- Bundler
- Git

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/Surveinit/Private-events.git
   cd Private-events
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Run the Rails server:
   ```bash
   rails server
   ```

5. Open the application in your browser at:
   ```
   http://localhost:3000
   ```

## Usage
- Sign up or log in with your credentials.
- Create a new event and specify the date.
- View the list of events you are attending or have created.
- Explore past and upcoming events.

Feel free to contribute to this project by submitting issues or pull requests!
