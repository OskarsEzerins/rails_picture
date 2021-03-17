# frozen_string_literal: true

# Add a helper method to Rails views
module RailsPicture
  # Add a helper method to Rails views
  module RailsPictureHelper
    SOURCE_FORMATS = %w[avif webp apng gif svg jxl bmp ico cur tif tiff].freeze
    IMG_FORMATS = %w[jpg jpeg png jfif pjpeg pjp].freeze

    def picture_tag(filename, **options)
      html = []

      SOURCE_FORMATS.each { |f| html << build_source_tag(filename, f) }

      html << build_image_tag(filename, **options)

      tag.picture { safe_join html }
    end

    private

    def build_source_tag(filename, format)
      tag.source(srcset: asset_path(filename, format), type: "image/#{format}")
    end

    def build_image_tag(filename, **options)
      tag.img(src: find_img_format(filename), alt: filename.humanize, **options)
    end

    def find_img_format(filename)
      IMG_FORMATS.map do |format|
        asset_path(filename, format)
      end.compact.first
    end

    def asset_path(filename, format)
      path = resolve_asset_path "#{filename}.#{format}"
      path && "/assets/#{path}"
    end
  end
end
