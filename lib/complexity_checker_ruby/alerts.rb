module ComplexityCheckerRuby
  module Alerts
    def self.notify(method_name, duration)
      puts "Alert: Method '#{method_name}' took #{duration.round(4)} seconds, which may indicate high time complexity."
    end
  end
end
