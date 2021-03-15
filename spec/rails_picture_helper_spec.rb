# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RailsPicture, type: :feature do
  it 'shows avif image format' do
    visit showcases_path

    expect(page).to have_css "img[width='1000'"
  end
end
