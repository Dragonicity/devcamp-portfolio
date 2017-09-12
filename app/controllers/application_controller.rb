class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentUserConcern
  include DeviseWhitelist
  include SetSource
  include SetPageDefaults
end