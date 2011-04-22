# This file contains function for interacting with the Redis Pub/Sub features 

# Publish
redisPublish <- function(channel, message){
  .redisCmd(.raw("PUBLISH"),.raw(channel),.raw(message))
}

# Channel subscription
redisSubscribe <- function(channel, callback=print){
  warning("After subscribing to a channel, this redis client is not expected to make non-pub/sub related commands.")
  .redisCmd(.raw("SUBSCRIBE"),.raw(channel))
  while(TRUE){
    callback(.getResponse())
  }
}

redisUnsubscribe <- function(channel){
  .redisCmd(.raw("UNSUBSCRIBE"),.raw(channel))
}

# Pattern subscription
redisPSubscribe <- function(pattern, callback=print){
  warning("After subscribing to a channel, this redis client is not expected to make non-pub/sub related commands.")
  .redisCmd(.raw("PSUBSCRIBE"),.raw(pattern))
  while(TRUE){
    callback(.getResponse())
  }
}

redisPUnsubscribe <- function(channel){
  .redisCmd(.raw("PUNSUBSCRIBE"),.raw(channel))
}
