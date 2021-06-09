# Helm Customizations

## Use Case

Helm, the package manager for Kubernetes, provides templated charts for easy deployment. Templates provide a good deal of customization but are subject to the chart author's decisions on what is customizable. This repo covers some options on extending customization beyond helm templates.

# Setup

[Install Helm](https://helm.sh/docs/intro/install/)

[Install kustomize](https://kubectl.docs.kubernetes.io/installation/kustomize/)

Run the following commands:

```sh
chmod +x demo-magic.sh
chmod +x ./helloworld/demo.sh
chmod +x ./kustomize-chart/demo.sh
chmod +x ./kustomize-template/demo.sh
chmod +x ./kustomize-template/kustomize/kustomize
```

# Demo 1: Helm Templates

This demo will showcase a simple templated helloworld helm chart. The things to note are the pod.yaml file and the variable referenced in values.yaml file.

From the root repo directory:

```sh
cd helloworld
./demo.sh
```

cat templates/pod.yaml
cat values.yaml
helm install helloworld .
kubectl logs helloworld
helm delete helloworld

# Demo 2: Kustomize Chart

This demo will showcase kustomize and how it can be used to overlay customizations on top of helm charts. The end result is an updated helm chart that has more configuration options than the oroginal helm chart author had intended. This is more advantageous than having to maintain a fork the helm chart.

From the root repo directory:

```sh
cd kustomize-chart
./demo.sh
```

# Demo 3: Kustomize Template

This demo will showcase kustomize being used in a more transient way because the customizations are not meant to be stored permanently. This would cover scenarios where helm chart deployments are different per target environment. Helm contains a post-renderer feature which is a better option than the JFrog article below as it does not utilize helm.

From the root repo directory:

```sh
cd kustomize-template
./demo.sh
```

## Sources

https://helm.sh/docs/topics/advanced/

https://jfrog.com/blog/power-up-helm-charts-using-kustomize-to-manage-kubernetes-deployments/