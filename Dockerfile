# Use the OpeNER components in Docker :)
# You need MySQL running and may use these environment variables to configure the JDBC connection:
# DB_PASS, DB_NAME, DB_USER, DB_HOST
# In non-production environments, the host is localhost or Boot2Docker's IP, 
# user is root and password empty.
# You need a MySQL container with MYSQL_DATABASE=opener_development in the environment variables.

# This base image has Python (with pip) and RVM ready
FROM    bencomp/devbase-rvm

MAINTAINER Ben Companjen <ben@companjen.name>

# Add the current directory to /opener
ADD     . /opener
WORKDIR /opener

# Bundle the OpeNER components
RUN     bash -l -c "rvm jruby && env && bundle install"

EXPOSE 9292
CMD     ["-l", "-c", "rvm jruby && rackup"]
ENTRYPOINT ["bash"]
