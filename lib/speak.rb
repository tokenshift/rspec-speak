require "rspec/speak/version"

# Reads test descriptions and results out loud.
module Speak
  # Speaks the name of the test.
  def speak_name(test)
    say(test_description(test))
  end

  # Speaks the test result.
  def speak_result
    if example.pending?
      say("is pending")
    elsif example.exception
      say("failed")
    else
      say("passed")
    end
  end

  private

  # Speaks the message.
  def say(message)
    system("say", message)
  end

  # Hooks this into RSpec.
  def self.included(config)
    config.before(:each) do |test|
      speak_name(test)
    end

    config.after(:each) do
      speak_result
    end
  end

  # Gets the full description of the test.
  def test_description(test)
    meta = test.example.metadata
    path = []
    while meta && meta[:description_args]
      path << meta[:description_args].join
      meta = meta[:example_group]
    end

    description = path.reverse.join(" ")
    description.gsub(/\s+/, " ").gsub(/[^\w ]+/, "")
  end
end
