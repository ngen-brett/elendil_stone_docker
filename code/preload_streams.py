#!/usr/bin/env python
# coding=utf-8

try:
  import redis
except Exception as e:
  print('Imports failed: %s' % str(e))
  

# Connect to Redis
try:
  r = redis.Redis(host=os.getenv('REDIS_HOST'), port=6379, db=0)
except:
  r = redis.Redis(host='localhost', port=6379, db=0)
  pass


stream_list = {
  "stream:movienight": "Movie Night",
  "stream:b3542": "b3542",
  "stream:liveevent": "Live Event",
  "stream:news": "News"
  }

def preload_streams():
  print("Preloading streams...")
  for k in stream_list:
    v = stream_list[k]
    print(f"Stream Key: {k}, Friendly Name: {v}")
    r.set(k, v)

if __name__ == '__main__':
  preload_streams()

