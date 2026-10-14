# Week 12 — Jenkins Continuous Integration Pipeline

## 1. Objective

Implement an automated Continuous Integration (CI) pipeline for the existing Node.js application using Jenkins, GitHub, and Docker.

## 2. Technologies Used

- Jenkins
- Git and GitHub
- Node.js and npm
- Docker Desktop
- Windows and Ubuntu on WSL

## 3. Pipeline Architecture

Developer changes are committed and pushed to GitHub. Jenkins detects the repository change and executes the CI pipeline on the Windows agent.

The pipeline checks the required tools, installs application dependencies, executes automated tests, builds a Docker image, and verifies the resulting image.

## 4. Pipeline Stages

1. Checkout source code from GitHub.
2. Verify Node.js, npm, and Docker availability.
3. Install application dependencies.
4. Execute automated tests using `npm test`.
5. Build the `devops-ecommerce:latest` Docker image.
6. Inspect the Docker image to verify successful creation.

## 5. Automated Trigger

The Jenkins job is configured to detect source-code changes and start a build automatically. The trigger was tested by pushing a change from the WSL terminal to the GitHub repository.

## 6. Test Results

Record the actual outcome of the final Jenkins build.

- Automated tests: [Pass/Fail]
- Docker image build: [Pass/Fail]
- Docker image verification: [Pass/Fail]
- Jenkins build result: [SUCCESS/FAILURE]

## 7. Cost Management

The pipeline runs locally on the existing Windows Jenkins service and Docker Desktop. No EC2 instance is required for the Week 12 CI workflow.

## 8. Outcome

The project demonstrates automated source checkout, application testing, Docker image creation, image verification, and CI execution triggered by repository changes.
