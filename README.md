# Best Practices

## Production Server
1. **Availability and Stability**
   - The production server must be available and stable at all times without interruption.
   - Monitor the server for bandwidth, connections, and resource usage to ensure high uptime.
   - Use a second machine to continuously monitor the server's availability and responsiveness.
2. **Environment Separation**
   - Separate the production environment from the development environment.
   - The production environment will always be on the main branch of all repositories.
   - The production server will only pull the latest branch after all tests have passed.
3. **Deployment**
   - Use tools like SCP, rsync, Heroku, GitHub Actions, Puppet, or other DevOps systems for continuous deployment.

## Code Usability
1. Ensure code is usable by all engineers, locally deployable, testable, and reproducible.
2. The development machine should run main tests before deployment.

## Handling Blockers
1. Assess and seek help immediately when encountering a blocker.

## Branch Management
1. **Branch Structure**
   - Maintain three branches: main, development, and testing.
2. **Testing Branch**
   - The testing branch should initially fail tests.
   - Once all tests pass, merge the testing branch into development.
3. **Development Branch**
   - The development branch should always pass tests (always green).
   - Deploy the development branch to a staging or development server for user acceptance testing.
   - After adequate testing, merge into the main branch.

## Test Driven Development (TDD)
1. Write the test first that fails (red), then commit code to testing.
2. Write code until the test passes (green).
3. Commit code and merge it into development.

## Deployment Procedure
1. After passing tests, merge the development branch into the main branch.
2. Push from the development machine to GitHub, then pull onto the production machine.
3. Do a pull request for code reviewing before merging into the main branch.
