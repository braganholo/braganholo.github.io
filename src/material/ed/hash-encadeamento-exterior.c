#include <stdio.h>
#include <stdlib.h>

#define TAM 101

typedef struct aluno {
    int matricula;
    float cr;
    struct aluno *prox;
} TAluno;

typedef TAluno *Hash;

int hash(int mat, int tam) {
    return mat % tam;
}

void inicializa(Hash *tab, int m) {
    int i;
    for (i = 0; i < m; i++) {
        tab[i] = NULL;
    }
}

TAluno *busca(Hash *tab, int m, int mat) {
    int h = hash(mat, m);
    TAluno *p = tab[h];
    while ((p != NULL) && (p->matricula != mat)) {
        p = p->prox;
    }
    return p;
}

TAluno *aloca(int mat, float cr) {
    TAluno *novo = (TAluno *) malloc(sizeof(TAluno));
    novo->matricula = mat;
    novo->cr = cr;
    novo->prox = NULL;
    return novo;
}

void insere(Hash *tab, int m, int mat, float cr) {
    int h = hash(mat, m);
    TAluno *p = tab[h];
    TAluno *ant = NULL;
    while ((p != NULL) && (p->matricula != mat)) {
        ant = p;
        p = p->prox;
    }
    //Se encontrou matrícula na lista, atualiza cr
    if (p != NULL) {
        p->cr = cr;
    } else {
        TAluno *novo = aloca(mat, cr);
        if (!ant) {
            tab[h] = novo;
        } else {
            ant->prox = novo;
        }
    }
}

void libera(Hash *tab, int m) {
    int i;
    for (i = 0; i < m; i++)
        if (tab[i]) {
            TAluno *p = tab[i];
            TAluno *q;
            while (p) {
                q = p;
                p = p->prox;
                free(q);
            }
        }
}

void imprime(Hash *tab, int m) {
    for (int i = 0; i < m; i++) {
        printf("%d: ", i);
        if (tab[i]) {
            TAluno *p = tab[i];
            printf("\n");
            while (p) {
                printf("\t%d\t%.2f\t%p\n", p->matricula, p->cr, p->prox);
                p = p->prox;
            }
        } else printf("NULL\n");
    }
}

int main(void) {
    int n, m;
    printf("Digite m (tamanho da tabela hash)... ");
    scanf("%d", &m);
    printf("Digite n (quantidade de matriculas)... ");
    scanf("%d", &n);

    if ((n <= 1) || (m <= 1)) return 0;

    Hash tab[m];
    inicializa(tab, m);

    int i, mat;
    float cr;
    for (i = 0; i < n; i++) {
        printf("Digite a matricula e o cr...\n");
        scanf("%d", &mat);
        scanf("%f", &cr);
        insere(tab, m, mat, cr);
        imprime(tab, m);
    }

    char resp;
    do {
        printf("Digite a matricula a ser procurada... ");
        scanf("%d", &mat);
        TAluno *p = busca(tab, m, mat);
        if (!p) printf("Elemento nao encontrado!\n");
        else printf("%d\t%.2f\n", p->matricula, p->cr);
        printf("Quer continuar? ");
        scanf(" %c", &resp);
    } while ((resp != 'N') && (resp != 'n'));
    imprime(tab, m);

    for (i = 0; i < n / 2; i++) {
        printf("Digite a matricula e o cr a serem inseridos...\n");
        scanf("%d", &mat);
        scanf("%f", &cr);
        insere(tab, m, mat, cr);
        imprime(tab, m);
    }

    libera(tab, m);

    return 0;
}
