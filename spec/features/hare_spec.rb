require 'rails_helper'

feature "Hare", :type => :feature do
  scenario "opens a connection to RabbitMQ" do
    expect(Hare::Server.status).to eql('started')
  end
end
