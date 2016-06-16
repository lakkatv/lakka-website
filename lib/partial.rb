module Partial
  def partial name, filters = []
    partial = "#{Dir.getwd}/partials/#{name}"
    partial2 = "#{Dir.getwd}/content/doc/#{name}"

    if File.exists? partial then

      content = File.open(partial).read
      filters.each do |name|
        filter name do
          content
        end
      end

      content

    elsif File.exists? partial2 then

      content = File.open(partial2).read
      filters.each do |name|
        filter name do
          content
        end
      end

      content

    else
      fail "Partial not found"
    end

  end
end

include Partial
