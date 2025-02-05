class RandomController < ApplicationController
  def new_random
    render({:template => "random"})
  end

  def compute_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @rand_num = rand(@min..@max)

    render({:template => "random_results"})
  end
end
