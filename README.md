# ComplexityCheckerRuby

`ComplexityCheckerRuby` is a Ruby gem that helps analyze the time complexity of your Ruby code by profiling execution time.

## Installation

```bash
gem install complexity_checker_ruby
```

## Usage
```bash
require 'complexity_checker_ruby'

# Set custom threshold (optional)
ComplexityCheckerRuby.threshold = 0.5 # seconds

class Example
  extend ComplexityCheckerRuby

  def self.example_method(arr)
    arr.each do |i|
      # Simulating some work
      sleep(0.6) # Example to trigger alert
      puts i
    end
  end

  # Monitor method for execution time
  ComplexityCheckerRuby.monitor_method(self, :example_method)
end

Example.example_method((1..10).to_a)
```