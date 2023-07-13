# release-new-docker-image-wget
## step-by-step

### In project environment which already k8s, terraform were setup 
1.	Create dockerfile with FROM centos:7 RUN yum install wget –y
2.	Build docker image:
docker  build –t us-central1-docker.pkg.dev/terraform-project-nb17/tools/tools:0.0.1 .
run this on cli
3.	Login to registry:
gcloud auth configure-docker us-central1-docker.pkg.dev             run this on cli
4.	Push docker image:
docker  push   us-central1-docker.pkg.dev/terraform-project-nb17/tools/tools:0.0.1 
5. or create Makefile, put contents in 2,3,4 and run make b on cli
6. Check GCP artifactory registry