class Submission < ActiveRecord::Base
  
  if Rails.env.development?
    ENV = YAML.load(File.read("#{Rails.root}/config/s3.yml"))
  end

  has_attached_file :photo, 
    :styles => {:medium => "500x500>", :thumb => "300x300>"},
    :storage => :s3,
    :bucket => (Rails.env.production? ? 'typecurio' : 'typecurio-testing'),
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] }
end
