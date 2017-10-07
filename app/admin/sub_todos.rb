ActiveAdmin.register SubTodo do
  permit_params :todo_id, :title, :completed

  index do
    selectable_column
    id_column
    column :todo
    column :title
    column :completed
    column :created_at
    actions
  end

  filter :todo_id
  filter :title
  filter :completed
  filter :created_at

  form do |f|
    f.inputs do
      f.input :todo_id
      f.input :title
      f.input :completed
    end
    f.actions
  end

end