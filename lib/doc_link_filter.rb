class DocLinksFilter < Nanoc::Filter
  identifier :doc_links
  type :text

  def run(content, params={})
    filtered = "#{content}"
    needles = filtered.scan /href="[^http|irc][^"]*"/
    needles.each do |needle|
      if needle[6,1] != '#'
        replacement = needle.sub '="', '="/doc/'
        replacement = replacement[0...-1] << '/"'
      else
        replacement = needle
      end
      filtered.sub! needle, replacement
    end 
    filtered
  end
end
