class MissionsController < ApplicationController

    def new
        @mission = Mission.new
        @mission.status   = "pending"
        @mission.priority = "medium"
        @url     = missions_path
        @method  = :POST        
    end

    def edit
        @mission = Mission.find_by(id: params[:id])
        @url     = mission_path
        @method  = :PUT        
    end
    
    def create 
        @mission = Mission.new(mission_params)
        if @mission.save
            flash[:notice] = "新增任務成功!"
            redirect_to root_path
        else
            flash[:notice] = "新增任務失敗!"
            render :new
        end        
    end

    def update
        @mission = Mission.find_by(id: params[:id])
        if @mission.update(mission_params)
            flash[:notice] = "修改任務成功!"
            redirect_to root_path
        else
            flash[:notice] = "修改任務失敗!"
            render :edit
        end        
    end    

    def show
        respond_to do |format|
            @mission    = Mission.find_by(id: params[:id])
            format.json { render json: {title: @mission.title, content: @mission.content, status: :ok} }
        end 
    end    


    def destroy
        @mission    = Mission.find_by(id: params[:id])
        if @mission 
            @mission.destroy
            flash[:notice] = "刪除任務成功!"
        else
            flash[:notice] = "刪除任務失敗!"
        end
        redirect_to root_path            
    end    
    
    private
    def mission_params
        params.require(:mission).permit(:title, :content, :start_time, :end_time, :priority, :status, :tags)
    end 
    
end


