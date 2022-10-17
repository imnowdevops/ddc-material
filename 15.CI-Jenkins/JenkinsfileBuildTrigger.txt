pipeline {
	agent any
	stages {
		stage('Build') {
			steps{
				sh 'echo "Build completed."'
			}
		}
	}
}