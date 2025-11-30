/* fichier : exercice.c */

#include <stdio.h>

/* Prototype d’une fonction interne */
void afficher_message(void);

/* Fonction principale */
int main(void) {
    printf("Début du programme.\n");

    afficher_message();

    compteur++;

    fonction_inconnue();

    return 0;
}

/* Définition d’une fonction interne */
void afficher_message(void) {
  printf("Message interne\n")
}
