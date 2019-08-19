// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require_tree .


// Store Emoji
var emoji0 = '&#128512;';
var emoji1 = '&#128513;';
var emoji2 = '&#128514;';
var emoji3 = '&#128515;';
var emoji4 = '&#128516;';
var emoji5 = '&#128517;';
var emoji6 = '&#128518;';
var emoji7 = '&#128519;';
var emoji8 = '&#128520;';
var emoji9 = '&#128521;';
var emoji10 = '&#128522;';
var emoji11 = '&#128523;';
var emoji12 = '&#128524;';
var emoji13 = '&#128525;';
var emoji14 = '&#128526;';
var emoji15 = '&#128527;';
var emoji16 = '&#128528;';
var emoji17 = '&#128529;';
var emoji18 = '&#128530;';
var emoji19 = '&#128531;';
var emoji20 = '&#128532;';
var emoji21 = '&#128533;';
var emoji22 = '&#128534;';
var emoji23 = '&#128535;';
var emoji24 = '&#128536;';
var emoji25 = '&#128537;';
var emoji26 = '&#128538;';
var emoji27 = '&#128539;';
var emoji28 = '&#128540;';
var emoji29 = '&#128541;';
var emoji30 = '&#128542;';

var maxRand = 31;
var numRand = Math.floor(Math.random() * maxRand);
console.log(numRand);

$( document ).ready(function() {
	$('#emoji').html( eval('emoji' + numRand) );
})
 