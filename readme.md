# Next NG Composer

With this repository you can clone and configure the development environment for NEXT NG.

## Getting Started

1. Clone this repository inside your workspace folder.
2. Check NodeJS version
    If the version is less than ***10.16.2***, execute `nvm install v10.16.2` in your Terminal to install ***NodeJS 10.16.2***

3. Run composer script.

    ```bash
    bash composer.sh
    ```

4. Be happy!

---

### Next NG Presentation Config DEV | SIT env

1. Copy `sources > application.yml` to `/home/IFIS/your-username/.ibaf/configuration/override_properties/application.yml`

    ```yml
    arch:
      presentation:
        proxy:
          forwarding:
            url: "http://sdlboasrv.intranet.ifis.local:80"
    ```

    > SIT: http://silboasrv.intranet.ifis.local:80
    >
    > DEV: http://sdlboasrv.intranet.ifis.local:80

    **each change in the file 'application.yml' needs to rebuild next_ng_presentation**
2. Rebuild Next_ng_presentation

---

## VSCode Extensions

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Angular Language Service](https://marketplace.visualstudio.com/items?itemName=Angular.ng-template)
- [TSLint](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
- [Sonar Lint](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarlint-vscode)

## VSCode config

```json
{
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true,
    "editor.tabSize": 2,
    "eslint.run": "onType",
    "eslint.autoFixOnSave": true,
    "prettier.eslintIntegration": true,
}
```

## Main Links

- [Next Front End Trello](https://trello.com/b/2sCxiciZ)
- [Confluence NG Front End Components](http://confluence.intranet.ifis.local/display/AR/IBAF-NG+Front-end+components)
- [Citrix Portal](https://eoffice.bancaifis.it/)

---

## Procedura Next (Contributo di Gregorio La Gamba)

0. Step preliminari (da fare solo se la macchina non è stata mai configurata)

   - Github di riferimento: https://github.com/edinsonjim/next-ng-composer
   - Aprire un Terminal
   - Digitare il comando: `cd workspace`
   - Digitare il comando: `git clone https://github.com/edinsonjim/next-ng-composer.git`
   - Digitare il comando: `cd next-ng-composer`
   - Digitare il comando: `bash composer.sh`
   - Digitare il comando: `git config --global credential.helper store` (serve per evitare che chieda sempre credenziali)
   - Chiudere Terminal

1. Accedere alla VM
2. Aprire Terminal
    2.1 Digitare il comando: code .ibaf/configuration/override_properties/application.yml
    2.2 Si apre l'applicativo Visual Studio Code da cui poter modificare il file, che dovrà avere questo contenuto:

      ```yml
      arch:
        presentation:
          proxy:
            forwarding:
              # url server di dev multichannel
              # url: "http://sdlboasrv.intranet.ifis.local:80"
              # url server di BE interno (da modificare ad inizio giornata con puntamento corretto)
              url: "http://vdlxendev075:8080"
      ```

    2.3 Salvare il file e chiudere Visual Studio Code
3. Rimanere nel Terminal
    3.1 Digitare il comando: `cd workspaces/next-ng-composer/next_ng_frontend/nextng-fe`
    3.2 Digitare il comando: `git branch`
      3.2.1 Se siamo sul branch features passiamo al punto 3.3
      3.2.2 Altrimenti digitare il comando: `git checkout -b features/next-ng-fe origin/features/next-ng-fe`
    3.3 Digitare il comando: `git pull`
    3.4 Digitare il comando: `npm start`
4. Aprire altro Terminal
    4.1 Digitare il comando: `cd workspaces/next-ng-composer/next_ng_presentation`
    4.2 Digitare il comando: `bash runner.sh --user ext.glagamba --build`
5. Avviare il browser
    5.1 Avviare l'applicativo dall'url: http://localhost:4200
6. Enjoy!
