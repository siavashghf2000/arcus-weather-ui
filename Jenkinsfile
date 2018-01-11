node {
    stage("Prepare environment") {
        checkout scm
        // Build the Docker image from the Dockerfile located at the root of the project
        docker.build("${JOB_NAME}")
    }

    stage("Install dependencies") {
        // Run the container as `root` user
        // Note: you can run any official Docker image here
        withDockerContainer(args: "-u root", image: "${JOB_NAME}") {
            sh "npm install"
        }
    }
}
