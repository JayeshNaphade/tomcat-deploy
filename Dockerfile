FROM tomcat:9.0
# Set the working directory
# Copy the application JAR file into the container
COPY SampleWebApp.war /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/webapps/ && jar -xvf SampleWebApp.war

# Remove the original WAR file
RUN rm -rf /usr/local/tomcat/webapps/SampleWebApp.war
# Expose port 8080
EXPOSE 8080
# Run the application
CMD ["catalina.sh", "run"]
