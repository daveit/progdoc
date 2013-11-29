ActiveAdmin.register Document do

  index :download_links => false do
    column :product
    column "Customer Order#", :custord
    column "Delivery Document", :deldoc
    #column "Customer Order#", :custord
    column "Sales Order#", :salesorder
    column "Document Date", :docdate
    actions :defaults => false do |document|
      link_to "View Document", document.docname_url, :target => "_blank"
    end
    #default_actions
  end

  form do |f|
    f.inputs "Documents" do
      f.input :product
      f.input :docname, :label => "Document Name", :input_html => { :size => 60 }
      f.input :custord, :label => "Customer Order#", :input_html => { :size => 25 }
      f.input :lotnum, :label => "Lot Number", :input_html => { :size => 25 }
      f.input :deldoc, :label => "Delivery Doc#", :input_html => { :size => 25 }
      f.input :salesorder, :label => "Sales Order#", :input_html => { :size => 25 }
      f.input :docdate, :label => "Document Date", :as => :datepicker, :input_html => { :size => 12 }
    end
    f.actions
  end

  config.per_page = 12

  controller do
    def permitted_params
      params.permit document: [:product_id, :deldoc, :lotnum, :custord, :docdate, :salesorder, :docname]
    end
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
