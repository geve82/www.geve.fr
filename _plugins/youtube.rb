require 'json'

class YouTube < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    @content = markup

    begin
      if( !@content.nil? && !@content.empty? )
        jdata = JSON.parse(@content)
        if( jdata.key?("id") )
          @id = jdata["id"].strip
        else
          raise "No id provided in the \"youtube\" tag"
        end
        if( jdata.key?("width") )
          @width = jdata["width"]
        else
          @width = 560
        end
        if( jdata.key?("height") )
          @height = jdata["height"]
        else
          @height = 420
        end
      else
        raise "No params provided in the \"youtube\" tag"
      end
    end
  end

  def render(context)
    "<div class=\"media youtube\"><iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"></iframe></div>"
  end

  Liquid::Template.register_tag "youtube", self
end
