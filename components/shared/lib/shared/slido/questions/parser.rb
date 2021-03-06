module Shared::Slido
  module Questions
    module Parser
      extend self

      def parse(json)
        data = JSON.parse(json, symbolize_names: true)

        data.map do |question|
          result = OpenStruct.new

          result.title               = title question[:text]
          result.text                = question[:text]
          result.slido_event_uuid    = question[:event_id].to_i
          result.slido_question_uuid = question[:event_question_id].to_i
          result.tag_list            = :slido

          result
        end
      end

      private

      def title(value)
        value.length > 140 ? (value[0..138] + '…')  : value
      end
    end
  end
end
