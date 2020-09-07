PLUGIN_VERSION=0.0.9
PLUGIN_ID=algoliasearch

plugin:
	cat plugin.json|json_pp > /dev/null
	rm -rf dist
	mkdir dist
	zip --exclude "*.pyc" -r dist/dss-plugin-${PLUGIN_ID}-${PLUGIN_VERSION}.zip python-connectors plugin.json
