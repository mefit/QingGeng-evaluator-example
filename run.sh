tmux \
  new-session  'FLASK_ENV=development FLASK_APP=application pipenv run flask run' \; \
  split-window 'pipenv run celery -A application_tasks worker --loglevel=debug' \; \
  rename-session 'evaluator-example' \;
  # detach-client
