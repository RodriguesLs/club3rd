module CostumersHelper
  def phone_format(phone)
    formated_phone = "("
    formated_phone << phone[0..1]
    formated_phone << ") "
    formated_phone << phone[2..5]
    formated_phone << "-"
    formated_phone << phone[6..9]
    formated_phone
  end

  def rg_format(rg)
    formated_rg = ""
    formated_rg << rg[0..1]
    formated_rg << '.'
    formated_rg << rg[2..4]
    formated_rg << '.'
    formated_rg << rg[5..7]
    formated_rg << '-'
    formated_rg << rg[8..9]
    formated_rg
  end

  def cpf_format(cpf)
    formated_cpf = ""
    formated_cpf << cpf[0..2]
    formated_cpf << '.'
    formated_cpf << cpf[3..5]
    formated_cpf << '.'
    formated_cpf << cpf[6..8]
    formated_cpf << '-'
    formated_cpf << cpf[9..10]
    formated_cpf
  end
end
