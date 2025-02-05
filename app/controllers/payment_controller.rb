class PaymentController < ApplicationController
  def new_payment
    render({:template => "payment"})
  end

  def compute_payment
    @apr = params.fetch("user_apr").to_f / 100 / 12
    @duration = params.fetch("user_duration").to_i
    @principal =  params.fetch("user_principal").to_f

    @apr_display = (@apr*100*12).to_fs(:percentage, {:precision => 4})
    @principal_display = @principal.to_fs(:currency)

    @periods = @duration * 12

    @payment = (@apr * @principal) / (1 - (1 + @apr)**(-@periods))
    @payment_display = @payment.to_fs(:currency)

    render({:template =>"payment_results"})
  end
end
