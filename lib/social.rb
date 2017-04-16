module Social
  def item_full_url
    "#{@config[:base_url]}#{@item.identifier}"
  end

  def description str
    
  end

  def item_thumbnail
    "#{item_full_url}#{@item[:social][:thumbnail]}"
  end

  def item_has_thumbnail?
    !@item[:social].nil? && !@item[:social][:thumbnail].nil?
  end
end

include Social
