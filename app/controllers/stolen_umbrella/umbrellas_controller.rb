class StolenUmbrella::UmbrellasController < StolenUmbrella::BaseController

  def index
    @umbrellas = Umbrella.order(created_at: :desc).limit(30)
    @umbrella = Umbrella.new
  end

  def new
    @umbrella = Umbrella.new
  end

  def create
    @umbrella = Umbrella.create(umbrella_params)

    if @umbrella.save
      redirect_to stolen_umbrella_umbrellas_path, notice: 'Umbrella was successfully created.'
    else
      redirect_to stolen_umbrella_umbrellas_path
    end
  end

  private

  def umbrella_params
    params.require(:umbrella).permit(:memory)
  end
end
