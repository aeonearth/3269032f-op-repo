pipeline {

    agent {
        node {
            label 'master'
        }
    }

    tools { 
        maven 'maven-3269032f' 
    }

    options {
        buildDiscarder logRotator( 
                    daysToKeepStr: '15', 
                    numToKeepStr: '10'
            )
    }

    environment {
        APP_NAME = "limtianzhong"
        APP_ENV  = "DEV"
    }

      stages {
          stage('Op-3269032f-S1') {
          steps {
		script {
                    sh '''
                        IMAGE_NAME="qa-bkup-image"
                        CONTAINER_NAME="3269032f-qa-svr"

                        echo "Checking if Docker image $IMAGE_NAME exists..."

                        if docker images -q $IMAGE_NAME > /dev/null 2>&1 && [ -n "$(docker images -q $IMAGE_NAME)" ]; then
                            echo "Image $IMAGE_NAME exists. Removing it..."
                            docker rmi -f $IMAGE_NAME
                        else
                            echo "Image $IMAGE_NAME does not exist. Proceeding to create a new one..."
                        fi

                        echo "Creating new image $IMAGE_NAME from container $CONTAINER_NAME..."
                        docker commit $CONTAINER_NAME $IMAGE_NAME

                        echo "Image creation completed."
                    '''
                }

            echo 'Stage 1'
          }
          }
            
          stage('Op-3269032f-S2') {
          steps {
            echo 'Stage 2'
          }
          }       
            
          stage('Op-3269032f-S3') {
          steps {
            echo 'Stage 3'
          }
          }   
                        
          stage('Op-3269032f-S4') {
          steps {
            echo 'Stage 4'
          }
          }   
                        
          stage('Op-3269032f-S5') {
          steps {
            echo 'Stage 5'
          }
          }   
                        
          stage('Op-3269032f-S6') {
          steps {
            echo 'Stage 6'
          }
          }   
                        
          stage('Op-3269032f-S7') {
          steps {
            echo 'Stage 7'
          }
          }   
      }
}
