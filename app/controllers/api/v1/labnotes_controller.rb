module Api

    module V1
        class LabnotesController < ApplicationController

            def index
                #labprofiles = Labprofile.order('labID DESC').limit(5)
                labnotes = Labnote.order('labID DESC').limit(5)
                render json: { status: 'SUCCESS', message: 'Loaded all Notes', data:labnotes }, status: :ok
            end

    #         def show
    #             labprofile = Labprofile.find(params[:id])
    #             render json: { status: 'SUCCESS', message: 'Loaded Profile', data:labprofile }, status: :ok
    #         end

    #         def create
    #             labprofile = Labprofile.new(labprofile_params)

    #             if labprofile.save
    #                 render json: { status: 'SUCCESS', message: 'Save Profile', data:labprofile }, status: :ok
    #             else
    #                 render json: { status: 'ERROR', message: 'Profile not saved', 
    #                 data:labprofile.errors }, status: :unprocessable_entity
    #             end

    #         end

    #         def update

    #             labprofile = Labprofile.find(params[:id])
    #             if labprofile.update_attributes(labprofile_params)
    #                 render json: { status: 'SUCCESS', message: 'Profile Updated', data:labprofile }, status: :ok
    #             else
    #                 render json: { status: 'ERROR', message: 'Profile not Updated', 
    #                 data:labprofile.errors }, status: :unprocessable_entity
    #             end
                
    #         end


    #         def destroy
    #             labprofile = Labprofile.find(params[:id])
    #             labprofile.destroy
    #             render json: { status: 'SUCCESS', message: 'Deleted Profile', data:labprofile }, status: :ok

    #         end

    #         private

    #         # These are params that will be passed, the db column will not be updated if its not below.
            def labprofile_params
                params.permit(
                    :labID,:pref,:noteCaller,:noteTalkedTo,:noteTime,:noteDate,:noteText,
                    :noteFollowUpDate,:noteFollowUpTime,:noteEvent,:status,:created_at)              
            end
         end
    end

end