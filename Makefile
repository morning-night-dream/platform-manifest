.PHONY: tool
tool:
	@aqua i

.PHONY: fmt
fmt:
	@yamlfmt

AGE_PUBLIC_KEY=age1jglwyzrn80auhq0k93mv8zqn5ezt6ngsdvhjn23nwfh0quq7wussn2tdm3

.PHONY: encrypt
encrypt:
	@yq -i "(del.sops)" k8s/templates/${SECRET_FILE_NAME}
	@sops --encrypt \
		--age ${AGE_PUBLIC_KEY} \
		--encrypted-regex '^(data|stringData)$$' \
		--in-place \
		k8s/templates/${SECRET_FILE_NAME}
	@yamlfmt k8s/templates/${SECRET_FILE_NAME}
