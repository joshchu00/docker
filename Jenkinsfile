node {

  docker.withTool('docker-latest') {

    def golangkafkaImage

    stage('Git Pull') {
      git url: 'https://github.com/joshchu00/docker-golang-kafka.git', branch: 'master'
    }
    stage('Docker Build') {
      golangkafkaImage = docker.build('docker.io/joshchu00/golang-kafka:1.11-alpine')
    }
    stage('Docker Push') {
      docker.withRegistry('', 'DockerHub') {
        golangkafkaImage.push()
      }
    }
  }
}
