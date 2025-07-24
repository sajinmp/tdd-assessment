## String Calculator

### Requirements
- Ruby 3.3.6

### Steps
- Clone the repo `git clone git@github.com:sajinmp/tdd-assessment.git`
- Move into the directory `cd tdd-assessment`
- Run `bundle install` to install the dependencies (rspec in this case)
- Run `rspec spec` to run the tests
- Launch console with `irb`
- Require the string calculator `require_relative 'string_calculator`
- Use any input to test. eg: `StringCalculator.new("//;\n1;2;3").add`
- For negative number exceptions. eg: `StringCalculator.new("//;\n1;2;-3;-4").add`
