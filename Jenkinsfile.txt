pipeline {
    agent any // This pipeline can run on any available Jenkins agent.
              // If you set up a specific Windows agent, you can change this to:
              // agent { label 'your-windows-agent-label' }

    tools {
        // Defines the JDK to be used. This name ('JDK 11') must match what you configured
        // in Jenkins' 'Manage Jenkins' -> 'Global Tool Configuration' -> 'JDK' section.
        jdk 'JDK 11'
        // If you configured SonarScanner for MSBuild in Global Tool Configuration with a specific name,
        // you would add it here, e.g., sonarScanner 'MySonarScannerMSBuild'.
        // However, we'll use a direct path/system PATH assumption in the bat commands for simplicity,
        // so explicit declaration here for SonarScanner is often not strictly necessary if it's in PATH or handled.
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Fetches your source code from GitHub.
                // Replace 'your-username/your-repo.git' with your actual GitHub repository URL.
                // Replace 'main' with the branch you want to build (e.g., 'master', 'develop').
                // 'github-pat' is the ID of the GitHub Personal Access Token credential you created in Jenkins.
                git branch: 'main', credentialsId: '9b921bb3-5866-48a9-a891-cf1a9c62ec6c', url: 'https://github.com/singhGS1110/Engager-Mobile-App.git'
            }
        }

        stage('Prepare SonarQube Analysis') {
            steps {
                // This block sets up the environment for SonarQube analysis by injecting
                // the SonarQube server URL and authentication token.
                // 'My SonarQube Server' must exactly match the Name you gave your SonarQube server
                // in Jenkins (Manage Jenkins -> Configure System -> SonarQube servers).
                withSonarQubeEnv('My SonarQube Server') {
                    // This command initiates the SonarQube analysis for MSBuild projects.
                    // It needs to be run BEFORE your project is built.
                    // 'SonarScanner.MSBuild.exe' should be in the Jenkins agent's system PATH,
                    // or you provide its full path (e.g., 'C:\\path\\to\\SonarScanner.MSBuild.exe').
                    //
                    // Important Parameters:
                    // /k:your-project-key  -> The unique key for your project in SonarQube.
                    // /n:"Your Project Name" -> The display name for your project in SonarQube.
                    // /v:1.0 -> The version of your project (you can make this dynamic, e.g., using BUILD_NUMBER).
                    bat "SonarScanner.MSBuild.exe begin /k:sqp_a5d4e5d9571c55198717c109abd89b963a763b4d /n:\"Engager-Mobile-App\" /v:1.0.0"
                }
            }
        }

        stage('Build .NET Project') {
            steps {
                // Compiles your .NET C# solution.
                // Replace 'YourSolution.sln' with the actual path to your solution file
                // relative to your repository's root.
                // 'msbuild.exe' should be in the Jenkins agent's system PATH (e.g., via Visual Studio Build Tools installation).
                // You can add '/p:Configuration=Release' or other build properties as needed.
                bat "msbuild EngagerMobile.Mariteam.sln /t:Rebuild"
            }
        }

        stage('Execute SonarQube Analysis') {
            steps {
                // This block again injects the SonarQube environment variables.
                withSonarQubeEnv('My SonarQube Server') {
                    // This command finalizes the SonarQube analysis, collects results,
                    // and sends them to your SonarQube server. It must be run AFTER the build.
                    bat "SonarScanner.MSBuild.exe end"
                }
            }
        }
    }

    // Post-build actions (optional but good practice)
    post {
        always {
            // This block always executes, regardless of the build result.
            echo "Pipeline finished."
        }
        failure {
            // This block executes only if the pipeline fails.
            echo "Pipeline failed! Check the console output for details."
        }
        success {
            // This block executes only if the pipeline succeeds.
            echo "Pipeline successfully completed and SonarQube analysis sent!"
        }
    }
}