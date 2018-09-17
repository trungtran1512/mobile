ActiveAdmin.register User do

  permit_params :name, :birthday, :phone_number, :contact, :level, :sex, :notes

end
