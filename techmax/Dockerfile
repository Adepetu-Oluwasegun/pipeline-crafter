FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

# Change directories
RUN cd /var/www/html

# Get webfiles
RUN wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip

# Unzip files
RUN unzip main.zip

# Copy files to the html directory
RUN cp -r techmax-main/* /var/www/html/

# Remove unwanted folder
RUN rm -rf techmax-main main.zip

# expose port 80 on the container
EXPOSE 80

# set default application that will start when the container starts running
ENTRYPOINT [ "usr/sbin/httpd", "-D", "FOREGROUND" ]