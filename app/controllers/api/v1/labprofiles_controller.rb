module Api

    module v1
        class LabprofilesController < ApplicationController

            def index
                labprofiles = Labprofile.order('created_at', DESC);
                render json: { status: 'SUCCESS', message: 'Loaded all articles', data: :labprofiles }
            end
        end
    end

end