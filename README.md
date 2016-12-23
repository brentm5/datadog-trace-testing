Datadog Trace Examples
======================

This just goes through the example of setting up datadog trace on a simple
sinatra application


## How to run the server

```bash
# Install bundler and then run it on the project
gem install bundler
bundle install

# start up the server
bundle exec start

# Then hit the server
curl http://localhost:3000/

# or to get more data
siege http://localhost:3000/
```


## Setting up the agent (this has been tested to work on a mac)
Do the following to setup the agent (taken from datadog help page)

```bash
# Copy the dockerfile from datadog to the /tracer dir then run the following:

# Build the image
docker build tracer/ . -t dd_trace_agent

# Run the agent
docker run --name dd_trace_agent -d -p 7777:7777 -e DD_API_KEY=<api-key> -e DD_BIND_HOST=0.0.0.0 dd_trace_agent
```
