class ArFlampactuatorTargetlightcommand < ActiveRecord::Base
  belongs_to :f_lampactuator
  belongs_to :l_lightcommand
end