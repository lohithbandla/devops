# FROM eclipse-temurin:17
# WORKDIR /app
# COPY . /app
# RUN javac Main.java
# CMD ["java", "Main"]

# FROM python:3.11-slim
# WORKDIR /app
# COPY . /app
# CMD ["python", "trial.py"]

FROM gcc:latest
WORKDIR /app
COPY . /app
RUN g++ -o main trial.cpp
CMD ["./main"]



# docker login

#building the img
# docker build -t prac .


# Command to run the image: docker run -d --name devops_sub_container -p 8083:80
# devops_sub
# docker run prac


#tagging the image
#docker tag prac:latest lohithhh/prac:v1

#push 
#docker push lohithhh/prac:v1
