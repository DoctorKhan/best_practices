# Best Practices

Software engineering best practices are a set of guidelines and principles that help developers create high-quality, maintainable, and efficient software. Some key best practices include:

1. Writing clean, readable, and well-commented code
2. Using version control systems (e.g., Git) to track changes and collaborate with others
3. Following a consistent coding style and naming conventions
4. Breaking down complex problems into smaller, manageable tasks
5. Conducting code reviews to maintain quality and share knowledge
6. Writing unit tests to ensure code correctness and prevent regressions
7. Practicing continuous integration and continuous deployment (CI/CD) to automate build, test, and deployment processes
8. Optimizing performance by identifying and fixing bottlenecks
9. Documenting code, APIs, and architectures to facilitate understanding and maintenance
10. Choosing the right tools and frameworks for the job
11. Designing software with scalability, security, and maintainability in mind
12. Regularly refactoring code to improve its structure and reduce technical debt
13. Communicating effectively with team members, stakeholders, and clients
14. Staying up-to-date with the latest technologies and industry trends
15. Following agile development methodologies (e.g., Scrum, Kanban) to adapt to changing requirements and deliver value incrementally

By adhering to these best practices, software engineers can create software that is more reliable, easier to maintain, and better aligned with user needs and business goals. However, it's important to note that best practices may vary depending on the specific context, technology stack, and project requirements, so it's crucial to adapt and apply them accordingly.

## Servers
1. **Three Servers**
   - Production: This is the one that is available to your users. It should always stay up and be continually monitored. It should always stay on the main branch.
   - Staging: This runs in an environment identical to the production server, but is used to test functionality and integration tests before deploying to production.
   - Development: This can be your local machine. Run unit tests here and local deployments. Optionally, integration tests.
2. **Availability and Stability**
   - The production server must be available and stable at all times without interruption.
   - Monitor the server for bandwidth, connections, and resource usage to ensure high uptime.
   - Use a second machine to continuously monitor the server's availability and responsiveness.
   - The staging server may go down periodically if there are bugs, etc.
   - The staging machine should go down every time there are code changes.
3. **Environment Separation**
   - Separate the production environment from the staging and development environments.
   - The production environment will always be on the main branch of all repositories.
   - The staging will always be on the staging branch of all repositories.
   - The development environment will always be on the development branch of all repositories.
     
4. **Deployment**
   - Use tools like SCP, rsync, Heroku, GitHub Actions, Puppet, or other DevOps systems for continuous deployment.

## Code Usability
1. Ensure code is usable by all engineers, locally deployable, testable, and reproducible.
2. The development machine should run unit tests.

## Handling Blockers
1. Assess and seek help immediately when encountering a blocker.

## Branch Management
1. **Branch Structure**
   - Maintain three branches: main, staging, and development.
2. **Development Branch**
   - The development branch should initially fail tests.
   - Once all unit tests pass, merge the development branch into staging.
3. **Staging Branch**
   - The main branch should always pass tests (always green).
   - Deploy the staging branch to a staging server for user acceptance testing.
   - If it works well in the staging server, then merge it into the main branch and deploy it to the production server.
   
## Test Driven Development (TDD)
1. Write the test first that fails (red), then commit code to testing.
2. Write code until the test passes (green).
3. Commit code and merge it into the next branch.

## Deployment Procedure
1. After passing unit tests, merge the development branch into the staging branch.
2. After passing integration tests, deploy the staging branch to staging server.
3. After passing live testing, do a pull request for code reviewing before merging into the main branch.
4. After code review, accept the pull request to be merged into main and deploy to production server
