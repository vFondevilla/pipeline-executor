FROM atlassian/default-image:3
ARG tfdocs_version=v0.16.0
ARG tf_version=0.12.31

RUN wget https://github.com/terraform-docs/terraform-docs/releases/download/${tfdocs_version}/terraform-docs-${tfdocs_version}-linux-amd64.tar.gz -O terraform-docs && tar -xvf terraform-docs && cp terraform-docs /usr/local/bin && rm terraform-docs && rm -rf terraform-docs LICENSE README.md
RUN wget https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_amd64.zip -O terraform.zip && unzip terraform.zip && mv terraform /usr/local/bin/terraform && rm terraform.zip