module RailsPicture
  class Engine < ::Rails::Engine
    initializer 'rails_picture.engine' do |app|
      ActionView::Base.send :include, RailsPicture::RailsPictureHelper
    end
  end
end
