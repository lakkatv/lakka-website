module DocHelper
  def doc_title item
    item[:title] || item.identifier.split('/')[-1].gsub('-', ' ')
  end
end

include DocHelper
