# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RailsPicture, type: :feature do
  before do
    visit showcases_path
  end

  it 'shows picture tag' do
    expect(page).to have_css 'picture'
  end

  it 'shows avif image format source' do
    within 'picture' do
      expect(page).to have_css "source[type='image/avif']"
    end
  end

  it 'shows webp image format' do
    within 'picture' do
      expect(page).to have_css "source[type='image/webp']"
    end
  end

  it 'shows jxl image format' do
    within 'picture' do
      expect(page).to have_css "source[type='image/jxl']"
    end
  end

  it 'shows img tag' do
    within 'picture' do
      expect(page).to have_css 'img'
    end
  end

  it 'sets img width' do
    within 'picture' do
      expect(page).to have_css "img[width='1000']"
    end
  end

  it 'creates alt tag from filename' do
    within 'picture' do
      expect(page).to have_css "img[alt='Ruby']"
    end
  end
end
