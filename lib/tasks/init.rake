namespace :init do
  desc "Init project name"
  task :rename, [:proj_name] => :environment do |_, args|
    proj_name = args[:proj_name]
    if proj_name.blank?
      puts "#{('[ERROR]').colorize(:color => :red)} Please input proj_name for params"
      next
    end

    puts Rails.root
    tar_files = [
      "package.json",
      "config/cable.yml",
      "config/database.yml",
      "config/environments/production.rb",
    ]
    tar_files.each do |tar_file|
      file = Rails.root.join(tar_file).to_s
      system("sed -i '.rename' 's/rails_admin_start_kit/#{proj_name}/g' #{file}")
      system("rm #{file}.rename")
    end

    tar_files = [
      "app/views/layouts/application.html.haml",
      "config/application.rb",
    ]
    tar_files.each do |tar_file|
      file = Rails.root.join(tar_file).to_s
      system("sed -i '.rename' 's/RailsAdminStartKit/#{proj_name.classify}/g' #{file}")
      system("rm #{file}.rename")
    end

    puts "#{('[INFO]').colorize(:color => :green)} Project rename finished! \n#{('[!IMPORTANT!]').colorize(:color => :yellow)} Remember to change folder name('../rails_admin_start_kit')."
  end

end