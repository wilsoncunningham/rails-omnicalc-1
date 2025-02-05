class SquareController < ApplicationController
  def new_square
    render({:template => "square"})
  end

  def compute_square
    @square_input = params.fetch("user_square").to_f
    @result = @square_input ** 2

    render({:template => "square_results"})
  end
end
