
auto: coffee

coffee:
	coffee -o lib -c src/

watch:
	coffee -o lib/ -cw src/

