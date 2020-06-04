# Next NG Composer

With this repository you can clone and configure the development environment for NEXT NG.

## Getting Started

1. Clone this repository inside your workspace folder.

2. Run composer script.

    ```bash
    bash composer.sh
    ```

3. Be happy!

---

### Next NG Presentation Config DEV | SIT env

1. Copy sources > application.yml

   `/home/IFIS/your-username/.ibaf/configuration/override_properties/`

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

2. Rebuild Next_ng_presentation
