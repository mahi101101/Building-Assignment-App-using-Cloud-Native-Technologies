# Building-Web-App-using-Cloud-Native-Technologies
This is a Django based cloud deploy ready web app. This is an online quiz platform where teacher can add their course quizes and share them to their students and get evalutated for internal marks.

## Requirements to run this application locally
-- Docker - https://docs.docker.com/get-started/ <br>
-- Kubernetes - https://minikube.sigs.k8s.io/docs/start/

## Steps to Run the application using docker

### Step - 1

Start your docker engine.

### Step - 2

Pull the repository to your local machine. 

### Step - 3

Open terminal in the directory of the repository pulled.

### Step - 4

Run the docker-compose file
```
docker-compose up
```

### Step - 5
When the containers are up and running succesfully, open an new terminal and run the below cmd to open interactive terminal for the quiz-app container.

```
docker exec -it quiz-app bash
```

### Step - 6 
Use the below cmd to create a superuser which will be used for admin login.
```
python manage.py createsuperuser
```

### Step - 7
The app will be up and running on localhost:8000

### Step - 8 (optional steps)
To view the Database Stats open localhost:5050 which is pgadmin4 page used to moniter postgresdb. <br>
UserName: root@root.com<br>
Password: root

### Step - 9 
Click on add server and add the quiz-app db server 
<br><br> 
HostName: db
Username: postgres
Password: postgres <br> <br>

Click add server.

### Step - 10 
Click on available servers to see the stats of the db server.

## Running the quiz-app using Kubernetes

### Step - 1

Start your docker engine.

### Step - 2

Pull the repository to your local machine. 

### Step - 3

Open terminal in the directory of the repository pulled.

### Step - 4
Start minikube for kubernetes
```
minikube start
```

### Step - 5
After the minikube service is up. Run the kubemanifest.yaml file.
```
kubectl apply -f kubemanifest.yaml
```

### Step - 6
To check status of the pods use this below command.
```
kubectl get pod
```

### Step - 7
When all the pods are up and running the application is live to be used at localhost:8000.


## Changes required in contact us page
In settings.py file give your email address and password
```
EMAIL_HOST_USER = 'youremail@gmail.com'
EMAIL_HOST_PASSWORD = 'your email password'
EMAIL_RECEIVING_USER = 'youremail@gmail.com'
```
