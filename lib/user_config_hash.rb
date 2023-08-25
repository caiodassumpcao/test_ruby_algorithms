def user_config(config)
  config_padrao = { cor_fundo: "branca", fonte: "arial", tamanho_fonte: 11 }

  cor_fundo = config[:cor_fundo] || config_padrao[:cor_fundo]
  fonte = config[:fonte] || config_padrao[:fonte]
  tamanho_fonte = config[:tamanho_fonte] || config_padrao[:tamanho_fonte]

  return { cor_fundo: cor_fundo, fonte:fonte, tamanho_fonte:tamanho_fonte }
end

config_user_1 = { cor_fundo: "preto" }
config_user_2 = { fonte: "calibri" }
config_user_3 = { cor_fundo: "azul",fonte: "calibri",tamanho_fonte: 8 }

full_config_user_1 = user_config(config_user_1)
puts "Configuraçoes User 1: #{full_config_user_1}"
full_config_user_2 = user_config(config_user_2)
puts "Configuraçoes User 1: #{full_config_user_2}"
full_config_user_3 = user_config(config_user_3)
puts "Configuraçoes User 1: #{full_config_user_3}"