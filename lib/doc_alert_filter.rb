class DocAlertsFilter < Nanoc::Filter
  identifier :doc_alerts
  type :text

  def run(content, params={})
    filtered = "#{content}"
    needles = filtered.scan /<p>Warning:|<p>Note:/
    needles.each do |needle|
      replacement1 = needle.sub '<p>Warning:', '<p class="alert alert-warning" role="alert"><strong>Warning:</strong>'
      replacement2 = needle.sub '<p>Note:', '<p class="alert alert-info" role="alert"><strong>Note:</strong>'
      filtered.sub! needle, replacement1
      filtered.sub! needle, replacement2
    end 
    filtered
  end
end
