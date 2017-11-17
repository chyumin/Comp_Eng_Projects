/////////////////////////////////////////////
// Jogo da Forca                           //
// Chuang Yu Min                           //
// Disciplina: Algoritmos e Programação 2  //
/////////////////////////////////////////////

//Para adicionar palavras, terá que ser modificado o arquivo .txt da pasta no seguinte formato:
//[palavra][espaço][dica]
//Exemplos já adicionados no arquivo:
//programar codigos
//teste tst
//alfabeto abc

#include <windows.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

typedef char str30[30];

typedef struct{
str30 palavra;
str30 dica;
}palavras;

void gotoxy(int coluna, int linha){
        COORD point;
        point.X = coluna; point.Y = linha;
        SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), point);
}

void desenhaforca(){
    //desenha a forca
    printf("\n\n  __________");
    printf("\n  |        |");
    printf("\n  |");
    printf("\n  |");
    printf("\n  |");
    printf("\n  |");
    printf("\n  |");
}

void desenhaboneco(int erro){
    if(erro==0) return;

    gotoxy(11, 4);
    printf("O");
    if(erro==1) return;

    gotoxy(11, 5);
    printf("|");
    if(erro==2) return;

    gotoxy(10, 5);
    printf("/");
    if(erro==3) return;

    gotoxy(12, 5);
    printf("-");
    if(erro==4)return;

    gotoxy(10, 6);
    printf("/");
    if(erro==5) return;

    gotoxy(12, 6);
    printf("-");
    if(erro==6) return;
}

void imprimetracejado(str30 imprime){
    gotoxy(3,8);
    printf("%s", imprime);
}

bool venceu(int erros){
    if (erros<6)
        return true;
    return false;
}


int main()
{
    palavras word[30];
    str30 imprime;        //String para impressao de tracejado ou letras acertadas
    int tam = 0;          //Tamanho da palavra selecionada
    char dig;             //Letra digitada
    int i, x=0, n=0;
    int sair=1;
    int acertos=0;
    int erros=0;
    bool acertou=false;
    bool vitoria;
    FILE*arq;
    char ch;

    arq=fopen("palavras.txt", "r");
    if(arq==NULL) puts("Erro ao carregar palavras");
    do{
        ch=fgetc(arq);
        if(ch == '\n')
        fscanf(arq, "%s %s", word[x].palavra, word[x].dica);
        x++;
    }while(ch!= EOF);
    //para x ficar = ao numero de palavras cadastradas
    x--;
    fclose(arq);

while(sair!=0){
    system("cls");
    fflush(stdin);
    //tamanho da palavra selecionada
    tam = strlen(word[n].palavra);

//preenche a string com tracejado e tamanho correto
    for(i=0;i<tam;i++){
        imprime[i]='-';
    }
    imprime[tam]='\0';

    desenhaforca();

    while(erros<6&&acertos!=tam){

    //imprime tracejado
        imprimetracejado(imprime);
        //se tiver 5 erros, mostra a dica
        if(erros==5){
            gotoxy(0,0);
            printf("\nDica: %s", word[n].dica);
        }
        //Le a letra
        gotoxy(0,9);
        printf("\nDigite a letra: ");
        //fflush
        (stdin);
        scanf("%c", &dig);
        fflush(stdin);

        for(i=0;i<tam;i++){
            if(word[n].palavra[i]==dig){
                //substitui o traço pela letra acertada
                imprime[i]=word[n].palavra[i];
                //incrementa 'acertou'
                acertos++;
                acertou=true;
            }
        }
        //se nao acertou, incrementa erros
        if(acertou==false){
            erros++;
        }
        //'resetar' variavel
        acertou=false;

        imprimetracejado(imprime);

        //passa parametro erro para desenhar as partes do boneco
        desenhaboneco(erros);

        gotoxy(0,0);
    }

        vitoria = venceu(erros);
        //reseta variaveis de acerto e erro
        erros=0;
        acertos=0;
        //avança a palavra cadastrada
        n++;
        //vai até o final para encerrar o programa
        gotoxy(0,17);
        if(tam==0){
            printf("Nao possui palavras novas!");
            printf("\n\nO jogo sera encerrado\n\n");
            system("pause");
            break;
        }
        else if (vitoria)
            printf("Venceu!");
        else
            printf("Perdeu!");
        printf("\n\nDeseja jogar outra? 1 - Sim 0 - Nao: ");
        scanf("%d", &sair);
}
    system("cls");
    printf("\n\nJogo desenvolvido por: Chuang Yu Min");
    printf("\n\nDisciplina: Algoritmos e Programacao 2");
    printf("\n\nUniversidade do Vale do Itajai\n\n\n");
    return 0;
}
