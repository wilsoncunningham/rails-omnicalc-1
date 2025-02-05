class SqrtController < ApplicationController
  def new_sqrt
    render({:template => "sqrt"})
  end

  def compute_sqrt
    @sqrt_input = params.fetch("user_sqrt").to_f
    @result = @sqrt_input ** 0.5

    render({:template => "sqrt_results"})
  end
end
