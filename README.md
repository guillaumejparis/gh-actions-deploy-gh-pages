# gh-actions-deploy-gh-pages

Deploy project to gh-pages

Example :

```yaml
name: Deploy to Github Pages

on:
  push:
    branches:
      - master

jobs:
  deploy-github-pages:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v1
      - name: deploy-github-pages
        uses: guillaumejparis/gh-actions-deploy-gh-pages@master
        env:
          GIT_DEPLOY_KEY: ${{ secrets.GIT_BLOUP_KEY }}
```
