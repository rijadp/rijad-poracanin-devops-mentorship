#!/bin/bash
# Preusmjeravamo čitav output u fajl.
exec 1>testout
echo "Kada imamo mnogo podataka koje treba preusmjeriti, umjesto što bismo preusmjeravali svaku echo izjavu, mozemo koristiti exec komandu."
echo "I sa njom cemo preusmjeriti čitav STDOUT deskriptor u fajl"
echo "Provjerite..."
