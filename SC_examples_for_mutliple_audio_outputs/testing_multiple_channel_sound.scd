// select the whole fragment and compile ->
(
Tdef(\testMultiOut,{

	~count = 0;

	inf.do{
		{	Out.ar(~count,
			SinOsc.ar(300 *  ~count.midiratio ,0,1)*EnvGen.ar(Env.perc(0.01,0.5),doneAction:2)
			)
		}.play;
		"sound comming from ch : " .postln;
		~count.postln;
		if(~count<3,{~count=~count+1},{~count=0});
		0.25.wait;
	}
}).play;
)
// <- 