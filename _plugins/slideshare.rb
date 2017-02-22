require 'json'

class Slideshare < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    @content = markup

    begin
      if( !@content.nil? && !@content.empty? )
        jdata = JSON.parse(@content)
        if( jdata.key?("id") )
          @id = jdata["id"].strip
        else
          raise "No id provided in the \"slideshare\" tag"
        end
        if( jdata.key?("width") )
          @width = jdata["width"]
        else
          @width = 344
        end
        if( jdata.key?("height") )
          @height = jdata["height"]
        else
          @height = 292
        end
      else
        raise "No params provided in the \"slideshare\" tag"
      end
    end
  end

  def render(context)
    "<div class=\"media slideshare\"><iframe src=\"//www.slideshare.net/slideshow/embed_code/key/#{@id}\" width=\"#{@width}\" height=\"#{@height}\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" style=\"border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;\" allowfullscreen> </iframe></div>"
  end

  Liquid::Template.register_tag "slideshare", self
end
