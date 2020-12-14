class UrlsController < ApplicationController
  def index
    @url = Url.new
  end

  def create
    @url = Url.new
    code = params[:url][:code]

    if !code.empty?
      url_by_code = Url.find_by(code: code)
      if !url_by_code.nil?
        flash[:alert] = 'Code already in use. Pick another'
        redirect_to urls_path
        return
      else
        @url.code = code
      end
    else
     @url.code = @url.shortster_url
    end

    @url.url = params[:url][:url]

    if @url.save
      redirect_to url_path id: @url.id
    else
      flash[:error] = @url.errors.full_messages
      redirect_to urls_path
    end
  end

  def redirect
    @url = Url.find_by(code: params[:code])
    puts "here"
    if !@url.nil?
      @url.count_visit = @url.count_visit + 1;
      @url.save
      redirect_to @url.url
    end
  end

  def stats
    @url = Url.find_by(code: params[:code])
  end

  def show
    @url = Url.find_by(id: params[:id])
  end

end
