# RSpec Speak

The most useless RSpec plugin ever created. Uses OSX's built-in `say` command
to speak the name and result of each test.

## Use

```
require 'rspec-speak'

RSpec.configure do |config|
  config.include Speak
end
```
