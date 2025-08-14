pipeline {

    agent {
        node {
            label 'master'
        }
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

                        if docker images -q $IMAGE_NAME > /dev/null 2>&1 && [ -n "$(docker images -q $IMAGE_NAME)" ]; then
                            echo "Image exists. Removing it..."
                            docker rmi -f $IMAGE_NAME
                        else
                            echo "Image does not exist. Proceeding to create a new one..."
                        fi

                        echo "Creating new image $IMAGE_NAME from container $CONTAINER_NAME..."
                        docker commit $CONTAINER_NAME $IMAGE_NAME

                    '''
                }

            echo "Op-S1-3269032f: QA web server is backup and updated"
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
