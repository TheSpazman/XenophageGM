// Ticker Text Timer
function set_ticker_text(ticker_message){
	
	oStaticHUD.ticker_text = ticker_message
    oStaticHUD.alarm[oStaticHUD.TICKER_ALARM] = oStaticHUD.ticker_display_time * game_get_speed(gamespeed_fps);
}