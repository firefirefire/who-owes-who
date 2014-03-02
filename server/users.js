/**
 * Created by kevinmcgaire on 3/1/2014.
 */

var Users = require('./db').collection('users');
var _ = require('underscore');

Users.ensureIndex( { 'username':  1 }, { unique: true } );

var self = {};
//TODO have passwords for a username
self.createUser = function ( username, callback ) {
    var newUser = { 'username': username , 'tabs' : [] };
    Users.insert(newUser);
    callback(newUser);
};

//TODO add verification that the other person approves the Tab
self.addTab = function ( username , tabName, amount, callback ) {
    Users.findOne({
        'username' : username
    }, function ( error , user ){
        if ( error ){
            callback("Couldn't Find User", null );
        } else {
            var newTab = { 'name' : tabName , 'tabAmount' : amount };
            user.tabs.push(newTab);
            Users.save(user);
        }

    })
};

self.removeTab = function( username , tabName, amount, callback ){
    Users.findOne({
        'username' : username
    }, function ( error , user ) {

    })
}

