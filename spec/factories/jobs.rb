FactoryBot.define do
  factory :job do
    image_url   { FFaker::Image.url }
    title       { FFaker::JobBR.title }
    company     { FFaker::Company.name }
    description { FFaker::HipsterIpsum.paragraphs }
    locale      { FFaker::AddressBR.city }
    job_url     { FFaker::InternetSE.http_url }
    tag        
  end
end
