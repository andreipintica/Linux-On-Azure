from datetime import datetime, timedelta
from pathlib import Path

now = datetime.now()
last_12 = datetime.now() - timedelta(hours = 12)
files = Path('/home/temp/work')
ftime = [(datetime.fromtimestamp(i.stat()[-2]),i)
         for i in files.iterdir() if i.is_file()]

for x,y in ftime:
    if last_12 < x < now:
        print(f'{x:%d-%m-%Y %H:%M} => {y}')
        