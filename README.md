# Best Practices

## Production Server
1. The production server should be available and stable at all times without interruption.
2. The server should be monitored for bandwidth, connections, and resource usage to ensure high uptime.
3. A second machine should continuously monitor the server's availability and responsiveness.
4. The production environment should be separated from the development environment.
5. The production environment will remain on the main branch of all repositories at all times.
6. The production server will only pull the latest branch after all tests have been passed to ensure everything is working.
7. Employ a deployment procedure using tools like SCP, rsync, Heroku, GitHub Actions, Puppet, or another DevOps system for continuous deployment.

## Code Usability
1. Code should be usable by all engineers, locally deployable, testable, and reproducible.
2. Ensure the development machine can run the main tests that need to be passed before deployment.

## Handling Blockers
1. Assess and ask for help immediately when there is a blocker.

## Branch Management
1. There are three branches: main, development, and testing.
2. The testing branch should always fail tests initially.
3. As soon as all tests pass, merge the testing branch into development.
4. Start a new feature and test in parallel, ideally using Test Driven Development (TDD).

## Test Driven Development (TDD)
1. Write the test first that fails (red) and commit code to testing.
2. Write code until it passes (green).
3. Commit code and merge it into development.

## Development Branch
1. The development branch should always pass tests (always green).
2. Deploy the development branch to a staging or development server for user acceptance testing.
3. Ensure the following testing stages are passed before merging into the main branch:
    - Pass all unit tests (locally).
    - Pass all integration tests (locally) and deploy to the staging server.
    - Pass user acceptance tests (alpha testing) and deploy to the production server.

## Deployment Procedure
1. After passing tests, merge the development branch into the main branch.
2. Push from the development machine to GitHub, then pull onto the production machine.
3. Do a pull request for code reviewing before merging into the main branch.

## Additional Notes
1. Only merge to the main branch after adequate testing.
2. Ensure high product uptime to avoid user outages.
