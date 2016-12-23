require 'ddtrace'


module Postgres
  class Client
    def self.get_user(name)
      Datadog.tracer.trace('postgresql.query') do |span|
        span.service = 'postgresql'
        span.span_type = 'database'
        sleep((rand/100))
        return { type: 'postgresql', name: name }
      end
    end

    def self.save_user(user)
      Datadog.tracer.trace('postgresql.query') do |span|
        span.service = 'postgresql'
        span.span_type = 'database'
        sleep((rand/100))
        return true
      end
    end
  end
end
