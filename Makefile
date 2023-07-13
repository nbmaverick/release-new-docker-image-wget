b:
	docker  build –t us-central1-docker.pkg.dev/terraform-project-nb17/tools/tools:0.0.1 .
	gcloud auth configure-docker us-central1-docker.pkg.dev 
	docker  push   us-central1-docker.pkg.dev/terraform-project-nb17/tools/tools:0.0.1
	