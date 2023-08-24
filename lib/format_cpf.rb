def formate_cpf(cpf)
  cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
end

def remove_special_carac(cpf)
  if
end