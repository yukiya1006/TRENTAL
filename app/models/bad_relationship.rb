class BadRelationship < ApplicationRecord
  belongs_to :bader, class_name: "User" 
  belongs_to :baded, class_name: "Trainer" 
end
