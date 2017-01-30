scenario = "priming R1";

active_buttons = 2;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 1,2 verwijst naar de knoppenkast, de meest linkse en meest rechtse
button_codes = 1,2;
response_matching = simple_matching;

begin;

picture {} default;
#hieronder noem je alle geluidsstimuli die je nodig hebt in het hele experiment.
sound {wavefile {filename = "startsignaal.wav"; }; }beep;
sound {wavefile {filename = "introtekstprime.wav"; }; }introoefen;
sound {wavefile {filename = "einde.wav"; }; }einde;
sound {wavefile {filename = "goed.wav"; }; }goed;
sound {wavefile {filename = "fout.wav"; }; }fout;
sound {wavefile {filename = "primeecht.wav"; }; }introecht;
#stimuli trials
sound {wavefile {filename = "heup.wav";   }; }heup;
sound {wavefile {filename = "staart.wav"; }; }staart;
sound {wavefile {filename = "spiegel.wav"; }; }spiegel;
sound {wavefile {filename = "bumper.wav"; }; }bumper;
sound {wavefile {filename = "vleugel.wav"; }; }vleugel;
sound {wavefile {filename = "schoen.wav"; }; }schoen;

# Start of Program
# intro
trial {
sound introoefen; code = "introoefen";
};

trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1,2;             	#   button 2 is pressed
	picture {
		text {
			font_size = 18;
			caption = "Wachten op een knop";	
			};
		x = 0 ; y = 0 ;		
		};
};

trial { 
#	trial_duration = 2000;
	picture {
		text {
			font_size = 18;
#			system_memory = true;
			caption = "Oefensessie";	
			};
		x = 0 ; y = 0 ;		
		};
	};      

#code nodig voor het geven van feedback
trial {
    trial_duration = stimuli_length;
    sound fout;
    time = 100;
    code = "fout";
	 nothing {}; delta_time = 2000; code = "end_trial";
} wrong;
trial {
    trial_duration = stimuli_length;
    sound goed;
    time = 100;
    code = "goed";
    nothing {}; delta_time = 2000; code = "end_trial";
} right;

#oefentrials, moet nog uitgebreid
TEMPLATE "oefening.tem" randomize {
#woord=variabele van de sound file
#woordcode=code van het woord
#antw=gewenste antwooed

# oefentrials
# nog even aanpassen. Alleen duidelijke verschillen. En voorbeeld van 3 condities.
woord			woordcode		antw;
schoen		"schoen"			1;
vleugel		"vleugel"		2;
staart		"staart"			2;
schoen		"schoen"			1;
vleugel		"vleugel"		2;
staart		"staart"			2;
schoen		"schoen"			1;
vleugel		"vleugel"		2;
staart		"staart"			2;
staart		"staart"			2;
};

trial { 
	picture default;
};

#uitleg begin experiment
trial { 
#	trial_duration = 2000;
	picture {
		text {
			font_size = 18;
#			system_memory = true;
			caption = "Nu volgt het eigenlijke experiment. 
Succes!";	
			};
		x = 0 ; y = 0 ;		
		};
	};      

trial {
	sound introecht; code = "primeecht";
};

trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1,2;             	#   button 2 is pressed
	picture {
		text {
			font_size = 18;
			caption = "Wachten op de linkerknop";	
			};
		x = 0 ; y = 0 ;		
		};
};


trial { 
	picture default;
};

#code nodig voor het geven van feedback
trial {
	nothing {};
	time = 50;
    code = "fout";
	 nothing {}; delta_time = 1000; code = "end_trial";
} incorrect;
trial {
	nothing {};
	time = 50;
    code = "goed";
    nothing {}; delta_time = 1000; code = "end_trial";
} correct;

# blok1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
TEMPLATE "experiment.tem" {
#woord=variabele van de sound file
#woordcode=code van het woord
#relatie=prime of niet
#antw=gewenste antwooed
#niet levend is linkerknop
woord			woordcode	relatie	antw;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
spiegel		"spiegel"	"p"		1;
bumper		"bumper"		"n"		1;
staart		"staart"		"n"		2;
vleugel		"vleugel"	"n"		2;
schoen		"schoen"		"n"		1;
heup			"heup"		"p"		2;
};


# aflsuiting experiment
trial {
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Dit is het einde van dit experiment.";	
			};
		x = 0 ; y = 0 ;		
		};
	sound einde; code = "einde";
	nothing {}; delta_time = 3547;
	};


#End   

