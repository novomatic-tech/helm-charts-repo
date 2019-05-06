# Helm Charts Repository

This is a repository of helm charts hosted by github pages.

## Adding repositorty to helm registry
```bash
helm repo add novomatic-tech https://novomatic-tech.github.io/helm-charts-repo
helm repo update
```

## Adding chart to repository

Just package your helm chart and copy it to the ``charts`` catalog and commit changes to master branch. 
Travis will update the ``index.yaml`` file automatically after few seconds.

```bash
helm package <chart-path>
cp <chart-name>.tgz helm-charts-repo/charts
git commit -m "Add helm chart."
git push
```
