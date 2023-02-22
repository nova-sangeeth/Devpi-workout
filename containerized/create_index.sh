
devpi use http://localhost:3141
devpi login root --password=
devpi user --create pypi email= password=${PYPI_PASSWORD:-}
devpi user --list
devpi index --create pypi/stable bases=root/pypi volatile=True mirror_whitelist=*
devpi index --list

echo "skipping the index creation for now "