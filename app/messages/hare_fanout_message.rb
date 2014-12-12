class HareFanoutMessage < Hare::Message
  exchange "fanout_exchange", type: :fanout
end
