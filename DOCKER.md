# Using OpeNER in Docker

It took only three days to get it to work and a lot of @#@#$%#%#$%#!! (the problem of getting is to work has a tab index of ~75), but then: w00t!

In theory, if you run Boot2Docker, you could:

    docker run -d -p 3306:3306 --name opener-mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=opener_development mysql
    docker run -e DB_PASS=secret -e DB_USER=root -e DB_HOST=192.168.59.103 -p 9292:9292 -ti bencomp/opener-basic
    
... and see 

    file:/home/devbase/.rvm/rubies/jruby-1.7.15/lib/jruby.jar!/jruby/java/core_ext/object.rb:72 warning: already initialized constant Annotate
    file:/home/devbase/.rvm/rubies/jruby-1.7.15/lib/jruby.jar!/jruby/java/core_ext/object.rb:72 warning: already initialized constant Annotate
    file:/home/devbase/.rvm/rubies/jruby-1.7.15/lib/jruby.jar!/jruby/java/core_ext/object.rb:72 warning: already initialized constant Annotate
    Puma 2.8.2 starting...
    * Min threads: 0, max threads: 16
    * Environment: development
    * Listening on tcp://0.0.0.0:9292
    
I bet the warnings will be gone sooner or later.

You should now be able to use all components in your browser or in RESTful applications.
If you are using Boot2Docker, go to <http://192.168.59.103:9292>.
 