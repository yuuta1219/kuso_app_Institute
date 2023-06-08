class StolenUmbrella::UmbrellasController < StolenUmbrella::BaseController
    def index
      @umbrellas = Umbrella.all
    end
  
    def new
      @umbrella = Umbrella.new
    end

    def create
      @umbrella = current_user.umbrellas.build(umbrella_params)
  
      if @umbrella.save
        redirect_to stolen_umbrella_umbrellas_path, notice: 'Umbrella was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @umbrella = Umbrella.find(params[:id])
    end
  
    def update
      @umbrella = Umbrella.find(params[:id])
  
      if @umbrella.update(umbrella_params)
        redirect_to stolen_umbrella_umbrellas_path, notice: 'Umbrella was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @umbrella = Umbrella.find(params[:id])
      @umbrella.destroy
  
      redirect_to stolen_umbrella_umbrellas_path, notice: 'Umbrella was successfully destroyed.'
    end
  
    private
  
    def umbrella_params
      params.require(:umbrella).permit(:title, :memory, :stolen_place)
    end
end
