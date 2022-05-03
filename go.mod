module github.com/hashicorp/terraform

replace google.golang.org/grpc v1.36.0 => google.golang.org/grpc v1.27.1

replace github.com/golang/mock v1.5.0 => github.com/golang/mock v1.4.4

// github.com/dgrijalva/jwt-go is no longer maintained but is an indirect
// dependency of the old etcdv2 backend, and so we need to keep this working
// until that backend is removed. github.com/golang-jwt/jwt/v3 is a drop-in
// replacement that includes a fix for CVE-2020-26160.
replace github.com/dgrijalva/jwt-go => github.com/golang-jwt/jwt v3.2.1+incompatible
