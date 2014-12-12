class HareTopicMessage < Hare::Message
  exchange "topic_exchange", type: :topic
end
