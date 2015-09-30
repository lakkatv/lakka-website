class DocImagesFilter < Nanoc::Filter
  identifier :doc_images
  type :text

  def run(content, params={})
    content.gsub('src="images/', 'src="../images/')
  end
end
