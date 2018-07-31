class Job < ApplicationRecord
  belongs_to :tag

  searchkick language: "brazilian"
  scope :search_import, -> { includes(:tag) }

  def search_data
    {
      name: name,
      description: description,
      tag_name: tag.name
    }
  end

  after_commit :reindex_tag

  def reindex_tag
    tag.reindex
  end
end
