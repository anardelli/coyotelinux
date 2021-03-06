DEPENDS += "python-scons-native"

scons_do_compile() {
        ${STAGING_BINDIR_NATIVE}/scons ${PARALLEL_MAKE} PREFIX=${prefix} prefix=${prefix} || \
        oefatal "scons build execution failed."
}

scons_do_install() {
	install -d ${D}${prefix}
        ${STAGING_BINDIR_NATIVE}/scons PREFIX=${D}${prefix} prefix=${D}${prefix} install || \
        oefatal "scons install execution failed."
}

EXPORT_FUNCTIONS do_compile do_install
