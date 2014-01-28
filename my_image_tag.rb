# my_image_tag
#
# A Liquid filter to add images with different options like class, ID, size,
# alt text and others.
# The tag will be added with the site url prepended to the source, this helps
# for output that will be rendered in pages like RSS or alike.
#
# https://github.com/nestormata/my-image-tag
#
# Copyright (c) Nestor Mata Cuthbert, 2014

module Jekyll
  module MyImageTag

    def img_tag(src, className='', id='', alt='', enclosed = true)
      full_path = Jekyll.configuration({})['url'] + src
      output = ''

      if enclosed then
        output << '<div'
      else
        output << '<img src="' + full_path + '"'
      end

      if className.length > 0 then
        output << ' class="' + className + '"'
      end

      if id.length > 0 then
        output << ' id="' + id + '"'
      end

      if enclosed then
        output << '>'
        output << '<img src="' + full_path + '"'
      end

      if alt.length > 0 then
        output << ' alt="' + alt + '"'
      end

      if enclosed then
        output << ' />'
        output << '</div>'
      else
        output << ' />'
      end

      output
    end

    #private

  end
end

Liquid::Template.register_filter(Jekyll::MyImageTag)
