class FormsController < ApplicationController
  def form

  end

  def process_form
  	render text: params.inspect
  end
end
