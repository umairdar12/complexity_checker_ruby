require 'complexity_checker_ruby'
RSpec.describe ComplexityCheckerRuby do
  it 'alerts on long execution time' do
    class TestClass
      extend ComplexityCheckerRuby

      def self.slow_method
        sleep(0.2) # Simulating long execution
      end

      ComplexityCheckerRuby.monitor_method(self, :slow_method)
    end

    expect { TestClass.slow_method }.to output(/Alert: Method 'slow_method' took 0.2 seconds/).to_stdout
  end
end
