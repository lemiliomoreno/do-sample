import datetime

from django.http import HttpResponse
from django.conf import settings


def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>Actual time: %s.</body></html>" % now
    return HttpResponse(html)
