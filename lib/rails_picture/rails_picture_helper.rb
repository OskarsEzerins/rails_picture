# frozen_string_literal: true

# Add a helper method to Rails views
module RailsPicture
  # Add a helper method to Rails views
  module RailsPictureHelper
    SOURCE_FORMATS = %w[avif webp jxl].freeze
    IMG_FORMATS = %w[jpg png].freeze

    def picture_tag(filename, **options)
      html = []

      SOURCE_FORMATS.each { |f| html << source_tag(filename, f) }

      html << image_tag(filename, **options)

      tag.picture { safe_join html }
    end

    private

    def source_tag(filename, format)
      tag.source(srcset: asset_path(filename, format), type: "image/#{format}")
    end

    def image_tag(filename, **options)
      tag.img(src: find_img_format(filename), alt: filename.humanize, **options)
    end

    def find_img_format(filename)
      IMG_FORMATS.each do |format|
        path = asset_path(filename, format)
        return path if path
      end
    end

    def asset_path(filename, format)
      resolve_asset_path "/assets/#{filename}.#{format}"
    end
  end
end
