# frozen_string_literal: true

module RailsPictureHelper
  SOURCE_IMAGE_FORMATS = %w[avif webp png].freeze
  PRIMARY_FORMAT = 'jpg'.freeze
  SECONDARY_FORMAT = 'png'.freeze

  def picture_tag(filename, **options)
    html = []

    SOURCE_IMAGE_FORMATS.each do |format|
      image = resolve_asset_path "#{filename}.#{format}"
      html << tag.source(srcset: "/assets/#{image}", type: "image/#{format}") if image
    end

    image = resolve_asset_path("#{filename}.#{PRIMARY_FORMAT}") || resolve_asset_path("#{filename}.#{SECONDARY_FORMAT}")
    html << tag.img(src: "/assets/#{image}", alt: filename.humanize, **options) if image

    tag.picture do
      safe_join html
    end
  end
end
