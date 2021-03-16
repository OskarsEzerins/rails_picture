# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RailsPicture, type: :feature do
  before { visit showcases_path }

  it 'shows picture tag' do
    expect(page).to have_css 'picture', count: 2
  end

  describe 'jpg img tag' do
    it 'shows avif image format source' do
      within all('picture')[0] do
        expect(page).to have_css "source[type='image/avif']"
      end
    end

    it 'shows webp image format' do
      within all('picture')[0] do
        expect(page).to have_css "source[type='image/webp']"
      end
    end

    it 'shows jxl image format' do
      within all('picture')[0] do
        expect(page).to have_css "source[type='image/jxl']"
      end
    end

    it 'shows img tag' do
      within all('picture')[0] do
        expect(page).to have_css 'img'
      end
    end

    it 'shows img tag with jpg file format' do
      within all('picture')[0] do
        expect(img_attr_value(:src).split('.').last).to eq 'jpg'
      end
    end

    it 'sets img width' do
      within all('picture')[0] do
        expect(page).to have_css "img[width='1000']"
      end
    end

    it 'creates alt tag from filename' do
      within all('picture')[0] do
        expect(img_attr_value(:alt)).to eq 'Jpeg/ruby'
      end
    end
  end

  describe 'png' do
    it 'shows avif image format source' do
      within all('picture')[1] do
        expect(page).to have_css "source[type='image/avif']"
      end
    end

    it 'shows webp image format' do
      within all('picture')[1] do
        expect(page).to have_css "source[type='image/webp']"
      end
    end

    it 'shows jxl image format' do
      within all('picture')[1] do
        expect(page).to have_css "source[type='image/jxl']"
      end
    end

    it 'shows img tag with png file format' do
      within all('picture')[1] do
        expect(img_attr_value(:src).split('.').last).to eq 'png'
      end
    end

    it 'shows img tag' do
      within all('picture')[1] do
        expect(page).to have_css 'img'
      end
    end

    it 'sets img width' do
      within all('picture')[1] do
        expect(page).to have_css "img[width='1000']"
      end
    end

    it 'creates alt tag from filename' do
      within all('picture')[1] do
        expect(img_attr_value(:alt)).to eq 'Png/ruby'
      end
    end
  end

  def img_attr_value(attr)
    location_scope.at_css('img').attribute(attr)
  end

  def location_scope
    current_scope.respond_to?(:click) ? page.driver.browser.at_xpath(current_scope.path) : page.driver.at_xpath('/html')
  end
end
