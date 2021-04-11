# oracle-node-alpine
Simple and lightweight Alpine Linux build with NodeJS and Oracle Instant Client 12.1.0.1

## Recommended Tags

* [```14.16.1-alpine3.13```, ```latest```](https://github.com/dnorio/oracle-node-alpine/commit/1b8b88eb668c59d4180691dba0352f63e0ded241) (2021-02): NodeJS 14.16.1 and Alpine Linux 3.13. Suitable for use with npm package oracledb@5.0.0;

* [```12.20.1-alpine3.12```](https://github.com/dnorio/oracle-node-alpine/commit/10f7d1d5201268ba1db827e30947a68530762680) (2021-02): NodeJS 12.20.0 and Alpine Linux 3.12. Suitable for use with npm package oracledb@4.2.0 and oracledb@5.0.0;

## Other Available Tags

* [```14.15.4-alpine3.12```, ```latest```](https://github.com/dnorio/oracle-node-alpine/commit/c3b09aa64a3a6cac4518de8913d1ee5f362f137d) (2021-02): NodeJS 14.15.4 and Alpine Linux 3.12. Suitable for use with npm package oracledb@5.0.0;

* [```10.23.2-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/commit/6a68bd6c213289eaac13cae6bce19aa642cc2d47) (2021-02): NodeJS 10.23.2 and Alpine Linux 3.11. Suitable for use with npm package oracledb@3.1.2;

* [```12.20.0-alpine3.12```](https://github.com/dnorio/oracle-node-alpine/commit/f18a6fc95fb76265ac249509f915aab8d2c92ae9) (2020-12): NodeJS 12.20.0 and Alpine Linux 3.12. Suitable for use with npm package oracledb@4.2.0 and oracledb@5.0.0;

* [```10.23.0-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/commit/1b93894a620bda4c0015d334c8b3be2f40167c40) (2020-12): NodeJS 10.23.0 and Alpine Linux 3.11. Suitable for use with npm package oracledb@3.1.2;

* [```14.15.1-alpine3.12-beta.1```](https://github.com/dnorio/oracle-node-alpine/commit/7bacc40ce5aa67e5fcca4bba58fbbb66f518af48) (2020-12): NodeJS 14.15.1 and Alpine Linux 3.12. May be suitable for use with npm package oracledb@5.0.0, but I haven't tested with all my kubernetes services yet;

* [```12.18.4-alpine3.12```](https://github.com/dnorio/oracle-node-alpine/commit/7582f5752d1ceb0a60e03873ee78e51bab77e143) (2020-10): NodeJS 12.18.4 and Alpine Linux 3.12. Suitable for use with npm package oracledb@4.2.0 and oracledb@5.0.0;

* [```10.22.1-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/commit/21fe03a4d92703b8600b450c7464041e8ccd2ff3) (2020-10): NodeJS 10.22.1 and Alpine Linux 3.11. Suitable for use with npm package oracledb@3.1.2;

* [```12.18.3-alpine3.12```](https://github.com/dnorio/oracle-node-alpine/commit/586ad885bdc32b72079d165922c6d7214f947ae3) (2020-10): NodeJS 12.18.3 and Alpine Linux 3.12. Suitable for use with npm package oracledb@4.2.0. Not recommended due [CVE-2020-8201](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8201);

* [```10.22.0-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/commit/a515fd7d2cf01c89fe7aec7af2099d358da2747c) (2020-08): NodeJS 10.22.0 and Alpine Linux 3.11. Suitable for use with npm package oracledb@3.1.2. Not recommended due [CVE-2020-8201](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8201);

* [```1.3.0```, ```12.16.1-alpine3.11```](https://github.com/dnorio/oracle-node-alpine/commit/8549b389da3bc43219ee54d59eb93a1992b4b0f0) (2020-03): NodeJS 12.16.1 and Alpine Linux 3.11. Suitable for use with npm package oracledb@3.1.2. Not recommended due [CVE-2020-8201](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8201);

* [```1.1.0```](https://github.com/dnorio/oracle-node-alpine/tree/5f1251b7eb366a6959553ac77be682739ba331a9) (2019-03): NodeJS 10.x and Alpine Linux. Suitable for use with npm package oracledb@3.1.2;

* [```1.0.0```](https://github.com/dnorio/oracle-node-alpine/tree/fb5ebca57447f3eeff1283dd9c8da94e058de177) (2018-08): Old version with NodeJS 8.x and Alpine Linux.

## Known Issues
From 1.1.0 onward we noticed unexpected behaviour from the official npm library oracledb when using prepared statements with JS Number types. The application would hang without any response for insert/update statements, very large or decimal numbers in some cases. From 1.2.0 onward this issue would affect all queries with number bindings.

In order to get around this problem we forced our applications to only present string bindings, casting the values when necessary before presenting it to the library, and had no issues using this workaround.

Please be aware of this issue before using this image.

If you know how to fix it, please contact me.