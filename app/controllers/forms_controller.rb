class FormsController < ApplicationController

  def form

  end

  def test_form

  end
  
  def test_process
    render text: params.inspect
  end

  def process_form
  	render text: params.inspect
  end
end
