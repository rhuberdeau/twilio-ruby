##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Alert' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.monitor.v1.alerts('NOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://monitor.twilio.com/v1/Alerts/NOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "alert_text": "alert_text",
          "api_version": "2010-04-01",
          "date_created": "2015-07-30T20:00:00Z",
          "date_generated": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "error_code": "error_code",
          "log_level": "log_level",
          "more_info": "more_info",
          "request_method": "GET",
          "request_url": "http://www.example.com",
          "request_variables": "request_variables",
          "resource_sid": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "response_body": "response_body",
          "response_headers": "response_headers",
          "request_headers": "request_headers",
          "sid": "NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://monitor.twilio.com/v1/Alerts/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "PNe2cd757cd5257b0217a447933a0290d2"
      }
      ]
    ))

    actual = @client.monitor.v1.alerts('NOXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.monitor.v1.alerts.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://monitor.twilio.com/v1/Alerts',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "alerts": [],
          "meta": {
              "first_page_url": "https://monitor.twilio.com/v1/Alerts?LogLevel=log_level&StartDate=2016-01-01&EndDate=2016-01-01&PageSize=50&Page=0",
              "key": "alerts",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://monitor.twilio.com/v1/Alerts?LogLevel=log_level&StartDate=2016-01-01&EndDate=2016-01-01&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.monitor.v1.alerts.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "alerts": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "alert_text": "alert_text",
                  "api_version": "2010-04-01",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_generated": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "error_code": "error_code",
                  "log_level": "log_level",
                  "more_info": "more_info",
                  "request_method": "GET",
                  "request_url": "http://www.example.com",
                  "resource_sid": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://monitor.twilio.com/v1/Alerts/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "PNe2cd757cd5257b0217a447933a0290d2"
              }
          ],
          "meta": {
              "first_page_url": "https://monitor.twilio.com/v1/Alerts?LogLevel=log_level&StartDate=2016-01-01&EndDate=2016-01-01&PageSize=50&Page=0",
              "key": "alerts",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://monitor.twilio.com/v1/Alerts?LogLevel=log_level&StartDate=2016-01-01&EndDate=2016-01-01&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.monitor.v1.alerts.list()

    expect(actual).to_not eq(nil)
  end
end