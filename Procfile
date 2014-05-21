web: bundle exec rails server
resque: bundle exec rake resque:work TERM_CHILD=1 QUEUES=*
scheduler: bundle exec rake environment resque:scheduler