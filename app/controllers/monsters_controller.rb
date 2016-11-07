class MonstersController < ApplicationController

  def index
    @incase = 'Ready to build your monster?'

    @monster = Monster.new(params[:color], params[:num_eyes], params[:wings], params[:name])
    cookies[:monster] = @monster.to_yaml

  end

  def create

    @monster = YAML.load(cookies[:monster])
    render 'index.html.erb'
  end

end
