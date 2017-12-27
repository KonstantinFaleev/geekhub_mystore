ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  show do
    attributes_table do
      row :name
      row :description
      row :price
      row :images do
        div do
          product.images.each do |image|
            div do
              image_tag(image)
            end
          end
        end
      end
    end
    # active_admin_comments
  end

end
