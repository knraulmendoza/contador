node {

  stage('Checkout') {
    git url: 'https://github.com/knraulmendoza/contador.git',branch: 'master'
  }
  stage('packages get') {
    bat 'flutter pub get'
  }
  
}
