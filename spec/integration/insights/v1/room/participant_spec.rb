##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Participant' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://insights.twilio.com/v1/Video/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "publisher_info": {},
          "edge_location": "ashburn",
          "join_time": "2015-07-30T20:00:00Z",
          "leave_time": "2015-07-30T20:00:00Z",
          "end_reason": "disconnected_via_api",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "error_code": 0,
          "media_region": "us1",
          "properties": {},
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "error_code_url": "error_code_url",
          "participant_sid": "PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "codecs": [
              "VP8"
          ],
          "status": "in_progress",
          "duration_sec": 50000000,
          "participant_identity": "participant_identity",
          "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .participants.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://insights.twilio.com/v1/Video/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants?PageSize=50&Page=0",
              "key": "participants",
              "first_page_url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants?PageSize=50&Page=0",
              "page_size": 50,
              "next_page_url": null,
              "page": 0,
              "previous_page_url": null
          },
          "participants": []
      }
      ]
    ))

    actual = @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants?PageSize=50&Page=0",
              "key": "participants",
              "first_page_url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants?PageSize=50&Page=0",
              "page_size": 50,
              "next_page_url": null,
              "page": 0,
              "previous_page_url": null
          },
          "participants": [
              {
                  "publisher_info": {},
                  "edge_location": "ashburn",
                  "join_time": "2015-07-30T20:00:00Z",
                  "leave_time": "2015-07-30T20:00:00Z",
                  "end_reason": "disconnected_via_api",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "error_code": 53205,
                  "media_region": "us1",
                  "properties": {},
                  "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "error_code_url": "error_code_url",
                  "participant_sid": "PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "codecs": [
                      "VP8"
                  ],
                  "status": "in_progress",
                  "duration_sec": 50000000,
                  "participant_identity": "participant_identity",
                  "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .participants.list()

    expect(actual).to_not eq(nil)
  end
end