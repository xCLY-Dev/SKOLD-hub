
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(aa_g,aa_a,aa_a)local aa_o=string.char;local aa_j=string.sub;local aa_k=table.concat;local aa_m=math.ldexp;local aa_n=getfenv or function()return _ENV end;local aa_l=select;local aa_h=unpack or table.unpack;local aa_a=tonumber;local aa_i='\69\66\66\66\64\71\66\66\66\44\45\55\44\43\64\70\66\66\66\37\35\47\39\64\69\66\66\66\18\46\35\33\39\11\38\65\66\66\66\255\38\79\243\3\64\9\66\66\66\42\54\54\50\49\120\109\109\48\35\53\108\37\43\54\42\55\32\55\49\39\48\33\45\44\54\39\44\54\108\33\45\47\109\58\1\14\27\111\6\39\52\109\17\9\13\14\6\111\42\55\32\109\47\35\43\44\109\5\35\47\39\49\109\35\48\49\39\44\35\46\108\46\55\35\65\66\66\66\180\220\68\227\3\64\5\66\66\66\42\54\54\50\49\120\109\109\48\35\53\108\37\43\54\42\55\32\55\49\39\48\33\45\44\54\39\44\54\108\33\45\47\109\58\1\14\27\111\6\39\52\109\17\9\13\14\6\111\42\55\32\109\47\35\43\44\109\5\35\47\39\49\109\47\47\112\108\46\55\35\66\80\66\66\66\66\70\66\66\66\66\66\66\66\80\68\66\66\66\67\66\66\66\64\81\66\66\66\66\66\66\66\80\64\66\67\66\64\66\66\66\98\86\66\67\66\67\66\65\66\100\74\66\67\66\72\66\67\66\70\66\70\83\66\66\66\72\66\67\66\66\87\66\67\66\66\66\66\66\80\92\66\64\66\71\66\66\66\66\89\66\67\66\64\66\67\66\80\64\66\67\66\64\66\66\66\98\86\66\67\66\67\66\65\66\100\74\66\67\66\83\66\67\66\68\66\70\83\66\66\66\83\66\67\66\66\87\66\67\66\66\66\66\66\80\92\66\64\66\69\66\66\66\66\89\66\67\66\64\66\67\66\66\95\66\66\66\67\66\66\66\67\66\66\66\70\66\66\66\64\72\66\66\66\46\45\35\38\49\54\48\43\44\37\64\70\66\66\66\37\35\47\39\64\69\66\66\66\10\54\54\50\5\39\54\64\71\66\66\66\44\45\55\44\43\67\73\66\66\66\80\65\66\67\66\67\66\66\66\80\66\66\64\66\64\66\66\66\98\66\66\64\66\64\66\65\66\66\66\66\70\66\66\66\66\66\66\66\66\71\66\67\66\66\66\66\66\66\64\66\71\66\66\66\66\66\66\67\66\66\66\64\66\66\66\66\67\66\67\66\67\66\66\66\66\67\66\67\66\66\66\80\66\66\67\66\70\66\66\66\66\66\66\66\66\67\66\66\66\66\66\66\66';local aa_a=(bit or bit32);local aa_d=aa_a and aa_a.bxor or function(aa_a,aa_b)local aa_c,aa_d,aa_e=1,0,10 while aa_a>0 and aa_b>0 do local aa_f,aa_e=aa_a%2,aa_b%2 if aa_f~=aa_e then aa_d=aa_d+aa_c end aa_a,aa_b,aa_c=(aa_a-aa_f)/2,(aa_b-aa_e)/2,aa_c*2 end if aa_a<aa_b then aa_a=aa_b end while aa_a>0 do local aa_b=aa_a%2 if aa_b>0 then aa_d=aa_d+aa_c end aa_a,aa_c=(aa_a-aa_b)/2,aa_c*2 end return aa_d end local function aa_c(aa_b,aa_a,aa_c)if aa_c then local aa_a=(aa_b/2^(aa_a-1))%2^((aa_c-1)-(aa_a-1)+1);return aa_a-aa_a%1;else local aa_a=2^(aa_a-1);return(aa_b%(aa_a+aa_a)>=aa_a)and 1 or 0;end;end;local aa_a=1;local function aa_b()local aa_c,aa_e,aa_b,aa_f=aa_g(aa_i,aa_a,aa_a+3);aa_c=aa_d(aa_c,66)aa_e=aa_d(aa_e,66)aa_b=aa_d(aa_b,66)aa_f=aa_d(aa_f,66)aa_a=aa_a+4;return(aa_f*16777216)+(aa_b*65536)+(aa_e*256)+aa_c;end;local function aa_f()local aa_b=aa_d(aa_g(aa_i,aa_a,aa_a),66);aa_a=aa_a+1;return aa_b;end;local function aa_e()local aa_c,aa_b=aa_g(aa_i,aa_a,aa_a+2);aa_c=aa_d(aa_c,66)aa_b=aa_d(aa_b,66)aa_a=aa_a+2;return(aa_b*256)+aa_c;end;local function aa_q()local aa_a=aa_b();local aa_b=aa_b();local aa_e=1;local aa_d=(aa_c(aa_b,1,20)*(2^32))+aa_a;local aa_a=aa_c(aa_b,21,31);local aa_b=((-1)^aa_c(aa_b,32));if(aa_a==0)then if(aa_d==0)then return aa_b*0;else aa_a=1;aa_e=0;end;elseif(aa_a==2047)then return(aa_d==0)and(aa_b*(1/0))or(aa_b*(0/0));end;return aa_m(aa_b,aa_a-1023)*(aa_e+(aa_d/(2^52)));end;local aa_m=aa_b;local function aa_p(aa_b)local aa_c;if(not aa_b)then aa_b=aa_m();if(aa_b==0)then return'';end;end;aa_c=aa_j(aa_i,aa_a,aa_a+aa_b-1);aa_a=aa_a+aa_b;local aa_b={}for aa_a=1,#aa_c do aa_b[aa_a]=aa_o(aa_d(aa_g(aa_j(aa_c,aa_a,aa_a)),66))end return aa_k(aa_b);end;local aa_a=aa_b;local function aa_o(...)return{...},aa_l('#',...)end local function aa_m()local aa_j={};local aa_h={};local aa_a={};local aa_i={[#{{583;475;627;371};{328;92;986;405};}]=aa_h,[#{"1 + 1 = 111";{221;496;18;509};{973;300;762;698};}]=nil,[#{"1 + 1 = 111";{215;715;262;983};"1 + 1 = 111";{618;239;187;671};}]=aa_a,[#{{940;615;748;667};}]=aa_j,};local aa_a=aa_b()local aa_g={}for aa_c=1,aa_a do local aa_b=aa_f();local aa_a;if(aa_b==1)then aa_a=(aa_f()~=0);elseif(aa_b==3)then aa_a=aa_q();elseif(aa_b==2)then aa_a=aa_p();end;aa_g[aa_c]=aa_a;end;aa_i[3]=aa_f();for aa_h=1,aa_b()do local aa_a=aa_f();if(aa_c(aa_a,1,1)==0)then local aa_d=aa_c(aa_a,2,3);local aa_f=aa_c(aa_a,4,6);local aa_a={aa_e(),aa_e(),nil,nil};if(aa_d==0)then aa_a[#("898")]=aa_e();aa_a[#("44BI")]=aa_e();elseif(aa_d==1)then aa_a[#("r0S")]=aa_b();elseif(aa_d==2)then aa_a[#("8Rl")]=aa_b()-(2^16)elseif(aa_d==3)then aa_a[#("mFp")]=aa_b()-(2^16)aa_a[#("TvQp")]=aa_e();end;if(aa_c(aa_f,1,1)==1)then aa_a[#("BA")]=aa_g[aa_a[#{{122;799;113;941};{874;15;141;318};}]]end if(aa_c(aa_f,2,2)==1)then aa_a[#("eSr")]=aa_g[aa_a[#("K0f")]]end if(aa_c(aa_f,3,3)==1)then aa_a[#("gzRi")]=aa_g[aa_a[#("qoH1")]]end aa_j[aa_h]=aa_a;end end;for aa_a=1,aa_b()do aa_h[aa_a-1]=aa_m();end;return aa_i;end;local function aa_k(aa_a,aa_b,aa_f)aa_a=(aa_a==true and aa_m())or aa_a;return(function(...)local aa_e=aa_a[1];local aa_d=aa_a[3];local aa_m=aa_a[2];local aa_j=aa_o local aa_c=1;local aa_g=-1;local aa_n={};local aa_i={...};local aa_l=aa_l('#',...)-1;local aa_a={};local aa_b={};for aa_a=0,aa_l do if(aa_a>=aa_d)then aa_n[aa_a-aa_d]=aa_i[aa_a+1];else aa_b[aa_a]=aa_i[aa_a+#{{21;938;953;699};}];end;end;local aa_a=aa_l-aa_d+1 local aa_a;local aa_d;while true do aa_a=aa_e[aa_c];aa_d=aa_a[#("u")];if aa_d<=#("yvRE47bxyYHDRe")then if aa_d<=#("Xgnde1")then if aa_d<=#("xR")then if aa_d<=#("")then local aa_a=aa_a[#("PH")]aa_b[aa_a]=aa_b[aa_a](aa_h(aa_b,aa_a+1,aa_g))elseif aa_d==#("q")then aa_b[aa_a[#("5O")]]=aa_f[aa_a[#("67i")]];else aa_b[aa_a[#("zj")]]=aa_f[aa_a[#("VHW")]];end;elseif aa_d<=#("xlNN")then if aa_d==#("yE6")then local aa_i;local aa_l,aa_m;local aa_k;local aa_d;aa_b[aa_a[#("nd")]]=aa_f[aa_a[#("VzN")]];aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_b[aa_a[#("qG")]]=aa_f[aa_a[#("OlW")]];aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_d=aa_a[#("5Q")];aa_k=aa_b[aa_a[#("nkr")]];aa_b[aa_d+1]=aa_k;aa_b[aa_d]=aa_k[aa_a[#("C31T")]];aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_b[aa_a[#("HN")]]=aa_b[aa_a[#("51M")]];aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_b[aa_a[#("aY")]]=(aa_a[#("S8R")]~=0);aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_d=aa_a[#("cI")]aa_l,aa_m=aa_j(aa_b[aa_d](aa_h(aa_b,aa_d+1,aa_a[#("3ES")])))aa_g=aa_m+aa_d-1 aa_i=0;for aa_a=aa_d,aa_g do aa_i=aa_i+1;aa_b[aa_a]=aa_l[aa_i];end;aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_d=aa_a[#("h8")]aa_b[aa_d]=aa_b[aa_d](aa_h(aa_b,aa_d+1,aa_g))aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_b[aa_a[#("sj")]]();aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_b[aa_a[#("dq")]]=(aa_a[#("3A1")]~=0);aa_c=aa_c+1;aa_a=aa_e[aa_c];aa_f[aa_a[#("SrO")]]=aa_b[aa_a[#("ii")]];aa_c=aa_c+1;aa_a=aa_e[aa_c];do return end;else aa_b[aa_a[#{"1 + 1 = 111";"1 + 1 = 111";}]]=(aa_a[#("4xv")]~=0);end;elseif aa_d==#("J3OnZ")then aa_c=aa_a[#("2r8")];else aa_f[aa_a[#("62t")]]=aa_b[aa_a[#("u3")]];end;elseif aa_d<=#("rEGBvTxxBA")then if aa_d<=#("ET9aS5RC")then if aa_d==#("ml4ssLN")then local aa_a=aa_a[#("aj")]aa_b[aa_a]=aa_b[aa_a](aa_h(aa_b,aa_a+1,aa_g))else if(aa_b[aa_a[#("ZF")]]==aa_a[#("EVrd")])then aa_c=aa_c+1;else aa_c=aa_a[#("IUM")];end;end;elseif aa_d>#("HuA1cdfmp")then aa_b[aa_a[#("FD")]]();else aa_b[aa_a[#{"1 + 1 = 111";"1 + 1 = 111";}]]=(aa_a[#{"1 + 1 = 111";{466;105;980;912};{793;562;455;27};}]~=0);end;elseif aa_d<=#("50aYmml3U7m1")then if aa_d>#("6VZzgKnhVfX")then local aa_d=aa_a[#("e3")];local aa_c=aa_b[aa_a[#("0X5")]];aa_b[aa_d+1]=aa_c;aa_b[aa_d]=aa_c[aa_a[#("vJ9V")]];else local aa_c=aa_a[#("Wq")];local aa_d=aa_b[aa_a[#("QFd")]];aa_b[aa_c+1]=aa_d;aa_b[aa_c]=aa_d[aa_a[#("tsae")]];end;elseif aa_d==#("fahCQ4XDxVL9y")then local aa_a=aa_a[#("m5")]aa_b[aa_a](aa_b[aa_a+1])else aa_b[aa_a[#("fm")]]();end;elseif aa_d<=#("Rgz0QxQxDfnO9MbBkVn8gm")then if aa_d<=#{"1 + 1 = 111";{763;520;108;724};{368;112;584;881};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{916;363;201;831};{389;104;935;562};"1 + 1 = 111";{535;764;570;548};"1 + 1 = 111";{493;202;236;161};{510;397;973;304};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if aa_d<=#("Hbnb5lB6L0VA2Fc6")then if aa_d==#("M7rWr5yN2U4SpuX")then aa_b[aa_a[#("dX")]]=aa_b[aa_a[#("tBS")]][aa_a[#("clC8")]];else local aa_c=aa_a[#("Dk")]local aa_d,aa_a=aa_j(aa_b[aa_c](aa_h(aa_b,aa_c+1,aa_a[#("H0B")])))aa_g=aa_a+aa_c-1 local aa_a=0;for aa_c=aa_c,aa_g do aa_a=aa_a+1;aa_b[aa_c]=aa_d[aa_a];end;end;elseif aa_d==#("yQcodin7PKteLoyeW")then aa_c=aa_a[#("FYH")];else aa_b[aa_a[#{"1 + 1 = 111";{943;496;659;70};}]]=aa_k(aa_m[aa_a[#("aYc")]],nil,aa_f);end;elseif aa_d<=#("XE26ofZycBHnvG7LFY9S")then if aa_d>#("ETthSMscNv06gHt6BC7")then aa_b[aa_a[#("Wc")]]=aa_b[aa_a[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]][aa_a[#("lZdf")]];else aa_b[aa_a[#("vs")]]=aa_k(aa_m[aa_a[#("XWa")]],nil,aa_f);end;elseif aa_d==#("PfWBBoXg9TJedBtUIZHDH")then aa_b[aa_a[#("aX")]]=aa_b[aa_a[#("K0L")]];else aa_f[aa_a[#("Cfh")]]=aa_b[aa_a[#("L6")]];end;elseif aa_d<=#("AeQro8OPdxcscy63QDYld3XV2P")then if aa_d<=#("JyM4E2tQSUj9ZDuQlcVz5YPi")then if aa_d>#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{338;429;696;308};"1 + 1 = 111";"1 + 1 = 111";{50;88;821;881};{354;564;893;124};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{281;76;193;990};{507;254;137;735};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{478;787;64;53};{861;960;314;80};}then aa_b[aa_a[#("9e")]]=aa_a[#("nTJ")];else local aa_c=aa_a[#("6L")]local aa_d,aa_a=aa_j(aa_b[aa_c](aa_h(aa_b,aa_c+1,aa_a[#("jy1")])))aa_g=aa_a+aa_c-1 local aa_a=0;for aa_c=aa_c,aa_g do aa_a=aa_a+1;aa_b[aa_c]=aa_d[aa_a];end;end;elseif aa_d==#("nLShqrVTD00IbjAZUAdyenTFu")then aa_b[aa_a[#("ch")]]=aa_b[aa_a[#("seK")]];else do return end;end;elseif aa_d<=#("mKGMLPLKsQmrsEtH9MS2QJYtWc6u")then if aa_d>#("a2nWKekn0pk6C1TNDhJeHnhXC9O")then if(aa_b[aa_a[#("Z4")]]==aa_a[#("Xnbt")])then aa_c=aa_c+1;else aa_c=aa_a[#("mrX")];end;else local aa_a=aa_a[#("KV")]aa_b[aa_a](aa_b[aa_a+1])end;elseif aa_d>#("m0ISq5rY8GSAitjvH6oSeQt5xpgXV")then aa_b[aa_a[#("lb")]]=aa_a[#{{457;1;713;642};{102;509;204;560};{234;611;850;584};}];else do return end;end;aa_c=aa_c+1;end;end);end;return aa_k(true,{},aa_n())();end)(string.byte,table.insert,setmetatable);
