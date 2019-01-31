node {
  def golangkafkaImage

  stage('Git Pull') {
    git url: 'https://github.com/joshchu00/docker-golang-kafka.git', branch: 'master'
  }
  stage('Docker Build') {
    docker.withTool('docker-latest') {
      golangkafkaImage = docker.build('docker.io/joshchu00/golang-kafka:1.11-alpine')
    }
  }
  stage('Docker Push') {
    docker.withTool('docker-latest') {
      docker.withRegistry('', 'DockerHub') {
        golangkafkaImage.push()
      }
    }
  }
}
