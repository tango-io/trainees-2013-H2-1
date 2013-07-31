require 'spec_helper'

describe ProjectsController do
  #Comienzan las pruebas

  it "Get the index" do
    get:index
    response.should be_successful
  end
end

