.PHONY: build

build:
	buildah bud -f Dockerfile -t localhost/muglet .

.PHONY: ocp
ocp:
	oc4 process -f ocp/cosa-s2i-kola.yaml | oc4 apply -f -
