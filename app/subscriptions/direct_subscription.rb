class DirectSubscription < Hare::Subscription
  subscribe bind: "direct_exchange", queue: "direct_queue" do |data|
    Message.create!(text: data)
  end
end
