# Week 12 – Jenkins CI Pipeline

## 1. Objective

The objective of Week 12 was to implement a Jenkins Continuous Integration (CI) pipeline that automatically checks out application source code, verifies the required tools, runs automated tests, builds a Docker image, and verifies the generated image.

## 2. Technologies Used

- Jenkins – CI pipeline automation
- Git and GitHub – Source code management and version control
- Node.js and npm – Application runtime and test execution
- Docker – Application container image creation and verification
- WSL Ubuntu – Development environment
- Windows – Jenkins agent environment

## 3. Pipeline Architecture

The pipeline uses the application repository hosted on GitHub. Jenkins checks out the source code and executes the pipeline defined in `ci/Jenkinsfile`.

The pipeline follows these stages:

1. **Checkout:** Retrieves the source code from the configured Git repository.
2. **Check Tools:** Checks the installed Node.js, npm, and Docker versions.
3. **Install Dependencies:** Runs `npm install` inside the application directory.
4. **Run Tests:** Executes `npm test` to verify the application.
5. **Build Docker Image:** Builds the Docker image named `devops-ecommerce:latest`.
6. **Verify Docker Image:** Runs `docker image inspect` to verify the generated image.

## 4. Pipeline Configuration

The pipeline is defined in `ci/Jenkinsfile` and uses a Declarative Pipeline structure.

Additional configuration includes:
- Timestamps in the Jenkins console log.
- Prevention of concurrent pipeline executions.
- Explicit source code checkout to avoid duplicate default checkout.
- Success and failure messages through post-build actions.

## 5. Testing and Verification

The application tests were executed successfully.

Test output:

```text
Running Week 09 automated tests...
All automated tests passed successfully!
```

The Docker image was also built successfully from the application Dockerfile and verified using `docker image inspect`.

The generated image is tagged `devops-ecommerce:latest`. Its configuration uses the non-root `node` user and exposes port `3000`.

The Jenkins console output confirmed:

```text
SUCCESS: CI pipeline completed.
Tests passed and the Docker image was built.
Week 12 CI pipeline execution finished.
Finished: SUCCESS
```

## 6. Automation

The Jenkins job is configured to monitor the Git repository for source code changes. A Git push can trigger the pipeline automatically, allowing changes to be checked without manually running every CI stage.

The automatic trigger should be demonstrated and documented with a successful build initiated by a Git repository change.

## 7. Cost Management

The Week 12 CI workflow was executed using the local development environment, Jenkins, and Docker Desktop. No AWS EC2 instance or cloud deployment was required for these CI checks.

The Docker image was built locally and was not pushed to a remote container registry as part of this pipeline.

## 8. Outcome

The Week 12 Jenkins CI pipeline completed successfully. Automated tests passed, the Docker image was built, and the generated image was verified.

This implementation demonstrates an automated CI workflow that can validate application changes and prepare a Docker image for a later deployment stage.

## 9. Evidence

The following evidence should be saved with the internship project:

- Jenkins pipeline stage view showing a successful build.
- Jenkins console output ending with `Finished: SUCCESS`.
- Terminal output showing the automated tests passing.
- Docker output showing the image build and image listing.
- GitHub commit history showing the Week 12 pipeline and documentation.


