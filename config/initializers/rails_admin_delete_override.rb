require "rails_admin/config/actions"
require "rails_admin/config/actions/base"

module RailsAdmin
  module Config
    module Actionos
      class Delete < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member? do
          true
        end
        register_instance_option :controller do
          Proc.new do
            byebug
            if request.get?
            elsif request.delete?
            end
          end
        end
      end
    end
  end
end

