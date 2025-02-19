##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Task' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tasks/WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "age": 25200,
          "assignment_status": "pending",
          "attributes": "{\\"body\\": \\"hello\\"}",
          "date_created": "2014-05-14T18:50:02Z",
          "date_updated": "2014-05-15T07:26:06Z",
          "task_queue_entered_date": "2014-05-14T18:50:02Z",
          "priority": 0,
          "reason": "Test Reason",
          "sid": "WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_queue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_unique_name": "task-channel",
          "timeout": 60,
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_sid": "WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_friendly_name": "Test Workflow",
          "task_queue_friendly_name": "Test Queue",
          "addons": "{}",
          "links": {
              "task_queue": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskQueues/WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workflow": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workflows/WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "reservations": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Reservations"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(if_match: 'if_match')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'If-Match' => 'if_match', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tasks/WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        headers: headers,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "age": 25200,
          "assignment_status": "pending",
          "attributes": "{\\"body\\": \\"hello\\"}",
          "date_created": "2014-05-14T18:50:02Z",
          "date_updated": "2014-05-15T07:26:06Z",
          "task_queue_entered_date": "2014-05-14T18:50:02Z",
          "priority": 0,
          "reason": "Test Reason",
          "sid": "WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_queue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_unique_name": "task-channel",
          "timeout": 60,
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_sid": "WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_friendly_name": "Test Workflow",
          "task_queue_friendly_name": "Test Queue",
          "addons": "{}",
          "links": {
              "task_queue": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskQueues/WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workflow": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workflows/WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "reservations": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Reservations"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete(if_match: 'if_match')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'If-Match' => 'if_match', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tasks/WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        headers: headers,
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks('WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .tasks.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tasks',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending%2Creserved&PageSize=50&Page=0",
              "key": "tasks",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending%2Creserved&PageSize=50&Page=0"
          },
          "tasks": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "age": 25200,
                  "assignment_status": "pending",
                  "attributes": "{\\"body\\": \\"hello\\"}",
                  "date_created": "2014-05-14T14:26:54Z",
                  "date_updated": "2014-05-15T16:03:42Z",
                  "task_queue_entered_date": "2014-05-14T14:26:54Z",
                  "priority": 0,
                  "reason": "Test Reason",
                  "sid": "WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "task_queue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "task_channel_sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "task_channel_unique_name": "task-channel",
                  "timeout": 60,
                  "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workflow_sid": "WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workflow_friendly_name": "Test Workflow",
                  "task_queue_friendly_name": "Test Queue",
                  "addons": "{}",
                  "links": {
                      "task_queue": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskQueues/WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workflow": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workflows/WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "reservations": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Reservations"
                  }
              }
          ]
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending&PageSize=50&Page=0",
              "key": "tasks",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending&PageSize=50&Page=0"
          },
          "tasks": []
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_assignment_status_multiple responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending&PageSize=50&Page=0",
              "key": "tasks",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks?TaskQueueSid=WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Priority=1&TaskQueueName=task_queue_name&WorkflowName=workflow_name&WorkflowSid=WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&AssignmentStatus=pending&PageSize=50&Page=0"
          },
          "tasks": []
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .tasks.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Tasks',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "age": 25200,
          "assignment_status": "pending",
          "attributes": "{\\"body\\": \\"attributes\\"}",
          "date_created": "2014-05-14T18:50:02Z",
          "date_updated": "2014-05-15T07:26:06Z",
          "task_queue_entered_date": null,
          "priority": 1,
          "reason": "Test Reason",
          "sid": "WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_queue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "task_channel_unique_name": "unique",
          "timeout": 60,
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_sid": "WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workflow_friendly_name": "Example Workflow",
          "task_queue_friendly_name": "Example Task Queue",
          "addons": "{}",
          "links": {
              "task_queue": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskQueues/WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workflow": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workflows/WFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "reservations": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks/WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Reservations"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .tasks.create()

    expect(actual).to_not eq(nil)
  end
end