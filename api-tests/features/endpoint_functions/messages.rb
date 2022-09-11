def get_greetings(message_id)
  @test_step.method = "GET"
  @test_step.path = "/messages/#{message_id}"
  @test_step.send_request
  assert_http_code(200)
end
