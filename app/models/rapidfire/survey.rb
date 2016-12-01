module Rapidfire
  class Survey < ActiveRecord::Base
    has_many  :questions
    belongs_to :company
    validates :name, :presence => true

    if Rails::VERSION::MAJOR == 3
      attr_accessible :name, :introduction
    end
  end
end
