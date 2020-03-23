class Admin::PreferencesController < ApplicationController
  
  def index 
    @preference = Preference.first
  end

  def update
    @preference = Preference.first
      if @preference.update_attributes(preference_params)
        flash[:success] = "Preference was successfully updated"
        redirect_to admin_preferences_path
      else
        flash[:error] = "Something went wrong"
        redirect_to admin_preferences_path
      end
  end
  
  private 

  def preference_params
    params.require(:preference).permit(:allow_create_artists,:allow_create_songs)
  end
end
