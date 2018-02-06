module ApplicationHelper
  def image_path_for(user)
    if user.photo.present?
      cl_image_path user.photo.path
    else
      image_path "avatar-inside-o-circle.png"
    end
  end
end
