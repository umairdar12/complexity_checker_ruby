# lib/complexity_checker_ruby.rb
require 'benchmark'
require 'complexity_checker_ruby/alerts'

module ComplexityCheckerRuby
  @threshold = 0.1 # Default threshold in seconds

  class << self
    attr_accessor :threshold

    def monitor_method(obj, method_name)
      original_method = obj.method(method_name)

      obj.define_singleton_method(method_name) do |*args, &block|
        start_time = Time.now
        result = original_method.call(*args, &block)
        duration = Time.now - start_time

        if duration > @threshold
          Alerts.notify(method_name, duration)
        end

        result
      end
    end
  end
end
