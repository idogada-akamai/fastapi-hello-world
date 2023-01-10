OKTETO_IMAGE=idogakamai/okteto-cli:2.11.0
docker run \
    --rm \
    -it \
    --network host \
    -v ~/.kube:/root/.kube \
    -v ~/.ssh:/root/.ssh \
    -v ${HOME}/.okteto:${HOME}/.okteto \
    -v ${PWD}:/local-dir \
    -w /local-dir \
    -e OKTETO_FOLDER=${HOME}/.okteto \
    $OKTETO_IMAGE \
    $@
