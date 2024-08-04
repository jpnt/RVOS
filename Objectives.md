# Objetivos para a semana de 05/08 - 11/08

### Análise do time overhead das systems calls de prioridade 1 (escalonamento):

- Tempo que o sistema operativo precisa para tomar decisões de escalonamento. 

##### As decisões de escalonamento são tomadas quando:

- uma task abdica do processador e o SO decide qual é a próxima task a executar

- uma task de maior prioridade fica disponível para executar (por interrupt ou timer)

Relativamente ao primeiro caso, pode ser verificado medindo o tempo desde que uma tarefa abdica do processador, e o instante em que a tarefa seguinte fica a executar.

##### As calls que fazem a tarefa abdicar do processador são:

- vTaskDelay()

- vTaskDelayUntil()

- vTaskSuspend()

- vTaskResume() permite acordar uma tarefa que esteja suspensa.

#### Sugestões / Recomendações:

- Começar por medir apenas com duas tarefas, mas mais tarde aumentar o número de tarefas no sistema, para ver de que forma é que o overhead é dependente do número de tarefas.

- O processo deve ser iniciar a medida do tempo antes de fazer a chamada que suspende, e depois terminar a medição na nova tarefa.

- Para experimentarem, podem começar só com 1 tarefa, e colocarem um delay de zero, medindo o tempo na mesma tarefa.