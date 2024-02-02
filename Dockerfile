FROM centos:latest
MAINTAINER vikashashoke@gmail.com

# Install necessary packages
RUN yum install -y httpd zip unzip

# Set the working directory
WORKDIR /var/www/html/

# Add the website content
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip .

# Unzip the downloaded file
RUN unzip photogenic.zip && \
    rm photogenic.zip

# Set permissions and clean up
RUN cp -rvf photogenic/* . && \
    rm -rf photogenic

# Expose port 80
EXPOSE 80 22x

# Start Apache web server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


git add Dockerfile ansible.sh minikube.sh venv/
