# Message Searcher

Message Searcher is a Ruby on Rails web application designed to provide a simple yet powerful message search functionality. It allows users to search for messages based on content and view the most searched terms per IP address. This application uses Rails 7 and is deployed on the onRender.com platform.

## Key Features
- Search functionality for messages.
- Display of most searched terms, tracked per user IP address.
- Real-time messages display as users type in their search queries.
- Utilization of JavaScript for IP address detection due to middleware handling in the deployment environment.
- Only Rails and pure JavaScript

## Installation & Setup
To get the project up and running on your local machine, follow these steps:

### 1) Clone the Repository

```
git clone https://github.com/lfmnovaes/message_searcher.git
cd message_searcher
```

### 2) Install Dependencies
```
bundle install
```

### 3) Database Setup
```
rails db:create
rails db:migrate
```
### 4) Seed the Database
- The project uses the 'faker' gem to generate seed data for the database.
```
rails db:seed
```
### 5) Start the Rails Server
```
rails server
```

Visit http://localhost:3000 in your browser to view the application.

## Usage
- **Search Messages**: Enter a search term in the provided search box. Messages containing the term will be displayed in real-time.
- **View Search Terms**: Navigate to the 'View Search Terms' page to see the most searched terms from your IP address.

## Deployment
- The application is deployed on onRender.com.
- Due to the use of middleware in the deployment environment, the traditional Rails method of detecting user IPs (request.remote_ip) was inconsistent. Therefore, I've implemented a JavaScript-based solution to detect and store the user's IP address in localStorage. This stored IP is then passed to the Rails application via parameters for tracking search terms.

## Contributing
Contributions to the Message Searcher project are welcome. Please follow the standard fork-and-pull request workflow.

## License
[MIT License](./LICENSE) - Feel free to use and modify the code as per your needs.
