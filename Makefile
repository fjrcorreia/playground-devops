##
## Make file to assist on project building and distribution
##

## Unique and reproducible release identifier
RPM_RELEASE=$(shell git log --format=%cd.g%h --date=format:%y%m%d%H%M -n 1)


## Build project
build:
	mvn clean install

## Executes application
run:
	mvn -f src/application/pom.xml	spring-boot:run

## Creates a distribution rpm
dist: .dist_dir
	mvn clean install -Ppackage -Drpm.release=$(RPM_RELEASE)
	cp src/application/target/rpm/application/RPMS/noarch/application-* dist

## Clean temporary and build files
clean: .clean_dist
	mvn clean



## Internal dependencies: dist folder
.clean_dist:
	if [ -d dist ]; then rm -rf dist; fi


.dist_dir:
	if [ ! -d dist ]; then mkdir dist; fi
