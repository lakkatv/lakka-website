module DocHelper
  def doc_title item
    item[:title] || item.identifier.split('/')[2]
  end
end

include DocHelper
