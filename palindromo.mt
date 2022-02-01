; aceita palíndromo
0 a _ r 1o
0 b _ r 1i
0 _ _ * accept

1o _ _ l 2o
1o * * r 1o

1i _ _ l 2i
1i * * r 1i

; verifica se o último elemento também é igual a 'a'
2o a _ l 3
2o _ _ * accept
2o * * * reject

; verifica se o último elemento também é igual a 'b'
2i b _ l 3
2i _ _ * accept
2i * * * reject

; volta o cabeçalho para o início da fita
3 _ _ * accept
3 * * l 4
4 * * l 4
4 _ _ r 0

accept * : r accept2
accept2 * ) * halt-accept

reject _ : r reject2
reject * _ l reject
reject2 * ( * halt-reject