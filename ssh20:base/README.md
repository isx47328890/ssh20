# PAM
@edt ASIX M06-ASO
PAM
Mark Santiago


**Imatge:**

* **[isx47328890/pam20:ldap]**: host pam per practicar *PAM* amb autenticacio local unix (*pam_unix.so*) i autenticació LDAP (amb *pam_ldap.so*). Utilitzen el paquet *nss-pam-ldapd*. Cal configurar: *ldap.conf*, *nslcd*, *nscd*, *nsswitch*.
L'autenticació es configura al *system-auth*.


Atenció, cal usar en el container --privileged per poder fer els muntatges nfs.


**LDAP container**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20
```

**PAM container**
```bash
docker run --rm --name pam.edt.org -h pam.edt.org --net 2hisix --privileged -it isx47328890/pam20:ldap
```

[isx47328890/pam20:ldap]:https://hub.docker.com/layers/127854017/isx47328890/pam20/ldap/images/sha256-bb1852c1c05a2e2f1afb411a219bdc3aa37f9fe17b8f62805c11e88622fc943a?context=explore
