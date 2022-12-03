.PHONY: fmt
fmt:
	@yamlfmt

.PHONY: encrypt
encrypt:
	@sops --encrypt \
		--age age124g56sz2ytw6l24f0mmyvpah3g94vz7k0zjcpz76qfdf5j6e0vdsqxz2af \
		--encrypted-regex '^(data|stringData)$$' \
		--in-place \
		k8s/templates/secret.yaml
	@yamlfmt
