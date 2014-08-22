module Partial
  def partial name, filters = []
    partial = "#{Dir.getwd}/partials/#{name}"

    fail "Partial #{partial} not found" unless File.exists? partial

    content = File.open(partial).read
    filters.each do |name|
      filter name do
        content
      end
    end

    content
  end
end

include Partial
