playSound "uskd_taskhint";
_starL  = "<img image='Addon\uskd\pics\troj.paa' align='left'/>";
_starR  = "<img image='Addon\uskd\pics\troj.paa' align='right'/>";
_title  = "<t color='#ff0000' size='1.5' shadow='1.5' shadowColor='#000000' align='center'>Rules</t><br/><br/>";
_text   = "<t color='#ff0000' size='1' shadow='1' shadowColor='#000000' align='left'>- No Team Balancing = Kick<br/>- Teamkills = Kick/Ban<br/>- Base/MHQ Sabotage = Kick/Ban<br/>- Cheating/Hacking = perm. Ban!<br/>- DayZ style playing = Kick/Ban</t>";
hint parseText (_starL + _starR + _title + _text);