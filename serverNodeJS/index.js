var express = require('express');
var app = express();
var server = require('http').Server(app);
var io = require('socket.io')(server);

server.listen(4000, function(){
    console.log('Dang lang nghe tren post 4000');
    io.on('connection', function(socket){
        console.log('Co nguoi ket noi');
        socket.on('langnghe', function(data){
            console.log(data);
        })
    })
});