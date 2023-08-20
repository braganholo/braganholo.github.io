#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Tarefa {
    int prioridade;
    char nome[2];
} TTarefa;

int tam() {
    return 4 + 2;
}
TTarefa *le_tarefa(FILE *in) {
    TTarefa *t = (TTarefa *) malloc(sizeof(TTarefa));
    if (0 >= fread(&t->prioridade, sizeof(int), 1, in)) {
        free(t);
        return NULL;
    }
    fread(t->nome, sizeof(char), sizeof(t->nome), in);
    return t;
}

void salva_tarefa(TTarefa *t, FILE *out)
{
    fwrite(&t->prioridade, sizeof(int), 1, out);
    fwrite(t->nome, sizeof(char), sizeof(t->nome), out);
}

void imprime_tarefa(char msg[20], TTarefa *t) {
    if (t != NULL) {
        printf("%s => %d:%s\n", msg, t->prioridade, t->nome);
    }
}

int pai(int i){
    return i/2;
}

int esq(int i){
    return (i*2);
}

int dir(int i){
    return (i*2+1);
}

/*
 * desde o elemento i na heap, se necessário
 */
void descer(FILE *f, int i, int n){
    //descobre quem é o maior filho de i

    TTarefa *te = NULL;
    TTarefa *td = NULL;
    TTarefa *ti = NULL;
    TTarefa *tmaior = NULL;
    int imaior;
    //lê filho da esquerda
    int e = esq(i);
    if (e <= n) {
        fseek(f, e * tam(), SEEK_SET);
        te = le_tarefa(f);
    }

    //le filho da direita
    int d = dir(i);
    if (d <= n) {
        fseek(f, d * tam(), SEEK_SET);
        td = le_tarefa(f);
    }
    //le elemento i
    fseek(f, i * tam(), SEEK_SET);
    ti = le_tarefa(f);

    tmaior = ti;
    imaior = i;

    if (te != NULL && te->prioridade > ti->prioridade) {
        tmaior=te;
        imaior = e;
    }
    if (td != NULL && td->prioridade > tmaior->prioridade) {
        tmaior=td;
        imaior = d;
    }
    if (tmaior->prioridade != ti->prioridade){
        //faz a descida trocando com o maior filho
        //coloca tarefa maior na posição i
        fseek(f, i * tam(), SEEK_SET);
        salva_tarefa(tmaior, f);

        //coloca tarefa i na posição do maior filho
        fseek(f, imaior * tam(), SEEK_SET);
        salva_tarefa(ti, f);
        fflush(f);
        descer(f, imaior, n);
    }
    free(te);
    free(td);
    free(ti);
}

void constroi_heap_maximo(char nome_arquivo[12], int n){
    int i;
    int j=(n/2);

    //Abre o arquivo
    FILE *f = fopen(nome_arquivo, "rb+");

    for(i=j;i>=1;i--)
        descer(f, i, n);
    fclose(f);
}

void subir(FILE *f, int i) {
    //sobe o elemento i na heap, se necessário
    int j = pai(i);
    if (j >= 1) {
        //le elemento i
        fseek(f, i * tam(), SEEK_SET);
        TTarefa *ti = le_tarefa(f);

        //le elemento j
        fseek(f, j * tam(), SEEK_SET);
        TTarefa *tj = le_tarefa(f);

        if (ti->prioridade > tj->prioridade) {
            //faz a subida
            //coloca tarefa j na posição i
            fseek(f, i * tam(), SEEK_SET);
            salva_tarefa(tj, f);
            //coloca tarefa i na posição j
            fseek(f, j * tam(), SEEK_SET);
            salva_tarefa(ti, f);
            fflush(f);
            subir(f, j);
        }
        free(ti);
    }
}


void imprime(char nome_arquivo[12], int n) {
    //Abre o arquivo
    FILE *f = fopen(nome_arquivo, "rb");

    //pula para a posição 1 do arquivo
    fseek(f, tam(), SEEK_SET);

    TTarefa *t;

    if(f) {
        for (int i = 1; i <= n; i++) {
            int pos = ftell(f);
            t = le_tarefa(f);
            printf("[%d] %d:%s \n", pos, t->prioridade, t->nome);
            free(t);
        }
    }
    fclose(f);
    printf("\n");
}

int insere(char nome_arquivo[12], TTarefa *t, int n) {
    //Abre o arquivo
    FILE *f = fopen(nome_arquivo, "rb+");
    //aumenta tamanho da heap
    n = n + 1;
    fseek(f, n * tam(), SEEK_SET);
    salva_tarefa(t, f);
    fflush(f);
    subir(f, n);
          fclose(f);
    //retorna o novo valor de n
    return n;
}

int exclui(char nome_arquivo[12], int n) {
    //Abre o arquivo
    FILE *f = fopen(nome_arquivo, "rb+");
    //le item 1
    fseek(f, tam(), SEEK_SET);
    TTarefa *t1 = le_tarefa(f);
    //le item n
    fseek(f, n * tam(), SEEK_SET);
    TTarefa *tn = le_tarefa(f);
    //grava item n na posição 1
    fseek(f, tam(), SEEK_SET);
    salva_tarefa(tn, f);
    fflush(f);
    //diminui o tamanho do vetor
    n = n - 1;

    descer(f, 1, n);
    fclose(f);
    //retorna o novo valor de n
    return n;
}

int main(void){
    TTarefa *heap;
    int n;
    int i = 0;
    char nomes[10][2] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
    char nome_arquivo[12] = {"tarefas.dat"};

    printf("Digite a quantidade de tarefas: ");
    scanf("%d",&n);
    if(n <= 0) {
        return 0;
    }

    //Abre o arquivo
    FILE *f = fopen(nome_arquivo, "wb");
    if(!f) {
        exit(1);
    }

    //pula a posição zero para inserir primeira tarefa na posição 1 do arquivo
    fseek(f, tam(), SEEK_SET);

    TTarefa *t = (TTarefa *) malloc(sizeof(TTarefa));
    //grava tarefas aleatórias no arquivo
    for(i = 1; i <= n; i++) {
        t->prioridade = rand() % (4 * n);
        strcpy(t->nome, nomes[i % 10]);
        printf("Gravando tarefa %d:%s \n", t->prioridade, t->nome);

        salva_tarefa(t, f);
    }
    fclose(f);

    printf("\nArquivo original...\n");
    imprime(nome_arquivo, n);

    printf("\nConstruindo a heap...\n");
    constroi_heap_maximo(nome_arquivo, n);
    imprime(nome_arquivo, n);

    //=======================

    printf("\nInserir uma nova tarefa... \nDigite a prioridade da tarefa a ser inserida: ");
    scanf("%d", &t->prioridade);
    printf("\nDigite o nome da tarefa (1 charactere): ");
    scanf("%s", t->nome);
    n = insere(nome_arquivo, t, n);

    imprime(nome_arquivo, n);

    //=======================

    printf("\nExcluir o elemento de maior prioridade \n");

    n = exclui(nome_arquivo, n);
    imprime(nome_arquivo, n);

    //=======================

    free(t);
    return 0;
}

