FROM node:7.10.0
MAINTAINER Giannicola Olivadoti <go@empatica.com>

RUN apt-get update && \
    apt-get install -y bzip2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g bower@1.8.0 && \
    npm install -g del@3.0.0 && \
    npm install -g gulp@3.9.1 && \
    npm install -g gulp-concat@2.6.1 && \
    npm install -g gulp-htmlmin@3.0.0 && \
    npm install -g gulp-if@2.0.2 && \
    npm install -g gulp-ng-constant@1.1.0 && \
    npm install -g gulp-plumber@1.1.0 && \
    npm install -g gulp-rename@1.2.2 && \
    npm install -g gulp-replace@0.6.1 && \
    npm install -g gulp-sass@3.1.0 && \
    npm install -g gulp-typescript@3.1.7 && \
    npm install -g gulp-uglify@2.0.0 && \
    npm install -g gulp-uglifycss@1.0.8 && \
    npm install -g gulp-util@3.0.8 && \
    npm install -g jasmine-core@2.6.4 && \
    npm install -g karma@1.7.0 && \
    npm install -g karma-coverage@1.1.1 && \
    npm install -g karma-jasmine@1.1.0 && \
    npm install -g main-bower-files@2.13.1 && \
    npm install -g node-gyp@3.6.2 && \
    npm install -g node-pre-gyp@0.6.36 && \
    npm install -g require-dir@0.3.2 && \
    npm install -g typescript@2.1.6 && \
    npm install -g typings@2.1.1 && \
    npm install -g wiredep@4.0.0 && \
    npm install -g yargs@8.0.2 && \
    npm install -g slick-carousel@1.8.1 && \
    npm install -g "@angular/cli@1.6.8" && \
    npm install -g "@angular/compiler-cli@5.2.0" && \
    npm install -g "@angular/language-service@5.2.0" && \
    npm install -g "@types/highcharts@5.0.18" && \
    npm install -g "@types/jasmine@2.8.3" && \
    npm install -g "@types/jasminewd2@2.0.2" && \
    npm install -g "@types/node@6.0.60" && \
    npm install -g "codelyzer@4.0.1" && \
    npm install -g "jasmine-core@2.8.0" && \
    npm install -g "jasmine-spec-reporter@4.2.1" && \
    npm install -g "karma@2.0.0" && \
    npm install -g "karma-chrome-launcher@2.2.0" && \
    npm install -g "karma-coverage-istanbul-reporter@1.2.1" && \
    npm install -g "karma-jasmine@1.1.0" && \
    npm install -g "karma-jasmine-html-reporter@0.2.2" && \
    npm install -g "protractor@5.1.2" && \
    npm install -g "ts-node@4.1.0" && \
    npm install -g "tslint@5.9.1" && \
    npm install -g "typescript@2.5.3" && \
    npm install -g "@angular/animations@5.2.7" && \
    npm install -g "@angular/common@5.2.0" && \
    npm install -g "@angular/compiler@5.2.0" && \
    npm install -g "@angular/core@5.2.0" && \
    npm install -g "@angular/forms@5.2.0" && \
    npm install -g "@angular/http@5.2.0" && \
    npm install -g "@angular/platform-browser@5.2.0" && \
    npm install -g "@angular/platform-browser-dynamic@5.2.0" && \
    npm install -g "@angular/router@5.2.0" && \
    npm install -g "@ng-bootstrap/ng-bootstrap@1.0.0" && \
    npm install -g "angular-toastr@2.1.1" && \
    npm install -g "bootstrap@3.3.7" && \
    npm install -g "bootstrap-sass@3.3.7" && \
    npm install -g "core-js@2.4.1" && \
    npm install -g "font-awesome@4.7.0" && \
    npm install -g "highcharts@6.0.7" && \
    npm install -g "jquery@3.3.1" && \
    npm install -g "jwt-decode@2.2.0" && \
    npm install -g "moment@2.20.1" && \
    npm install -g "ng2-file-upload@1.3.0" && \
    npm install -g "ngx-toastr@8.3.0" && \
    npm install -g "raven-js@3.23.1" && \
    npm install -g "rxjs@5.5.6" && \
    npm install -g "stacktrace-js@2.0.0" && \
    npm install -g "zone.js@0.8.19" 

WORKDIR /root/.bower

# Workaround for bower so it won't pick package.json and thrown an error. We'll deprecate bower soon
RUN echo "{\"name\":\"empa\"}" > bower.json
RUN bower install --config.interactive=false --allow-root angular#~1.5.9 && \
    bower install --config.interactive=false --allow-root angular-mocks#~1.5.8 && \
    bower install --config.interactive=false --allow-root angular-jwt#~0.0.9 && \
    bower install --config.interactive=false --allow-root angular-route#~1.5.9 && \
    bower install --config.interactive=false --allow-root bootstrap-sass#~3.3.6 && \
    bower install --config.interactive=false --allow-root fontawesome#~4.6.3 && \
    bower install --config.interactive=false --allow-root jquery#~3.1.1 && \
    bower install --config.interactive=false --allow-root logentries#~0.0.3 && \
    bower install --config.interactive=false --allow-root angular-local-storage#~0.5.2 && \
    bower install --config.interactive=false --allow-root angular-bootstrap-datetimepicker#~1.1.4 && \
    bower install --config.interactive=false --allow-root moment#~2.15.1 && \
    bower install --config.interactive=false --allow-root angular-toastr#~1.6.0 && \
    bower install --config.interactive=false --allow-root angular-animate#~1.5.9 && \
    bower install --config.interactive=false --allow-root angular-moment#1.0.1 && \
    bower install --config.interactive=false --allow-root angular-file-upload#~2.3.4 && \
    bower install --config.interactive=false --allow-root angular-segment-analytics#~1.2.0 && \
    bower install --config.interactive=false --allow-root angular-recaptcha#~3.0.3 && \
    bower install --config.interactive=false --allow-root highcharts#~5.0.6 && \
    bower install --config.interactive=false --allow-root angular-translate#~2.13.1 && \
    bower install --config.interactive=false --allow-root angular-touch#~1.5.11 && \
    bower install --config.interactive=false --allow-root "git://github.com/monospaced/bower-qrcode-generator.git#v0.2.0" && \
    bower install --config.interactive=false --allow-root angular-qrcode#~7.2.0

WORKDIR /

CMD ["/bin/bash"]
