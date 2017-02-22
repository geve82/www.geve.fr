require 'json'

class Image < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    @content = markup

    begin
      if( !@content.nil? && !@content.empty? )
        jdata = JSON.parse(@content)
        if( jdata.key?("src") )
          @src = jdata["src"].strip
        else
          raise "No src provided in the \"image\" tag"
        end
        if( jdata.key?("alt") )
          @alt = jdata["alt"].strip
        else
          @alt = ""
        end
        if( jdata.key?("width") )
          @width = jdata["width"]
        else
          @width = ""
        end
        if( jdata.key?("height") )
          @height = jdata["height"]
        else
          @height = ""
        end
        if( jdata.key?("class") )
          @class = jdata["class"].strip
        else
          @class = "materialboxed"
        end
      else
        raise "No params provided in the \"image\" tag"
      end
    end
  end

  def render(context)
    "<div class=\"media image\"><img src=\"#{@src}\" alt=\"#{@alt}\"  data-caption=\"#{@alt}\" class=\"#{@class}\" width=\"#{@width}\" height=\"#{@height}\" /></div>"
  end

  Liquid::Template.register_tag "image", self
end
