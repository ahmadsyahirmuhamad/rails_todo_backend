ActiveAdmin.register Todo do
  permit_params :user_id, :title, :description, :completed

  index do
    selectable_column
    id_column
    column :user
    column :title
    column :description
    column :completed
    column :created_at
    actions
  end

  filter :user_id
  filter :title
  filter :completed
  filter :created_at

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :title
      f.input :description
      f.input :completed
    end
    f.actions
  end

end