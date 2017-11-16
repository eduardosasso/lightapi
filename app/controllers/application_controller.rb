class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render plain: "hi #{Rails.env}"
  end

  def show
    # http://localhost:3000/trip/user.json?response={id:%20number,name:%20string,%20created_at:%20date,%20address:%20[phone:%20string,city:%20string]}
    rows = (params[:rows] || 10).to_i

    # response/result schema response={id: number, name: string}
    schema = params.select do |name|
      params[name] =~ /^{.*}$/
    end

    render json: Api.new(schema).build(rows)
  end
end
