.PHONY: tool
tool:
	@aqua i

.PHONY: fmt
fmt:
	@yamlfmt

AGE_PUBLIC_KEY=age124g56sz2ytw6l24f0mmyvpah3g94vz7k0zjcpz76qfdf5j6e0vdsqxz2af

.PHONY: encrypt
encrypt:
	@yq -i "(del.sops)" k8s/templates/secret.yaml
	@sops --encrypt \
		--age ${AGE_PUBLIC_KEY} \
		--encrypted-regex '^(data|stringData)$$' \
		--in-place \
		k8s/templates/secret.yaml
	@yamlfmt
