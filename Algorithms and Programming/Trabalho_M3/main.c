#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>

typedef char string[31];

typedef struct nodo{
    int idAmigo;
    struct nodo *proxAmigo;
}ListaAmigos;

typedef struct nodo2{
    string nome;
    int idPessoa;
    ListaAmigos *Amigos;
    struct nodo2 *proxPessoa;
}ListaPessoas;

ListaPessoas *pesquisaPnome(ListaPessoas *lista, string nome){
    ListaPessoas *p=lista;

    while(p!=NULL && strcmp(p->nome,nome)!=0){
        p=p->proxPessoa;
    }
    return p;
}

ListaPessoas* Cadastra(ListaPessoas* lista, int id){
    ListaPessoas *p;

    p=(ListaPessoas*) malloc (sizeof(ListaPessoas));
    if(p==NULL){
		puts("sem memoria para novo item");
		return lista;}

    printf("Digite o nome: ");
    scanf("%s", p->nome);
    p->idPessoa=id;
    p->Amigos=NULL;
    p->proxPessoa=lista;
    return p;
}

void Amizade(ListaPessoas* lista, string nome1, string nome2){
    ListaPessoas *p1, *p2;
    ListaAmigos *pa1, *pa2;

    //reserva memoria para pa1 e recebe ID de lista principal
    pa1=(ListaAmigos*) malloc(sizeof(ListaAmigos));
    if(pa1==NULL){puts("Sem memoria!"); exit(0);}
    pa1->proxAmigo=NULL;
    p1=pesquisaPnome(lista, nome1);
    pa1->idAmigo=p1->idPessoa;

    //reserva memoria para pa2 e recebe ID de lista principal
    pa2=(ListaAmigos*) malloc(sizeof(ListaAmigos));
    if(pa2==NULL){puts("Sem memoria!"); exit(0);}
    pa2->proxAmigo=NULL;
    p2=pesquisaPnome(lista, nome2);
    pa2->idAmigo=p2->idPessoa;

    //insere no inicio pa2(que possui o id de nome2) criado no p1 -- e abaixo o mesmo com p2 e pa1
    if(p1->Amigos==NULL)
        p1->Amigos=pa2;
    else{
        pa2->proxAmigo=p1->Amigos;
        p1->Amigos=pa2;
    }

    //teste de add    printf("\nId %d adicionado para %s", p1->Amigos->idAmigo, nome1);

    if(p2->Amigos==NULL)
        p2->Amigos=pa1;
    else{
        pa1->proxAmigo=p2->Amigos;
        p2->Amigos=pa1;
    }

     //teste de add    printf("\nId %d adicionado para %s", p2->Amigos->idAmigo, nome2);
}

void destroilistaPessoas(ListaPessoas* lista){
    ListaPessoas *p;
    while (lista != NULL) {
        p = lista;
        lista = lista->proxPessoa;
        free(p);
    }
}

void destroilistaAmigos(ListaAmigos* lista){
    ListaAmigos *p;
    while (lista != NULL) {
        p = lista;
        lista = lista->proxAmigo;
        free(p);
    }
}

void excluiElemento(ListaPessoas* lista, int elemento) {
    ListaPessoas *p, *pant = NULL;
    p = lista;
    if (p==NULL)
        return; // lista vazia
    else
        if(p->idPessoa == elemento){
  //teste          printf("\nEndereco de p->proxPessoa: %p", p->proxPessoa);
  //teste          printf("\nEndereco de lista antes de lista=p->proxPessoa: %p", lista);
            lista=p->proxPessoa; // exclusao do 1o nodo
  //teste          printf("\nEndereco de lista depois de lista=p->proxPessoa: %p", lista);
        }
        else{
            pant = lista;
            p = p->proxPessoa;
            while(p != NULL && p->idPessoa != elemento) {
                pant = p;
                p=p->proxPessoa;
            }
            if (p!=NULL) { // achou elemento pra excluir
                pant->proxPessoa= p->proxPessoa; // conecta os nodos anterior e posterior
                free(p); // libera memória do nodo excluido
            }
        }
    return;
}

