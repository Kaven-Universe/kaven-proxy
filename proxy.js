/********************************************************************
 * @author:      Kaven
 * @email:       kaven@wuwenkai.com
 * @website:     http://blog.kaven.xyz
 * @file:        [kaven-proxy] /proxy.js
 * @create:      2022-04-24 10:44:43.889
 * @modify:      2022-09-21 13:56:21.090
 * @version:     
 * @times:       13
 * @lines:       20
 * @copyright:   Copyright © 2022 Kaven. All Rights Reserved.
 * @description: [description]
 * @license:     [license]
 ********************************************************************/

 const args = process.argv.slice(2);
 const { StartProxy } = require("kaven-utils");
 
 StartProxy(args[0] || __dirname);
