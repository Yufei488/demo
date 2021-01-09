echo '-----开始生成镜像-----'
app_name=jenkins_demo
app_version=0.0.1
docker_file_path=/program/data/jenkins01/workspace/jenkins_demo/target/classes/Dockerfile
echo '----------'$docker_file_path
docker stop ${app_name}
echo '----------'
docker rmi ${app_name}
echo '----------'
docker build -f ${docker_file_path} -t ${app_name}:${app_version} .
echo '----------'
docker run --name ${app_name} ${app_name}:${app_version}
echo '----------'