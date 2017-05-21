INSTALL_DIR := ~/bin
PROXY_SCRIPT := ${INSTALL_DIR}/proxy

.PHONY : clean

install : ${PROXY_SCRIPT}

${PROXY_SCRIPT} : ${INSTALL_DIR}
	@cp -f proxy ${INSTALL_DIR}/proxy
	@echo "export PATH=${PATH}:${INSTALL_DIR}"

${INSTALL_DIR} :
	@mkdir -p ${INSTALL_DIR}

clean :
	@rm ${PROXY_SCRIPT}
