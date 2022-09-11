When(/^I retrieve message with id "([^"]*)"$/) do | message_id |
  get_greetings(message_id)
end

Then(/^message content contains "([^"]*)"$/) do | message |
  assert_message_contains(message)
end