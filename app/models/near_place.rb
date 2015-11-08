class NearPlace < ActiveRecord::Base
  belongs_to :place

  rails_admin do
    configure :place do
      label 'Owner of this ball: '
    end
  end
end
