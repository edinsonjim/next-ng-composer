# Next NG Composer

## Getting Started

1. Clone this repository inside your workspace folder.

2. Run composer script.

    ```bash
    bash composer.sh
    ```

3. Be happy!

## Runners


### Next NG Presentation

If you want to run *next_ng_presentation* project.

```bash
bash ng-presentation-runner.sh
```

If you want to re-build include `--build` param.

```bash
bash ng-presentation-runner.sh --build
```

---

### Override URL

If you want to work with DEV in localhost, you should to override the URL.

Create a file `application.yml` in `/home/IFIS/<your-username>/.ibaf/configuration/override_properties/` with the following content.

```yml
arch:
  presentation:
    proxy:
      forwarding:
        url: "http://sdlboasrv.intranet.ifis.local:80"

```
