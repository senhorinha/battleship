# Cenários

## Apenas um tabuleiro deve ter o tamanho de 10x10 com os navios ocultos

  - Dado que eu acesse a tela do jogo
  - então apresentar uma tela com tamanho 10x10
  - e os navios devem estar ocultos

## A ação é feita pelo clique do mouse em uma posição do tabuleiro

  - Dado que o usuário clique no mouse dentro do tabuleiro
  - então deve ser disparado uma ação para coordenada clicada

## O tiro deve identificar se houve acerto ou erro

- Dado que o usuário clique no mouse dentro do tabuleiro
  - e que haja um navio na coordenada
    - então deve mostrar a cor verde
  - se não
    - deve mostrar na cor vermelha

## O jogo acaba quando todos os navios forem destruídos

  - Dado que o usuário clique no mouse dentro do tabuleiro
  - e que todos os pontos com navio sejam acertados
  - então devo enviar um feedback de "Game Over"

## Mostrar a quantidade de jogadas

  - Dado que o usuário clique no mouse dentro do tabuleiro
  - então o contador de jogadadas deve ser incrementado em um
