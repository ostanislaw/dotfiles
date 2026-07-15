#!/bin/bash

email="$1"
encrypted_password="$2"

setUserPassword() {
        conan user -p $encrypted_password -r zfThirdParty-conan-dev-local-frd $email
        conan user -p $encrypted_password -r ad-conan-test-local-frd $email
        conan user -p $encrypted_password -r zfSandbox-conan-test-local-frd $email
        conan user -p $encrypted_password -r zkm-conan-prod-local-frd $email
        conan user -p $encrypted_password -r zf-conan-dev-local-frd $email
        conan user -p $encrypted_password -r ad-conan-dev-local-frd $email
        conan user -p $encrypted_password -r zkm-conan-dev-local-frd $email
        conan user -p $encrypted_password -r proai-conan-dev-local-frd $email
        conan user -p $encrypted_password -r proai-conan-prod-local-frd $email
}
setUser() {
        conan user -r zfThirdParty-conan-dev-local-frd $email
        conan user -r ad-conan-test-local-frd $email
        conan user -r zfSandbox-conan-test-local-frd $email
        conan user -r zkm-conan-prod-local-frd $email
        conan user -r zf-conan-dev-local-frd $email
        conan user -r ad-conan-dev-local-frd $email
        conan user -r zkm-conan-dev-local-frd $email
        conan user -r proai-conan-dev-local-frd $email
        conan user -r proai-conan-prod-local-frd $email

}

#clean all credentials
conan user -c
if [ "$#" -eq 2 ]; then
	setUserPassword 
elif [ "$#" -eq 1 ]; then
	setUser
fi
#display credentials
conan user
