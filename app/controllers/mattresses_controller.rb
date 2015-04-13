class MattressesController < ApplicationController
	def index
		@mattresses = Mattress.page params[:page]
		respond_to do |format|
			format.html {render layout: 'index'}
			format.js {render partial: 'mattresses'}
		end
	end

	def show
		render layout: 'application'
	end

	def filter
		@mattresses = Mattress.where(collection: params[:select_collection]).page params[:page]
		respond_to do |format|
			format.js {render partial: 'mattresses'}
		end
	end
end