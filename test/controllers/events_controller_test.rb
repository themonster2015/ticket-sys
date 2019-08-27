# frozen_string_literal: true

require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get events_url
    assert_response :success
  end

  test 'should get show' do
    get event_url(events(:one))
    assert_response :success
  end
end
