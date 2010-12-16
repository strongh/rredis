\name{redisIsConnected}
\alias{redisIsConnected}
\title{Is there an open connection?}
\description{The redisIsConnected function returns whether there is an
  active connection to a Redis server.}
\usage{
redisIsConnected()
}
\value{logical}
\references{
http://code.google.com/p/redis/ for details.
}
\author{
Homer Strong
}

\seealso{
\code{\link{redisConnect}}
}
\examples{
\dontrun{
redisIsConnected() # FALSE
redisConnect()
redisIsConnected() # TRUE
redisClose()
redisIsConnected() # FALSE
}
}
