#5) Quais são as vantagens/desvantagens de se usar a arquitetura MVC (Model, View e
# Controller)?

#Vantagens:
#
#     Separação de responsabilidades: O MVC ajuda a separar a lógica de negócios (Model), a apresentação dos dados (View) e o controle da interação entre eles (Controller). Isso facilita a manutenção e o desenvolvimento, pois cada componente tem uma função bem definida.
#
#     Reutilização de código: Com a separação clara entre o Model, View e Controller, é possível reutilizar componentes em diferentes partes do sistema. Por exemplo, você pode ter vários controllers que compartilham o mesmo modelo ou várias views que exibem os dados de diferentes modelos.
#
#     Testabilidade: O MVC facilita a realização de testes, pois cada componente tem uma responsabilidade específica. É mais fácil testar a lógica de negócios do Model, a interação do usuário no Controller e a renderização da interface no View de forma isolada.
#
#     Manutenção mais fácil: Com a separação clara das responsabilidades, a manutenção se torna mais fácil. Alterações em um componente não devem afetar diretamente os outros componentes, desde que a interface entre eles (geralmente através de interfaces ou APIs) seja mantida.
#
# Desvantagens:
#
#     Complexidade inicial: A arquitetura MVC pode adicionar alguma complexidade inicial ao projeto, especialmente para desenvolvedores inexperientes. É necessário entender bem o conceito e como cada componente interage para construir um sistema robusto.
#
#     Acoplamento indireto: Embora a arquitetura MVC ajude a reduzir o acoplamento entre os componentes, ainda pode haver algum grau de acoplamento indireto entre eles. Alterações em um componente podem exigir ajustes nos outros componentes para manter a consistência e o funcionamento adequado do sistema.
#
#     Aumento da complexidade do código: Com a separação de responsabilidades, o código pode se tornar mais complexo, especialmente em projetos maiores. É necessário gerenciar a comunicação entre os componentes e garantir que as informações corretas sejam passadas nos momentos apropriados.
#
#     Pode ser excessivo para projetos simples: Em alguns casos, a arquitetura MVC pode ser excessiva para projetos simples ou pequenos, adicionando complexidade desnecessária. Para esses casos, uma abordagem mais simples pode ser mais adequada.
#
# É importante lembrar que as vantagens e desvantagens podem variar dependendo do contexto do projeto e das necessidades específicas. A escolha da arquitetura adequada deve levar em consideração fatores como o tamanho do projeto, a equipe de desenvolvimento, os requisitos de escalabilidade e a complexidade do domínio do problema.