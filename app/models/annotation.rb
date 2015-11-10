# == Schema Information
#
# Table name: annotations
#
#  id            :integer          not null, primary key
#  mark          :integer
#  sketch        :json
#  submission_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  comment       :text
#

class Annotation < ActiveRecord::Base
end
