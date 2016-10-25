# Instruções para Teste
1.	Crie um diretório de nome `test` na raíz deste diretório;
1.	Para cada caso de teste, crie um diretório de qualquer nome dentro do diretório `test`. (Neste Exemplo: `01`);
1.	Dentro de cada diretório filho do diretório `test`, crie dois arquivos: `test.answer` (resposta correta/gabarito) e `test.input` (entradas);
1.	Crie um arquivo de nome `code.cpp` na raíz deste diretório e desenvolva o código;
1.	Para realizar o teste, utilize o comando `make` em um terminal na raíz deste diretório;
1.	Se o resultado for `[PASSED]`, a saída corresponde ao gabarito;
1.	Se o resultado for `[FAILED]`, a saída não corresponde ao gabarito e a diferença entre a saída e o gabarito é apresntado.

# Notas
*	As flags do compilador são idênticas ao do URI: `-std=c++11 -O2 -lm`
* Para testar um arquivo em **C**, utilize o comando `make c`
