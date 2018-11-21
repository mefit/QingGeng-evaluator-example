from celery import Celery

app = Celery(__name__)
app.conf.update(broker_url = 'redis://localhost/1')

@app.task
def some_awesome_algorithm(age):
    print(age)
    return
