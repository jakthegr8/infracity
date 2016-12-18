namespace :attach_photo do
  desc "Add attachment to roads"
  task :add => [:environment] do
    user = User.first
    rails_root = Rails.root.join('test', 'fixtures', 'files').to_s
    Road.all.each do |road|
      break if road.id > 8
      id = road.id.to_s
      (0..1).each do
        file_path = rails_root + '/road'+id+'.jpg'
        f = File.new(file_path)
        us = UsersRoadsPhotoMap.create(road: road, user: user, photo: f)
        puts us.photo.url
        id += id
      end
    end
  end
end