void mostraPessoa(ListaPessoas*lista, string nome){
    ListaPessoas*p, *paux;
    ListaAmigos*pa;
    int achou=0;

    p=pesquisaPnome(lista, nome);
    printf("\n\n--- Id: %d. Nome: %s ---\n", p->idPessoa, p->nome);
    pa=p->Amigos;
    puts("Amigos: ");
    while (pa != NULL) {
        paux=lista;

        while(paux!=NULL){
            if(pa->idAmigo==paux->idPessoa){
                printf("Id: %d. Nome: ", paux->idPessoa);
                puts(paux->nome);
                achou=1;
            }
            paux=paux->proxPessoa;
        }
        pa=pa->proxAmigo;
    }
    if(achou==0)printf("Nao possui amigos\n");
}

void exibelistaPessoas(ListaPessoas* lista){
ListaPessoas *p;
p = lista;

while (p != NULL) {
    mostraPessoa(lista, p->nome);
    p = p->proxPessoa;
    }
}

ListaPessoas* excluiID (ListaPessoas* lista, int id) {
    ListaAmigos *pa, *pant = NULL;
    pa = lista->Amigos;

    if (pa==NULL) return lista; // lista vazia
        else
        if (pa->idAmigo == id){
            lista->Amigos = pa->proxAmigo; // exclusao do 1o nodo
        }
    else {
            pant = lista->Amigos;
            pa = pa->proxAmigo;
        while (pa != NULL && pa->idAmigo != id) {
            pant = pa;
            pa=pa->proxAmigo;
        }
        if (pa!=NULL) { // achou elemento pra excluir
            pant->proxAmigo = pa->proxAmigo; // conecta os nodos anterior e posterior
            free(pa); // libera memória do nodo excluido
        }
    }
    return lista;
}

void Briga(ListaPessoas*lista, string nome1, string nome2){
    ListaPessoas *p1, *p2;
 //   ListaAmigos *pa1, *pa2;
    int idA, idB;

    p1=pesquisaPnome(lista, nome1);
  //  pa1=p1->Amigos;
    idA=p1->idPessoa;
    p2=pesquisaPnome(lista, nome2);
 //   pa2=p2->Amigos;
    idB=p2->idPessoa;

    excluiID(p1,idB);
    excluiID(p2,idA);
}

void Remove(ListaPessoas* lista, string nome){
    ListaPessoas *p, *paux=lista, *pteste=lista;
    ListaAmigos *pa;
    int id;

    p=pesquisaPnome(lista, nome);
    id=p->idPessoa;
    pa=p->Amigos;

    //remove a lista de amigos usando a funcao "Briga" com a lista de pessoas
    while(p->Amigos!=NULL){
        pa=p->Amigos;
        paux=lista;
        while (paux!=NULL){
            if(paux->idPessoa==pa->idAmigo){
                Briga(lista, paux->nome, p->nome);
            }
            paux=paux->proxPessoa;
        }
        p->Amigos=pa->proxAmigo;
        free(pa);
    }
    excluiElemento(pteste, id);
}

int contaNamigos(ListaPessoas *lista){
    int cont=0;
    ListaAmigos *pa;
    pa=lista->Amigos;
        while(pa!=NULL){
            cont++;
            pa=pa->proxAmigo;
        }
    return cont;
}

void Salvatxt(ListaPessoas *lista){
    FILE*arq;
    ListaPessoas *p;
    ListaAmigos *pa;
    int Namigos;

    p=lista;
    arq=fopen("rede.txt", "w");
    if(arq==NULL) exit(0);
    while(p!=NULL){
        fputs(p->nome,arq);
        fprintf(arq,"\n%d\n",p->idPessoa);
        Namigos=contaNamigos(p);
        fprintf(arq,"%d\n",Namigos);
        pa=p->Amigos;
        while(pa!=NULL){
            fprintf(arq,"%d\n", pa->idAmigo);
            pa=pa->proxAmigo;
            }
        p=p->proxPessoa;
    }
    fclose(arq);
}

