require 'ddtrace'


module Redis
  class Client
    def self.get_user(name)
      Datadog.tracer.trace('redis.query') do |span|
        span.service = 'redis'
        span.span_type = 'database'
        sleep((rand/10))

        if rand > 0.5
          return { type: 'redis', name: name }
        end
      end

      # We have to put this here because if not the get_user function will return the tracer object
      nil
    end
  end
end
