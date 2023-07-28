class TicketsController < ApplicationController

  before_action :set_ticket, only: %i[ show ]

  def index
    @tickets = Ticket.all
  end

  def show
    data = @ticket.dig_site_info
    @polygon_data = @ticket.polygon_data(data)
  end


  private

  def set_ticket
    @ticket = Ticket.find_by(id: params[:id])
  end

end


# @polygon_data = [{:lat=>"-81.13390268058475", :lng=>"32.07206917625161,"},
#        {:lat=>"-81.14660562247929", :lng=>"32.04064386441295,"},
#        {:lat=>"-81.08858407706913", :lng=>"32.02259853170128,"},
#        {:lat=>"-81.05322183341679", :lng=>"32.02434500961698,"},
#        {:lat=>"-81.05047525138554", :lng=>"32.042681017283066,"},
#        {:lat=>"-81.0319358226746", :lng=>"32.06537765335268,"},
#        {:lat=>"-81.01202310294804", :lng=>"32.078469305179404,"},
#        {:lat=>"-81.02850259513554", :lng=>"32.07963291684719,"},
#        {:lat=>"-81.07759774894413", :lng=>"32.07090546831167,"},
#        {:lat=>"-81.12154306144413", :lng=>"32.08806865844325,"},
#        {:lat=>"-81.13390268058475", :lng=>"32.07206917625161"}]
