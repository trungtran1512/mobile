ActiveAdmin.register Team do

  permit_params :name, :phone_number, :member, :type_yard, :history, :motes, :type_sex

end
