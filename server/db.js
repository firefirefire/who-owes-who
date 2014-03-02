/**
 * Created by kevinmcgaire on 3/1/2014.
 */

var Mongolian = require('mongolian');
var db = new Mongolian().db('who-owns-who');

module.exports = db;

