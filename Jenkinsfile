pipeline {
  agent any
  options { skipDefaultCheckout() }
  stages {
    stage('Stage') {
      steps {
        sh """
          env

        """
        // checkout scm
        // tektonCreateRaw(inputType: 'FILE', input: '.tekton/pipeline.yaml')
      }
    }
  }
}
