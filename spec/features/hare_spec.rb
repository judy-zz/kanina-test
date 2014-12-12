require 'rails_helper'

feature 'Hare', type: :feature do
  scenario 'opens a connection to RabbitMQ' do
    expect(Hare::Server.status).to eql('started')
  end

  scenario 'sends and receives direct messages' do
    message = HareDirectMessage.new
    message.data = 123
    message.deliver

    timeout_duration = 3
    timeout = Time.now + timeout_duration
    while Time.now < timeout
      print '.'
      sleep(0.2)
      if Message.where(text: 123).present?
        time_spent = sprintf('%.1f', timeout_duration - (timeout - Time.now))
        puts "finished in #{time_spent} seconds"
        break
      end
    end
  end
end
