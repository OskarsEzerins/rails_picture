# frozen_string_literal: true

# Add a helper method to Rails views
module RailsPicture
  # Add a helper method to Rails views
  module RailsPictureHelper
    SOURCE_IMAGE_FORMATS = %w[avif webp jxl png].freeze
    PRIMARY_FORMAT = 'jpg'
    SECONDARY_FORMAT = 'png'

    def picture_tag(filename, **options)
      html = []

      SOURCE_IMAGE_FORMATS.each do |format|
        image = resolve_asset_path "#{filename}.#{format}"
        html << tag.source(srcset: "/assets/#{image}", type: "image/#{format}") if image
      end

      image = image(filename)
      html << tag.img(src: "/assets/#{image}", alt: filename.humanize, **options) if image

      tag.picture { safe_join html }
    end

    private

    def image(filename)
      resolve_asset_path("#{filename}.#{PRIMARY_FORMAT}") || resolve_asset_path("#{filename}.#{SECONDARY_FORMAT}")
    end
  end
end
