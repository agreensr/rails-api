module Api

    module V1
        class LabprofilesController < ApplicationController

            def index
                labprofiles = Labprofile.order('labID DESC').limit(5);
                render json: { status: 'SUCCESS', message: 'Loaded all Profiles', data:labprofiles }, status: :ok
            end

            def show
                labprofile = Labprofile.find(params[:id])
                render json: { status: 'SUCCESS', message: 'Loaded Profile', data:labprofile }, status: :ok
            end

            def create
                labprofile = Labprofile.new(labprofile_params)

                if labprofile.save
                    render json: { status: 'SUCCESS', message: 'Save Profile', data:labprofile }, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Profile not saved', 
                    data:labprofile.errors }, status: :unprocessable_entity
                end

            end

            def update

                labprofile = Labprofile.find(params[:id])
                if labprofile.update_attributes(labprofile_params)
                    render json: { status: 'SUCCESS', message: 'Profile Updated', data:labprofile }, status: :ok
                else
                    render json: { status: 'ERROR', message: 'Profile not Updated', 
                    data:labprofile.errors }, status: :unprocessable_entity
                end
                
            end


            def destroy

                labprofile = Labprofile.find(params[:id])
                labprofile.destroy
                render json: { status: 'SUCCESS', message: 'Deleted Profile', data:labprofile }, status: :ok

            end

            private

            def labprofile_params
                params.permit(
                    :labLogin, :labName,
                    :labContact, :labStatus,
                    :labPhone, :labPhone2,
                    :labFax, :labAddress,
                    :labCity, :labState,
                    :labZip, :labCounty,
                    :labEmail, :shareholderStatus,
                    :secondaryEmail, :thirdEmail,
                    :labURL, :labYears,
                    :labTechs, :labStatement,
                    :labAboutUs, :labWhyUs,
                    :enabled, :directconnect,
                    :labHold, :salesperson,
                    :signup_date, :expiration,
                    :cancel_date, :sponsor,
                    :labSpecial, :labSponsor,
                    :labSponsor2, :homepage,
                    :ftp, :url,
                    :rxuser, :rxpass,
                    :template, :new_admin_template,
                    :month, :year,
                    :managed, :sgroup,
                    :giftcode, :gr75,
                    :grexp, :micro1,
                    :micro2, :micro3,
                    :micro4, :micro5,
                    :micro6, :micro7,
                    :micro8, :micro9,
                    :micro10, :sgiftcode,
                    :survey, :survey_enabled,
                    :warranty, :msg,
                    :drate, :gusername,
                    :gpassword, :outsource,
                    :ccpp_qualify_date, :ams_tech_customer,
                    :alert_list_contacted, :alert_list_contact_date,
                    :has_scanner, :has_mill, :outsource_files,
                    :mills_bridges, :has_titanium_mill,
                    :outsource_titanium, :accepts_bar_work,
                    :accepts_dentist_files, :interview,
                    :invalid_phone, :invalid_phone2,
                    :sales_level, :design_center_lab,
                    :lat, :lng)              
            end
        end
    end

end