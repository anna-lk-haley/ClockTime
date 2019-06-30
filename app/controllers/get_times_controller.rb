class GetTimesController < ApplicationController
    
    def new
    end
    
    def show
        @entry = Entry.find(params[:id])
    end
    
    def edit
        @entry = Entry.find(params[:id])
    end
    
    def create
        @entry = Entry.new(params.require(:get_time).permit(:name, :inout))
 
        if @entry.save
            redirect_to get_times_path
        else
            render 'new'
        end
    end
 
    def update
        @entry = Entry.find(params[:id])
 
        if @entry.update(params.require(:entry).permit(:name, :inout))
            redirect_to get_times_path
        else
            render 'edit'
        end
    end
    
    def index
    @entries = if params[:search]
            Entry.where('name LIKE ?', "%#{params[:search]}%")
        else
            Entry.all
        end
    end

    def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
 
    redirect_to get_times_path
  end
    
end
