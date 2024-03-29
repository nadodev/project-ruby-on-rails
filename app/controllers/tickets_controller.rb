class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  
    def index
      @tickets = Ticket.all
    end
  
    def show
        
    end
  
    def new
      @ticket = Ticket.new
    end
  
    def create
      @ticket = Ticket.new(ticket_params)
      if @ticket.save
        redirect_to @ticket, notice: 'Ticket was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @ticket.update(ticket_params)
        redirect_to @ticket, notice: 'Ticket was successfully updated.'
      else
        render :edit
      end
    end

    
    def destroy
      @ticket = Ticket.find(params[:id])
      @ticket.destroy
      redirect_to tickets_path, notice: 'Ticket was successfully destroyed.'
    end
    
  
    private
  
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end
  
    def ticket_params
      params.require(:ticket).permit(:title,:descricao, :status, :image)
    end
  end
  