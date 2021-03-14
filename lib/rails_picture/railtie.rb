# frozen_string_literal: true

require 'rails'
require_relative 'rails_picture_helper'

module RailsPicture
  class Railtie < ::Rails::Railtie
    initializer 'rails_picture.view_helpers' do
      ActiveSupport.on_load(:action_view) { include RailsPicture::RailsPictureHelper }
    end
  end
end
