class Job < ApplicationRecord
  belongs_to :tag

  searchkick language: "brazilian", callbacks: :async
  scope :search_import, -> { includes(:tag) }

  def search_data
    {
      title: title,
      company: company,
      description: description,
      locale: locale,
      tag_name: tag.name
    }
  end

  after_commit :reindex_tag

  def reindex_tag
    tag.reindex
  end
end
