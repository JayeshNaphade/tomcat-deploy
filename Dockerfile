FROM tomcat:9.0

# Copy the application WAR file into the container
COPY SampleWebApp.war /tmp/

# Create a temporary directory to extract the WAR file
WORKDIR /tmp

# Extract the WAR file
RUN jar -xvf SampleWebApp.war

# Move the extracted content to the webapps directory
RUN mv SampleWebApp/* /usr/local/tomcat/webapps/

# Remove the temporary directory and the WAR file
RUN rm -rf /tmp/SampleWebApp /tmp/SampleWebApp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
