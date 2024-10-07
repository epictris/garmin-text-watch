using Toybox.Application as App;
using Toybox.System;

class TextWatchApp extends App.AppBase {

	function onStart(state) {
		System.println( "Start" );
    }

	function onStop(state) {
		System.println( "Stop" );
	}

	function getInitialView() {
		System.println( "Getting View" );
		return [ new TextWatchView() ];
	}
}
