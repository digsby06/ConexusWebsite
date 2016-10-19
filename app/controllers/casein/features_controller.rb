# Scaffolding generated by Casein v5.1.1.5

module Casein
  class FeaturesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Features'
  		@features = Feature.order(sort_order(:title)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View feature'
      @feature = Feature.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new feature'
    	@feature = Feature.new
    end

    def create
      @feature = Feature.new feature_params
    
      if @feature.save
        flash[:notice] = 'Feature created'
        redirect_to casein_features_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new feature'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update feature'
      
      @feature = Feature.find params[:id]
    
      if @feature.update_attributes feature_params
        flash[:notice] = 'Feature has been updated'
        redirect_to casein_features_path
      else
        flash.now[:warning] = 'There were problems when trying to update this feature'
        render :action => :show
      end
    end
 
    def destroy
      @feature = Feature.find params[:id]

      @feature.destroy
      flash[:notice] = 'Feature has been deleted'
      redirect_to casein_features_path
    end
  
    private
      
      def feature_params
        params.require(:feature).permit(:title, :description, :image)
      end

  end
end