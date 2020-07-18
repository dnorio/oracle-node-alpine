# oracle-node-alpine
Simple and lightweight Alpine Linux build with NodeJS and Oracle Instant Client 12.1.0.1

## Available Tags

* [```1.4.0-stage```, ```14.5.0-alpine3.12```, ```latest```](https://github.com/dnorio/oracle-node-alpine/tree/9558dbefd634763241ae47783865db1dc4146c45) (2020-07): NodeJS 14.5.0 and Alpine Linux 3.12. Suitable for use with npm package oracledb@4.2.0;

* [```1.3.0```, ```12.16.1-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/tree/8549b389da3bc43219ee54d59eb93a1992b4b0f0) (2020-03): NodeJS 12.16.1 and Alpine Linux 3.11. Suitable for use with npm package oracledb@4.2.0;

* [```1.2.0```](https://github.com/dnorio/oracle-node-alpine/tree/07f1a79421dc4e589710db5fcc40719b07dfff92) (2020-10): NodeJS 12.x and Alpine Linux. Suitable for use with npm package oracledb@4.2.0;

* [```1.1.0```](https://github.com/dnorio/oracle-node-alpine/tree/5f1251b7eb366a6959553ac77be682739ba331a9) (2019-03): NodeJS 10.x and Alpine Linux. Suitable for use with npm package oracledb@3.1.2;

* [```1.0.0```](https://github.com/dnorio/oracle-node-alpine/tree/fb5ebca57447f3eeff1283dd9c8da94e058de177) (2018-08): Old version with NodeJS 8.x and Alpine Linux.

## Known Issues
From 1.1.0 onward we noticed unexpected behaviour from the official npm library oracledb when using prepared statements with JS Number types. The application would hang without any response for insert/update statements, very large or decimal numbers in some cases. From 1.2.0 onward this issue would affect all queries with number bindings.

In order to get around this problem we forced our applications to only present string bindings, casting the values when necessary before presenting it to the library, and had no issues using this workaround.

Please be aware of this issue before using this image.

If you know how to fix it, please contact me.