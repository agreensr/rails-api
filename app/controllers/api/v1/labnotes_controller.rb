module Api

    module V1
        class LabnotesController < ApplicationController

            def index
                #labprofiles = Labprofile.order('labID DESC').limit(5)
                labnotes = Labnote.order('labID DESC').limit(5)
                render json: { status: 'SUCCESS', message: 'Loaded all Notes', data:labnotes }, status: :ok
            end

            def show
                labnote = Labnote.find(params[:id])
                render json: { status: 'SUCCESS', message: 'Loaded Note', data:labnote }, status: :ok
            end

            def create
                labnote = Labnote.new(labnote_params)

                if labnote.save
                    render json: { status: 'SUCCESS', message: 'Save Note', data:labnote }, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Note not saved', 
                    data:labnote.errors }, status: :unprocessable_entity
                end

            end

            def update

                labnote = Labnote.find(params[:id])
                if labnote.update_attributes(labnote_params)
                    render json: { status: 'SUCCESS', message: 'Note Updated', data:labnote }, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Note not Updated', 
                    data:labnote.errors }, status: :unprocessable_entity
                end
                
            end


            def destroy
                labnote = Labnote.find(params[:id])
                labnote.destroy
                render json: { status: 'SUCCESS', message: 'Deleted Note', data:labnote }, status: :ok

            end

            private

            # These are params that will be passed, the db column will not be updated if its not below.
            def labnote_params
                params.permit(
                    :labID, :pref, :noteCaller, :noteTalkedTo, :noteTime, :noteDate, :noteText,
                    :noteFollowUpDate, :noteFollowUpTime, :noteEvent, :status, :created_at)              
            end
         end
    end

end