# == Schema Information
#
# Table name: submissions
#
#  id         :integer          not null, primary key
#  roll       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pages      :json
#

class Submission < ActiveRecord::Base
	mount_uploaders :pages, PageUploader
	has_many :annotations
	accepts_nested_attributes_for :annotations, allow_destroy: true
end
