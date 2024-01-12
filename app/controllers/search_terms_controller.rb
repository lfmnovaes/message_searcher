class SearchTermsController < ApplicationController
  def index
    ip = real_ip
    @search_terms = SearchTerm.where(ip: ip).order(count: :desc)
  end
end

def real_ip
  request.env['HTTP_X_FORWARDED_FOR'] || request.remote_ip
end
