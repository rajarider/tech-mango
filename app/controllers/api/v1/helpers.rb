module API::V1
  module Helpers
    extend Grape::API::Helpers


     def build_ticket(attrs)
      ticket = Ticket.new(
        request_number:      attrs[:request_number],
        sequence_number:     attrs[:sequence_number],
        request_type:        attrs[:request_type],
        date_times:          attrs[:date_times],
        primary_service_area_code:     attrs[:primary_service_area_code],
        additional_service_area_codes: attrs[:additional_service_area_codes],
        dig_site_info:       attrs[:dig_site_info]
      )
    end

    def create_ticket(attrs)
      @ticket = build_ticket attrs
      @ticket.save ? @ticket : nil
    end

  end
end