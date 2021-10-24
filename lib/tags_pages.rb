module TagPages
  def tagged_items
    @items.select do |item|
      item[:tags].is_a? Array
    end
  end

  def all_tags
    tags = []
    tagged_items.each do |item|
      tags += item[:tags]
    end
    tags.uniq
  end

  def create_tags_pages
    all_tags.map do |tag|
      @items.create(
        '',
        { title: "Tag: #{tag}", tag: tag },
        "/tags/#{tag}/"
      )
    end
  end
end

include TagPages
