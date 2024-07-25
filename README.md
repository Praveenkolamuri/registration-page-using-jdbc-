# Anime Management System

The Anime Management System is a Java-based web application designed to manage anime records. It allows users to view, add, update, and delete anime entries, providing an easy way to manage information about different anime series.

## Features

- **View Anime List**: Display a list of all anime records.
- **Add Anime**: Add new anime records to the database.
- **Update Anime**: Update details of existing anime records.
- **Delete Anime**: Remove anime records from the database by ID or email.

## Technologies Used

- **Java**: Core language used for development.
- **Java Servlets and JSP**: To handle HTTP requests and generate dynamic web content.
- **MySQL**: Used as the database to store anime records.
- **JDBC**: For connecting and executing queries with the MySQL database.
- **HTML/CSS**: For the frontend interface.

## Project Structure

- **`animeworlddbconnections`**: Contains the `animeconnections` class for handling database connections.
- **`animeworldmodels`**: Contains the `animemodels` class for representing anime data.
- **`animeworldservices`**: Contains the `animeservices` class that implements business logic for managing anime.
- **JSP Pages**: Used for displaying data and forms to the user.

## Setup and Installation

### Prerequisites

- **Java Development Kit (JDK)**: Make sure you have JDK 8 or later installed.
- **Apache Tomcat**: Install Apache Tomcat for deploying the web application.
- **MySQL Database**: Ensure MySQL is installed and running, with a database named `animeworld`.

### Installation Steps

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/Praveenkolamuri/anime-management-system.git
   ```

2. **Open the Project**:
   - Open the project in your preferred Java IDE (e.g., IntelliJ IDEA, Eclipse).

3. **Set Up the Database**:
   - Import the SQL file provided in the repository to set up the `animeworld` database schema and tables.

4. **Configure Database Credentials**:
   - Edit the `animeconnections` class to update the database URL, username, and password if they differ from the default.

   ```java
   private static String url = "jdbc:mysql://localhost:3306/animeworld";
   private static String username = "root";
   private static String password = "Praveen#1221";
   ```

5. **Deploy to Apache Tomcat**:
   - Configure your IDE to deploy the project to Apache Tomcat.
   - Start the server and deploy the application.

6. **Access the Application**:
   - Open your web browser and go to `http://localhost:8080/anime` to use the application.

## Usage

### Viewing Anime List

1. Navigate to the **Home Page** to view a list of all anime entries.
2. The table displays the ID, Name, Email, Password, and other relevant details for each anime.

### Adding New Anime

1. Access the **Registration Page** to add new anime entries.
2. Fill out the form with the necessary details and submit it.

```html
<form action="register" method="post">
    <input type="text" placeholder="Enter name" name="name">
    <input type="email" placeholder="Enter email" name="email">
    <input type="password" placeholder="Enter password" name="password">
    <input type="password" placeholder="Enter confirm password" name="confirmpassword">
    <button type="submit">Register</button>
</form>
```

### Updating and Deleting Anime

- Use the **Update** button to modify existing anime records.
- Use the **Delete by ID** or **Delete by Email** button to remove records.

### Sample JSP for Viewing Anime List

```jsp
<%@page import="java.util.List"%>
<%@page import="animeworldmodels.animemodels"%>
<%@page import="animeworlddbconnections.animeconnections"%>
<%@page import="animeworldservices.animeservices"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Anime List</title>
</head>
<body>
    <h1>Welcome</h1>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Confirm Password</th>
                <td>Update</td>
                <td>Delete by ID</td>
                <td>Delete by Email</td>
            </tr>
        </thead>
        <tbody>
            <%
            animeservices an = new animeservices(animeconnections.getconnection());
            List<animemodels> ll = an.getall();
            for(animemodels a : ll) {
            %>
            <tr>
                <td><%=a.getId()%></td>
                <td><%=a.getName()%></td>
                <td><%=a.getEmail()%></td>
                <td><%=a.getPassword()%></td>
                <td><%=a.getConfirmpassword()%></td>
                <td>
                    <button>Update</button>
                </td>
                <td>
                    <a><button>Delete by ID</button></a>
                </td>
                <td>
                    <a><button>Delete by Email</button></a>
                </td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</body>
</html>
```

## License

This project is open-source and available under the MIT License.

## Author

- **K. Sai Praveen** - [GitHub](https://github.com/Praveenkolamuri) | [LinkedIn](https://www.linkedin.com/in/sai-praveen-kolamuri-7b449822a/)
