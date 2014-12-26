class DocLinksFilter < Nanoc::Filter
  identifier :doc_links
  type :text

  def run(content, params={})
    filtered = "#{content}"
    needles = filtered.scan /href="[^http|irc][^"]*"/
    needles.each do |needle|
      replacement = needle.gsub(' ', '%20').sub '="', '="/doc/'
      filtered.sub! needle, replacement
    end 
    filtered
  end
end
