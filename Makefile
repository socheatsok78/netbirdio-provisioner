it:
	docker buildx bake --print
build:
	docker buildx bake --set="*.platform="
publish:
	BUILDX_BUILDER=default-builder docker buildx bake --push
