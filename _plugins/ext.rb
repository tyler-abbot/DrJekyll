require 'jekyll/scholar'
require 'uri'

module HTMLFilter
  class HTML < BibTeX::Filter
    def apply(value)
      links_list = value.slice(URI.regexp(['http','https','ftp'])).to_s.split(";")
      if links_list.size > 0
        value = ""
        for index in 0 ... links_list.size
          link_text = links_list[index].slice!(URI.regexp(['LINK'])).to_s.slice(5..-1)
          links_list[index] = "[<a href=\"#{links_list[index]}\" target=\"_blank\">#{link_text}</a>]"
          value = value + links_list[index]
        end
      end
      return value
    end
  end
end
