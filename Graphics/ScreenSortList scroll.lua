local index = Var("GameCommand"):GetIndex();

local t = Def.ActorFrame{};		
		
-- this renders the text itself
t[#t+1] = LoadFont("_wendy small") .. {	
	Name="Choice"..index;
	Text=THEME:GetString( 'ScreenSortList', Var("GameCommand"):GetText() );
	InitCommand=cmd(zoom,0.3;shadowlength,0;diffuse,color("#000000");diffusetopedge,color("0.25,0.25,0.25,1"); NoStroke;);
	OnCommand=function(self)
		
	end;
	DisabledCommand=cmd( diffuse,color("0.45,0,0,1") );
	GainFocusCommand=cmd(stoptweening; zoom,0.5; accelerate,0.15; diffuse, GetCurrentColor(); glow,color("1,1,1,0.5");decelerate,0.05;glow,color("1,1,1,0.0"));
	LoseFocusCommand=cmd(stoptweening; zoom,0.4; accelerate,0.2; diffuse,color("#888888"); glow,color("1,1,1,0.0"));
	OffCommand=cmd(linear, 0.5; diffusealpha, 0)
};

return t;