ListaPessoas* Carregatxt(){
    ListaPessoas *p=NULL, *paux;
    ListaAmigos *pa;
    FILE* arq;
    int i, Namigos;

    arq=fopen("rede.txt", "r");
    if (arq==NULL) exit(0);

    //verifica se arquivo esta vazio
    fseek(arq,0,2);
    if (ftell(arq) == 0)
        return p;
    //retorna ponteiro do arquivo para inicio
    fseek(arq,0,0);

    while(!feof(arq)){
        //cria e verifica lista aux
        paux=(ListaPessoas*) malloc(sizeof(ListaPessoas));
        if(paux==NULL){
		puts("sem memoria para novo item");
		exit(0);}
		paux->Amigos=NULL;
		paux->proxPessoa=p;

        fgets(paux->nome, 31, arq);
        fscanf(arq, "%d", &paux->idPessoa);
        fscanf(arq, "%d\n", &Namigos);

        printf("%s", paux->nome);
        printf("%d", paux->idPessoa);
        printf("%d", Namigos);
        printf("hhhh");


        for(i=0; i<Namigos; i++){
            //cria e verifica lista de amigos
            pa=(ListaAmigos*) malloc(sizeof(ListaAmigos));
            if(pa==NULL){
            puts("sem memoria para novo item");
            exit(0);}

                fscanf(arq, "%d\n", &pa->idAmigo);
                pa->proxAmigo=paux->Amigos;
                paux->Amigos=pa;
        }
        p=paux;
    }

    fclose(arq);
    return p;
}

int main(){
    int id=0;
    ListaPessoas *umalista=NULL;
    string nomeA, nomeB;
    char menu;

    do{
        system("cls");
        printf("-----------------MENU---------------------");
        printf("\n 1. Cadastra pessoas");
        printf("\n 2. Remove Pessoa");
        printf("\n 3. Adicionar amizade");
        printf("\n 4. Remover amizade");
        printf("\n 5. Mostrar dados de alguem");
        printf("\n 6. Mostrar dados de toda a rede");
        printf("\n 7. Mostra 6 graus");
        printf("\n 8. Salvar a Rede");
        printf("\n 9. Carregar a Rede");
        printf("\n ESC. Sair");
        printf("\n------------------------------------------");
        printf("\nSelecione uma opcao: ");
        menu=getch();
        puts("");
        fflush(stdin);

        if(menu=='1'){
            id++;
            umalista=Cadastra(umalista, id);
        }

        if(menu=='2'){
            if(umalista==NULL)//se lista de pessoas estiver vazia
                puts("Lista Vazia !");
            else{
                printf("\nDigite o nome da pessoa a Remover: ");
                gets(nomeA);
                Remove(umalista, nomeA);
            }
        }

        if(menu=='3'){
            puts("Digite o nome1 para add");
            gets(nomeA);

            puts("Digite o nome2 para add");
            gets(nomeB);

            Amizade(umalista, nomeA, nomeB);
        }

        if(menu=='4'){
            puts("Digite o nome1 para Remover");
            gets(nomeA);

            puts("Digite o nome2 para Remover");
            gets(nomeB);

            Briga(umalista, nomeA, nomeB);
        }

        if(menu=='5'){
            fflush(stdin);
            puts("\nDigite o nome da pessoa a mostrar: ");
            gets(nomeA);
            puts("");
            mostraPessoa(umalista, nomeA);
        }

        if(menu=='6'){
        exibelistaPessoas(umalista);
        }

        if(menu=='7'){
            printf("NAO FOI FEITO AINDA");
        }

        if(menu=='8'){
            Salvatxt(umalista);
            printf("\nDados salvos como 'rede.txt'\n");
        }

        if(menu=='9'){
            umalista=Carregatxt();
            printf("\nDados Carregados com Sucesso!\n");
        }

        printf("\nPressione qualquer tecla");
        getch();

    }while(menu!=033);

    destroilistaPessoas(umalista);
    free(umalista);

return 0;
}
