# Quality Assurance Portfolio
- Author: Wiktor Markowicz
- [About me](#about-me)
- [Experience](#experience)
- [Tools](#tools)
- [Soft skills](#soft-skills)
- [Test scenarios](#test-scenarios)
- [SQL Practice Project – PostgreSQL & pgAdmin](#sql-practice-project--postgresql--pgadmin)
- [Testing API in Postman](#testing-api-in-postman)
- [Bugs and reports created in Jira](#bugs-and-reports-created-in-jira)
- [QA and testing Instagram accounts that I follow](#qa-and-testing-instagram-accounts-that-i-follow)


## About me ℹ️
Hello, I am Wiktor Markowicz. In 2025, I graduated my master's degree in Computer Science. Testing came into my life quite unexpectedly. While studying, I was looking for an internship as a web developer. One of my messages was answered by a company that offered me a position as a software tester instead of a web developer. Without thinking twice, I agreed. It was a bull's eye! My accuracy, meticulousness, and attention to detail proved to be very useful. Since then, I have been exploring topics related to quality and software testing.

Link to my LinkedIn profile: [LinkedIn (click)](https://www.linkedin.com/in/wiktor-markowicz-3449481b5).

## Experience
Working as a software tester at [Ovoo](https://ovoo.pl/) was my first professional position related to quality control. I significantly developed both my technical and soft skills, such as strong analytical thinking, and gained some knowledge on how to create test cases, how to handle and add tickets on Redmine, and how to create user manuals.

## Tools
✅ [Redmine](https://www.redmine.org/), [Jira](https://www.atlassian.com/pl/software/jira) - for creating reports;

✅ [Slack](https://slack.com/) - for communicating in team;

✅ [Chrome Devtools](https://developer.chrome.com/docs/devtools?hl=pl) - to provide more accurate error messages;

✅ [Postman](https://www.postman.com/) - API testing;

✅ [SQL](https://www.w3schools.com/sql/) - query language that allows you to check whether the application is saving data correctly;

## Soft skills
- Strong teamwork skills;
- Effective communication;
- Willingness and motivation to learn and self-develop;
- Ability to work according to strict guidelines;
- Attention to detail and accuracy.


## Test scenarios
Here are the test scenarios created for the website [Saucedemo](https://www.saucedemo.com/):
- [Google Sheets: (Click)](https://docs.google.com/spreadsheets/d/1XCoI36VJWxI9ZWLA7erLFLewxhpOUiTCQag5bftcwrY/edit?usp=sharing)

## SQL Practice Project – PostgreSQL & pgAdmin

I created a relational database using **PostgreSQL** and managed it through **pgAdmin**. 

### Database Structure
The database consists of four related tables:
- `user` – stores user information;
- `order` – tracks customer orders;
- `order_item` – contains order details;
- `product` – describes details about products.

### Tasks Completed
I completed 8 SQL exercises, including:
- Filtering data with `WHERE`
- Joining tables using `INNER JOIN`
- Aggregating results with `GROUP BY` and `HAVING`
- Sorting and limiting results

​🗓️ **ERD Diagram:** [ERD of qa_shop database](erd%20of%20qa_shop%20database.png)

🧱 **Database structure and creation commands:** [schema.sql](schema.sql)  
🧠 **SQL queries and exercises:** [queries.sql](queries.sql)  
🖼️ **Screenshots from pgAdmin:** [screenshots/](screenshots/)

## Testing API in Postman

I performed requests to the demo API: [https://reqres.in](https://reqres.in).

**Postman Collection:** All my requests are saved in the file [Postman Collection (click)](./Testing%20API%20-%20Reqres.postman_collection.json).

**Documentation:** Detailed documentation, including test descriptions, expected and actual results, and screenshots, is available in [Testing API in Postman - documentation](./Testing%20API%20in%20Postman%20-%20documentation.pdf).

### Endpoints Tested

I tested the following endpoints with different HTTP methods (GET, POST, PUT, DELETE):

- **/api/users**
  - Get all users
  - Get user by ID (positive & negative)
  - Update user details (positive & empty body)
  - Delete user by ID

- **/api/register**
  - Register user

- **/api/login**
  - Login (positive & negative scenarios)

> All requests include the required API key in the header: `"API-Key: reqres-free-v1"`.

## Bugs and reports created in Jira
Here is the link to bugs and reports, which I created during GoIT's 'QA Marathon,' in which I participated in 2023: [Github (click)](https://github.com/wiktor34306/Tests-in-Jira).

## QA and testing Instagram accounts that I follow
- [curly_it](https://www.instagram.com/curly_it/)
- [jaktestowac.pl](https://www.instagram.com/jaktestowac.pl/)
- [mentorka_testowania](https://www.instagram.com/mentorka_testowania/)
- [radwasik](https://www.instagram.com/radwasik/)
- [testerautomatyzujacy](https://www.instagram.com/testerautomatyzujacy/)
- [testerka_oprogramowania](https://www.instagram.com/testerka_oprogramowania/)
