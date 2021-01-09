echo '-----开始生成镜像-----'
app_name=jenkins_demo
app_version=0.0.1
docker_file_path=/program/data/jenkins01/workspace/jenkins_demo/target/classes/Dockerfile
echo '-----终止正在运行-----'
docker stop $(docker images | grep jenkins_demo)
echo '-----删除旧镜像-----'
docker rmi -f $(docker images | grep jenkins_demo)
echo '-----创建镜像-----'
docker build -f ${docker_file_path} -t ${app_name}:${app_version} .
echo '-----运行镜像-----'
docker run --name ${app_name} ${app_name}:${app_version}
echo '----------'