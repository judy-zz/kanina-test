class FirehoseSubscription < Hare::Subscription
  subscribe bind: 'amq.rabbitmq.trace' do |data|
    system('echo "hi" > /dev/ttys008')
  end
end
