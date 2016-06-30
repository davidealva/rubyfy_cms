class Page < ActiveRecord::Base
  validates :home, uniqueness: true, if: :home
end
