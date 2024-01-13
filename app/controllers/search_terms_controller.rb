class SearchTermsController < ApplicationController
  def index
    ip = params[:user_ip] || request.remote_ip
    @search_terms = SearchTerm.where(ip: ip).order(count: :desc)
  end
end
