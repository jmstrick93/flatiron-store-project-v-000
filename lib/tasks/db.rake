namespace :db do
  desc "Creates seed data that will not interfere with test seed data"
  task :custom_seed do
    Dir[File.join(Rails.root, 'db', 'custom_seeds', '*.rb')].each do |filename|
      load(filename) if File.exist?(filename)
    end
  end

end
