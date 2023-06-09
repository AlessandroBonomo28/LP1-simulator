# LP1-simulator
 Simulatore di domande teoriche di LP con risultato finale
- hosted app link: https://lp1simulator-2-u6882435.deta.app/
##

# Contribuzione al progetto

Grazie per il tuo interesse a contribuire al progetto! Di seguito trovi le istruzioni per aggiungere nuove domande e risposte al questionario.

## Contribuire con una Pull Request

1. Effettua il fork del repository [LP1-simulator](https://github.com/AlessandroBonomo28/LP1-simulator) cliccando sul pulsante "Fork" in alto a destra della pagina. In questo modo otterrai una copia del repository nel tuo account GitHub.

2. Clona il repository dal tuo account GitHub nel tuo ambiente di sviluppo locale utilizzando il comando:
   ```
   git clone https://github.com/TUO_USERNAME/LP1-simulator.git
   ```
   Assicurati di sostituire `TUO_USERNAME` con il tuo nome utente GitHub.

3. Apri il file `index.html` nel tuo editor di codice preferito.

4. Trova l'array `questions` e l'array `answers` all'interno della funzione `startTest()`. Questi array contengono le domande e le risposte corrispondenti.

5. Aggiungi le nuove domande nel formato desiderato all'array `questions` e le risposte corrispondenti nell'array `answers`. Assicurati che le domande e le risposte abbiano lo stesso indice per corrispondere correttamente.

6. Salva le modifiche al file `index.html`.

7. Esegui il commit delle modifiche nel repository locale utilizzando i seguenti comandi:
   ```
   git add index.html
   git commit -m "Aggiunte nuove domande al questionario"
   ```

8. Esegui il push delle modifiche nel tuo repository GitHub utilizzando il comando:
   ```
   git push origin main
   ```

9. Torna alla pagina del repository originale su GitHub e fai clic sul pulsante "Compare & pull request".

10. Fornisci una descrizione chiara e concisa delle modifiche apportate e invia la pull request.

Una volta inviata la pull request, i collaboratori del progetto potranno esaminare le tue modifiche e integrarle nel repository principale, se ritenute appropriate.

Grazie per il contributo al progetto!

## Tech Stack Overview
### Deta Space
Deta Space è una piattaforma serverless che permette di sviluppare e distribuire applicazioni web senza la necessità di configurare e gestire un server. Fornisce un ambiente di esecuzione per applicazioni web statiche, eliminando la necessità di un server back-end tradizionale. Deta Space consente di creare, distribuire e gestire facilmente le applicazioni, offrendo un'infrastruttura scalabile e affidabile.

### Svelte
Svelte è un framework JavaScript per la costruzione di interfacce utente reattive e dinamiche. A differenza di altri framework come React o Vue, Svelte sposta la maggior parte del lavoro di compilazione dal browser al momento della build. Ciò significa che il codice Svelte viene tradotto in JavaScript ottimizzato prima che l'applicazione venga eseguita, riducendo al minimo il bundle finale e migliorando le prestazioni dell'applicazione. Svelte utilizza un'approccio "reagisci in fase di compilazione" per creare componenti UI altamente efficienti e veloci.

### Vite
Vite è un sistema di build e sviluppo leggero per le applicazioni web. È progettato per avviare rapidamente l'applicazione durante lo sviluppo grazie a un'architettura di build basata sui moduli. Vite utilizza il concetto di "build on demand" per caricare solo i moduli richiesti durante lo sviluppo, migliorando notevolmente i tempi di avvio dell'applicazione. Supporta inoltre il live-reload, consentendo agli sviluppatori di vedere immediatamente le modifiche apportate al codice senza dover ricaricare manualmente la pagina.
