aws ecs create-cluster --cluster-name ${CLUSTER_NAME} --region ap-southeast-1

aws ecs register-task-definition --cli-input-json file://fargate-task.json --region ap-southeast-1

aws ecs list-task-definitions --region ap-southeast-1

aws ecs create-service --region ap-southeast-1 --cluster ${CLUSTER_NAME} --service-name fargate-service --task-definition cgiprofessionalnetcoreservices --desired-count 1 --launch-type "FARGATE" --network-configuration "awsvpcConfiguration={subnets=[subnet-07307ee71faf123cd],securityGroups=[sg-08ceb9451cea97f58],assignPublicIp=ENABLED}"

