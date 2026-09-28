// transition to next state
// stop attack and move back to idle

// set next state to undefined after moving to it
if (next_state != undefined){
	state = next_state;
	next_state = undefined;
}

