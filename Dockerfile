# Use an official OpenJDK runtime as a parent image

FROM tomcat:9.0
# Set the working directory


# Copy the application JAR file into the container
COPY SampleWebApp.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["catalina.sh", "run"]
