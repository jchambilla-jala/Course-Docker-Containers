#!/usr/bin/env bash
# Creating network
docker network create mynetwork

# 1
docker run -d --name postgresdb --network mynetwork -v pgdata:/var/lib/postgresql/data -e POSTGRES_USER=joel -e POSTGRES_PASSWORD=joel123 postgres

# 2
docker run -d --name sonarqubece -e SONAR_JDBC_USERNAME=joel -e SONAR_JDBC_PASSWORD=joel123 -e SONARQUBE_JDBC_URL=jdbc:postgresql://postgresdb:5432/joel -p 9000:9000 -v sonarqube_data:/opt/sonarqube/data -v sonarqube_extensions:/opt/sonarqube/extensions -v sonarqube_logs:/opt/sonarqube/logs --network mynetwork sonarqube:8-community

# 3
docker run --name jenkins -d --network mynetwork jenkins/jenkins

# 4
docker run --name sonatypenexus3 -d --network mynetwork sonatype/nexus3

# 5
docker run --name portainer -d --network mynetwork portainer/portainer


