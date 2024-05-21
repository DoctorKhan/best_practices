# best-practices
Best practices

- It is critical that the product uptime be as high as possible, so that users do not experience any outages. Therefore, we institute the following procedures:
- The production server will remain online at all times and available so that users can use the platform in an uninterrupted manner. 
- This can be achieved by separating the production environment from the development environment.
- The production environment will remain on the main branch of all repositories at all times.
- The production server will only pull the latest branch after all tests have been passed to ensure that everything is working.
- Alternatively, you can employ a deployment procedure using scp, rsync, heroku, github actions, puppet, or some other devops system for continuous deployment.
- A second machine will continuously monitor the availability, responsiveness, of the server.
- The server will be monitored for bandwidth, connections, and resource usage.
- The development machine can be a single machine that does not need to be tested for high bandwidth, etc. It simply needs to be able to run the main tests that need to be passed before deployment
	- After it has passed the tests, merge the development branch into the main branch and push from the development machine to github. Then pull onto production machine. This is okay in a small team.
	- Alternatively, you may do a pull request instead of merging into main. This gives your admin the ability to check changes before merging.

- also only after add testing merge to main branch.
