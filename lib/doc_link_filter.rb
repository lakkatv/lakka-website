class DocLinksFilter < Nanoc::Filter
  identifier :doc_links
  type :text

  def run(content, params={})
    filtered = "#{content}"
    needles = filtered.scan /href="wiki[^"]*"/
    needles.each do |needle|
      replacement = needle.gsub(' ', '-').sub '="wiki', '="/doc'
      filtered.sub! needle, replacement
    end 
    filtered
  end
end
