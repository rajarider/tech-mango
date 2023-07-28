module API
  module V1
    class Tickets < Grape::API
      include API::V1::Defaults

      desc 'Create a ticket.'
      
      post "/tickets" do
        begin
          @ticket = create_ticket(params["ticket"])
          if @ticket.present?
            @excavators = params["excavators"]
            @excavators.each do |excavator|
              @excavator = @ticket.excavators.new({company_name: excavator["company_name"], address: excavator["address"], crew_on_site: excavator["crew_on_site"], ticket_id: @ticket.id})
              @excavator.save
            end
            @ticket
          else
            {status: 422, message: 'ticket is not created'}
          end
        rescue => e
          {status: 422, message: e.message}
        end
      end

    end
  end
end