### Conceptual Exercise

Answer the following questions below:

- What is a JWT?
JWT is a json web token.

- What is the signature portion of the JWT?  What does it do?
It is used to validate that the token is trustworthy.

- If a JWT is intercepted, can the attacker see what's inside the payload?
Yes, because it is encoded and not encrypted.

- How can you implement authentication with a JWT?  Describe how it works at a high level.
You can implement authentication by signing the token for a user that has some credentials in the payload. It works by sending the signed token to the server, validating the token, and then sending back a response.

- Compare and contrast unit, integration and end-to-end tests.
Integration testing only tests a single module or a few relat4ed modules. End-to-end testing tests the entire system. Unit testing tests individual components, one at a time.

- What is a mock? What are some things you would mock?
A mock is a fake object that can be used to test the behavior of a system. Someone would mock a database, network requests, or other external systems. 

- What is continuous integration?
The practice of merging all developers' working copies to a shared mainline several times a day.

- What is an environment variable and what are they used for?
An enviornment variable is a variable that is used to store app secrets and other sensitive information. They are used to store information that is not secure outside of your app.

- What is TDD? What are some benefits and drawbacks?
TDD stands for Test Driven Development. Some benifits are that it makes your code easier to maintain, able to handle more users, as well as more reliable. Some drawbacks are that it generally takes longer to do and is difficult to implement.

- What is the value of using JSONSchema for validation?
It makes it easier to validate data and define/enforce constraints.

- What are some ways to decide which code to test?
If the code is part of something that effects the overall quality and function of the product, it should be tested.

- What does `RETURNING` do in SQL? When would you use it?
It is used to retrieve the values of the columns that were modified. You would use it when you want to get the values of the columns that were modified.

- What are some differences between Web Sockets and HTTP?
WebSockets maintain a connection between the client and the server, while HTTP does not. WebSockets are also faster than HTTP.

- Did you prefer using Flask over Express? Why or why not (there is no right
  answer here --- we want to see how you think about technology)?
I perfered Flask because it is simpler to use and easier to get the hang of quickly. There are a lot of differnt things you can do with it.
