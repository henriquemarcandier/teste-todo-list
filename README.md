# teste-todo-list

Teste Feito por Henrique Marcandier

Bom, o site está completo com tudo funcionando perfeitamente!

Aí repare que nele tem o arquivo todo_list.sql, pegue esse arquivo e já adicione um bd "todo_list" a sua base de dados aí e importe o arquivo para ela. Você pode até alterar o nome da base de dados, mas vai ter que alterar também o arquivo ".env" da raíz do domínio, para as suas informações aí. Confira também se o host é o mesmo que vc usa aí.

Aí os arquivos você pode colocá-los em uma pasta "teste-todo-list", ou outra da sua escolha, lembrando que ao alterar o nome você também deve alterar no arquivo ".env" o APP_URL lá.

Aí é só fazer isso que já vai funcionar.

Ontem eu fiquei vendo vídeos no youtube à respeito dessa nova versão do larável, que são mudanças bem impactantes na estrutura final. O site ficou bem rápido e aguenta quantos dados forem.

Ah eh mesmo, nos 3 primeiros commits eu não coloquei a descrição, mas foram criadas as páginas do to do neles.

Aí eu já adicionei o arquivo 'CRON' do domínio tbm. Esse arquivo especificamente, utiliza o connect.pho, que se encontra na pasta public. Caso a sua base de dados seja diferente de localhost, ou o seu banco de dados for diferente do utilizado por mim, entre nesse connect.php e substitua as informações pela corretas. Aí basta executar o arquivo via navegador mesmo, por ex: https://localhost/teste-todo-list/public/cron.php (no meu caso), para que a base de dados seja populada corretamente e depois é só voltar ao projeto que vc vai ver que todas as descriçõess foram copiadas do dia "29/12/2022" para os dias do mes atual.

Só pra facilitar a sua vida, eu subi também o arquivo teste_todo.sql com todos os registros necessários para o teste aí.

Espero que goste do meu trabalho.

Atenciosamente,

Henrique Marcandier
Programador PHP