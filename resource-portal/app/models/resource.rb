class Resource < ActiveRecord::Base
  after_initialize :default_values
  # Validates correctly but difficulties in displaying the error
  # validates :website, :presence => true
  validate :must_have_one_category

  has_and_belongs_to_many :category

  private

  def default_values
    self.status ||= 'Pending'
  end

  def must_have_one_category
    if !(category_ids.length > 0)
      errors.add(:items, 'You must select at least one category')
    end
  end
end
