ActiveAdmin.register Poi do

  permit_params :name,:description,:email_address,:phone_number,:website_url,:logo

  index do
    selectable_column
    column :name
    column :description
    actions
  end

  show do |ad|
    attributes_table do
      row :Name do ad.name end
      row :Description do ad.description end
      row :Email do ad.email_address end
      row :Phone do ad.phone_number end
      row :Website do ad.website_url end
      row :logo do
        image_tag(ad.logo.url)
      end
    end
    active_admin_comments
  end

  form do |f|

    f.inputs "Edit POI", :multipart => true do

      f.input :name, :label => "Name"
      f.input :description, :label => "Description"
      f.input :email_address, :label => "Email"
      f.input :phone_number, :label => "Phone"
      f.input :website_url, :label => "Website"
      f.input :logo, :as => :file, :hint => f.template.image_tag(f.object.logo.url), :label => "POI Image"

    end

    f.actions

  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
