usage       'create-article <title>'
aliases     :ca
summary     'Create a new article with the current date'
description 'Create a new article with the current date. It will be generated in content/articles/[year]/[month]/[day]/[slug].md, slug will be generated from title'

required :c, :vcs, 'specify the VCS to use'

class CreateArticle < ::Nanoc::CLI::CommandRunner
  def slugize title
    title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def run
    args = arguments
    if args.empty? then
      raise Nanoc::Errors::GenericTrivial, "usage: #{command.usage}"
    end

    # Make sure we are in a nanoc site directory
    require_site

    # Set VCS if possible
    set_vcs(options[:vcs])

    title = args.join(' ')
    slug = slugize title

    now = Time.now

    identifier = "articles/#{now.strftime '%Y/%m/%d'}/#{slug}".cleaned_identifier

    file_path = "#{identifier}.md"

    Nanoc::NotificationCenter.on(:file_created) do |file_path|
      Nanoc::CLI::Logger.instance.file(:high, :create, file_path)
    end

    # Create item
    data_source = site.data_sources[0]
    data_source.create_item(
      "Hi, I'm a new article!\n",
      { :title => title, 
        :created_at => "#{now.strftime '%F %T'}",
        :author_name => ENV['USER'],
        :kind => 'article' },
      identifier,
      :extension => ".md"
    )
	  
    puts "An item has been created at #{identifier}."
  end
end

runner CreateArticle
