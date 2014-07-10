class FormsController < ApplicationController

  around_action :e, only: [:callbacks]
  def form

  end

  def a
  	Rlogger.create log: "a"
  end

  def b
  	Rlogger.create log: "b"
  end
  
  def c
  	Rlogger.create log: "c"
  end
  

  def d
  	Rlogger.create log: "d"
  end

  def e
  	yield
  	  	Rlogger.create log: "around"
  end

  def callbacks
  	render text: "hiadj"
  end
  
  def process_form
  	render text: params.inspect
  end
end
