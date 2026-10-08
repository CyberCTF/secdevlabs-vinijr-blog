# secDevLabs ViniJR Blog

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a5/vinijr-blog`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a5/vinijr-blog) app, by Globo.com and the
secDevLabs contributors: a PHP fan blog whose contact form posts XML that the server parses with external entities enabled (XXE, a Security Misconfiguration). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| app | ViniJR Blog (Apache, PHP 8.3) on port 80, published on 10004 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:10004/. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a5/vinijr-blog/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
