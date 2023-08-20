#include <stdio.h>
#include <stdlib.h>


int pai(int i){
    return (i/2);
}

int esq(int i){
    return (i*2);
}

int dir(int i){
    return (i*2+1);
}

void descer(int *heap, int i, int n){
    //desde o elemento i na heap, se necessário
    //descobre quem é o maior filho de i
    int e = esq(i);
    int d = dir(i);
    int maior = i;
    if (e<=n && heap[e] > heap[i]) {
        maior=e;
    }
    if (d<=n && heap[d] > heap[maior]) {
        maior=d;
    }
    if (maior != i){
        //faz a descida trocando com o maior filho
        int temp=heap[i];
        heap[i] = heap[maior];
        heap[maior]=temp;
        descer(heap, maior, n);
    }
}

void constroi_heap_maximo(int *heap, int n){
    int i;
    int j=(n/2);
    for(i=j;i>=1;i--)
        descer(heap, i, n);
}

void subir(int *heap, int i) {
    //sobe o elemento i na heap, se necessário
    int j = pai(i);
    if (j >= 1) {
        if (heap[i] > heap[j]) {
            //faz a subida
            int temp=heap[i];
            heap[i] = heap[j];
            heap[j]=temp;
            subir(heap, j);
        }
    }
}

void imprime(int *vet, int n) {
    for(int i = 1; i <= n; i++) {
        printf("%d ", vet[i]);
    }
    printf("\n");
}

int insere(int *heap, int novo, int n) {
    //aumenta o tamanho do vetor
    heap = (int *) realloc(heap, sizeof(int) * (n + 2));
    n = n + 1;
    heap[n] = novo;

    subir(heap, n);
    //retorna o novo valor de n
    return n;
}

int exclui(int *heap, int n) {
    heap[1] = heap[n];
    n = n - 1;
    //diminui o tamanho do vetor
    heap = (int *) realloc(heap, sizeof(int) * (n + 1));

    descer(heap, 1, n);
    //retorna o novo valor de n
    return n;
}

void heap_sort(int *heap, int n){
    int i;
    int j=n;
    constroi_heap_maximo(heap, n);
    for(i=n;i>1;i--){
        //coloca o maior elemento (raiz) na ultima posicao do vetor, trocando com o ultimo elemento (posicao j)
        int temp=heap[i];
        heap[i]=heap[1];
        heap[1]=temp;
        //diminui o tamanho do vetor a ser considerado na heep (já que o maior já está na última posicao (posicao j))
        j--;
        //desce com a raiz nessa nova heap de tamanho j-1
        descer(heap, 1, j);
    }
}

int main(void){
    int *heap;
    int n;
    int i = 0;

    printf("Digite o tamanho do vetor de elementos: ");
    scanf("%d",&n);
    if(n <= 0) {
        return 0;
    }

    //array começará em 1, por isso alocação de tamanho n+1
    heap = (int *) malloc(sizeof(int) * (n + 1));

    //preenche o vetor com números aleatórios
    for(i = 1; i <= n; i++) {
        heap[i] = rand() % (4 * n);
    }

    printf("Vetor original...\n");
    imprime(heap, n);

    printf("\nConstruir a heap...\n");
    constroi_heap_maximo(heap, n);
    imprime(heap, n);

    //======================

    printf("\nAumentar a prioridade do elemento %d de %d para %d\n", n/2, heap[n/2], heap[n/2] * 4);

    i = n/2;
    heap[i] = heap[i] * 4;
    subir(heap, i);
    imprime(heap, n);

    //=======================

    printf("\nDiminuir a prioridade da raiz de %d para 1...\n", heap[1]);

    heap[1] = 1;
    descer(heap, 1, n);
    imprime(heap, n);

    //=======================

    printf("\nInserir um novo elemento... \nDigite o elemento a ser inserido: ");
    int novo;
    scanf("%d", &novo);

    n = insere(heap, novo, n);

    imprime(heap, n);


    //=======================

    printf("\nExcluir o elemento de maior prioridade \n");

    n = exclui(heap, n);
    imprime(heap, n);

    //=======================

    printf("\nDepois de ordenar com heapsort...\n");
    heap_sort(heap, n);

    imprime(heap, n);

    free(heap);
    return 0;
}

