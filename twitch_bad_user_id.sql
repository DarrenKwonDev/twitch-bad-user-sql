CREATE OR REPLACE FUNCTION is_terrorism (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%did911%'
     OR replace($1,'_','') LIKE '%support%isis%'
     OR replace($1,'_','') LIKE '%isis%support%'
     OR replace($1,'_','') LIKE '%join%isis%'
     OR replace($1,'_','') LIKE '%isismember%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_child_exploitation (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%ped(o|0)(f|ph)(i|1)le%'
     OR replace($1,'_','') SIMILAR TO '%isa%ped(o|0)%'
     OR replace($1,'_','') SIMILAR TO '%(child|kid|minor|miner)%m(o|0)lest%'
     OR replace($1,'_','') SIMILAR TO '%m(o|0)lest%(child|kid|minor|miner)%'
     OR replace($1,'_','') SIMILAR TO '%touch%(child|kid|minor|miner)%'
     OR replace($1,'_','') SIMILAR TO '%(child|kid|minor|miner)%r(a|4|8)+y*p(i|1){0,1}st%'
     OR replace($1,'_','') SIMILAR TO '%(child|kid|minor|miner)%r(a|4|8)+y*p(i|1){0,1}ng%'
     OR replace($1,'_','') SIMILAR TO '%(child|kid|minor|miner)%r(a|4|8)+y*p(e|3)%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}st%(child|kid|minor|miner)%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}ng%(child|kid|minor|miner)%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(e|3)%(child|kid|minor|miner)%'
     OR replace($1,'_','') LIKE '%kinderficker%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_hateful (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%n(i|1|l|j|y)*(g|9|b|q){2,3}(e|3|u){0,1}r%'
     OR replace($1,'_','') SIMILAR TO '%n(i|1|l|j|y)+(g|9|b|q){2,3}(a|4)%'
     OR replace($1,'_','') SIMILAR TO '%kn(e|3)+g(e|3|a)+r+%'
     OR replace($1,'_','') SIMILAR TO '%kn(e|3)+_g(e|3|a)+r+%'
     OR replace($1,'_','') LIKE '%n_gg_r%'
     OR replace($1,'_','') LIKE '%n_iggr%'
     OR replace($1,'_','') LIKE '%ni_ggr%'
     OR replace($1,'_','') LIKE '%nig_gr%'
     OR replace($1,'_','') LIKE '%nigg_r%'
     OR replace($1,'_','') LIKE '%n_ggr%'
     OR replace($1,'_','') LIKE '%higger%'
     OR replace($1,'_','') LIKE '%reggin%'
     OR replace($1,'_','') LIKE '%aggin%'
     OR replace($1,'_','') LIKE '%kneegro%'
     OR replace($1,'_','') LIKE '%nee_gr_%'
     OR replace($1,'_','') LIKE '%neeg_r%'
     OR replace($1,'_','') LIKE '%nee_g_r%'
     OR replace($1,'_','') LIKE '%nig_ger%'
     OR replace($1,'_','') LIKE '%nie_ger%'
     OR replace($1,'_','') LIKE '%nick_ger%'
     OR replace($1,'_','') LIKE '%nickger%'
     OR replace($1,'_','') LIKE '%nick_gur%'
     OR replace($1,'_','') LIKE '%nickgur%'
     OR replace($1,'_','') LIKE '%nigur%'
     OR replace($1,'_','') LIKE '%nie_gur%'
     OR replace($1,'_','') LIKE '%niegur%'
     OR replace($1,'_','') LIKE '%nee__grow%'
     OR replace($1,'_','') LIKE '%nig__ger%'
     OR replace($1,'_','') LIKE '%nickger%'
     OR replace($1,'_','') LIKE '%nirgger%'
     OR replace($1,'_','') LIKE '%isaniger%'
     OR replace($1,'_','') LIKE '%nlrgger%'
     OR replace($1,'_','') LIKE '%nl_gger'
     OR replace($1,'_','') LIKE '%n_iggers%'
     OR replace($1,'_','') LIKE '%nikggers%'
     OR replace($1,'_','') LIKE '%nljkjggers'
     OR replace($1,'_','') LIKE '%nekker%'
     OR replace($1,'_','') LIKE '%ni1ngeger%'
     OR replace($1,'_','') LIKE '%nigge%'
     OR replace($1,'_','') LIKE '%n1gg1er%'
     OR replace($1,'_','') LIKE '%n1gg_ass%'
     OR replace($1,'_','') LIKE '%n1gg_er%'
     OR replace($1,'_','') LIKE '%kneagar%'
     OR replace($1,'_','') LIKE '%figger%'
     OR replace($1,'_','') LIKE '%nl_gger%'
     OR replace($1,'_','') LIKE '%n_igger%'
     OR replace($1,'_','') LIKE '%kn33gr0w%'
     OR replace($1,'_','') LIKE '%kneee_groe%'
     OR replace($1,'_','') LIKE '%knegrow%'
     OR replace($1,'_','') LIKE '%nik6k6erz%'
     OR replace($1,'_','') LIKE '%nik6k6er%'
     OR replace($1,'_','') SIMILAR TO '%(hate|kill|keel|hang|burn|gasthe)%(black|bl4ck|black|jew|trans|gay|african|afrikan|minorit|asian|nig|n1g)%'
     OR replace($1,'_','') SIMILAR TO '%black%(ape|monkey|jail|baboon|gorilla|hate|chimp)%'
     OR replace($1,'_','') SIMILAR TO '%blacklives{0,1}dontmatter%'
     OR replace($1,'_','') SIMILAR TO '%white%(power|supremac)%'
     OR replace($1,'_','') SIMILAR TO '%slav(e|3)%'
     OR replace($1,'_','') SIMILAR TO '%b(e|3)(a|4)n(e|a|3)r%'
     OR replace($1,'_','') SIMILAR TO '%h(o|0)l(o|0)caust%'
     OR replace($1,'_','') SIMILAR TO '%h(o|0)l(o|0)cuast%'
     OR replace($1,'_','') LIKE '%1488%'
     OR replace($1,'_','') LIKE '%ad_lf%'
     OR replace($1,'_','') LIKE '%h_tl_r%'
     OR replace($1,'_','') LIKE '%auschwit%'
     OR replace($1,'_','') LIKE '%siegheil%'
     OR replace($1,'_','') LIKE '%sieg_heil%'
     OR replace($1,'_','') SIMILAR TO '%seek{1,2}yle%'
     OR replace($1,'_','') LIKE '%hilter%'
     OR replace($1,'_','') LIKE '%klan%'
     OR replace($1,'_','') SIMILAR TO '%f(a|4)(g|9){2}(o|0)t%'
     OR replace($1,'_','') SIMILAR TO '%tr(a|4)nn(y|ies)%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_harassment (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%isa%(pedo|ped0|whore|wh0re|slut|s1ut|tard)%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_violence (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}ng%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(e|3)%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}st%'
     OR replace($1,'_','') SIMILAR TO '%(kill|keel|hang|burn)%(black|bl4ck|black|jew|trans|gay|african|afrikan|minorit|asian|nig|n1g)%'
     OR replace($1,'_','') LIKE '%gasthe%'
     OR replace($1,'_','') LIKE '%porvi__larme%'
     OR replace($1,'_','') LIKE '%porvi_larme%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_tragedy (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%george%floyd%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_selfharm (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%killmyself%'
     OR replace($1,'_','') SIMILAR TO '%su(i|1)c(i|1)d(e|3)%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_sexual (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}ng%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(e|3)%'
     OR replace($1,'_','') SIMILAR TO '%r(a|4|8)+y*p(i|1){0,1}st%'
     OR replace($1,'_','') SIMILAR TO '%c(o|0)ck%'
     OR replace($1,'_','') SIMILAR TO '%d(o|0)ng%'
     OR replace($1,'_','') SIMILAR TO '%d(i|1)ck%'
     OR replace($1,'_','') SIMILAR TO '%b(o|0)n(e|3)r%'
     OR replace($1,'_','') SIMILAR TO '%d(i|1)ld(o|0)%'
     OR replace($1,'_','') SIMILAR TO '%p(e|3)+n(i|1|l)(s|5)%'
     OR replace($1,'_','') SIMILAR TO '%dixiew{0,1}re(c|k)%'
     OR replace($1,'_','') SIMILAR TO '%p(o|0)rn%'
     OR replace($1,'_','') SIMILAR TO '%pu(s|5)(s|5)(y|i|ee|1|33)%'
     OR replace($1,'_','') SIMILAR TO '%c(o|0)(o|0)ch%'
     OR replace($1,'_','') SIMILAR TO '%(cum|kum|come|c0me)%(mouth|face|ass|guzzle|breast|tit)%'
     OR replace($1,'_','') SIMILAR TO '%(wallow|wollow|wall0w|w0ll0w|woll0w|w0llow|waiiow|walo|wolow|w0low|wol0w|w0l0w)%(cum|kum|com|c0m)%'
     OR replace($1,'_','') SIMILAR TO '%mast(u|e){0,1}rbat(e|ion)%'
     OR replace($1,'_','') LIKE '%vagina%'
     OR replace($1,'_','') LIKE '%mikehawk%'
     OR replace($1,'_','') LIKE '%ballsack%'
     OR replace($1,'_','') LIKE '%foreskin%'
     OR replace($1,'_','') LIKE '%butthole%'
     OR replace($1,'_','') LIKE '%clitoris%'
     OR replace($1,'_','') LIKE '%erection%'
     OR replace($1,'_','') LIKE '%love%anal%'
     OR replace($1,'_','') LIKE '%inmyass%'
     OR replace($1,'_','') LIKE '%schwanz%'
     OR replace($1,'_','') LIKE '%cewall_w%'
     OR replace($1,'_','') LIKE '%icewoll%'
     OR replace($1,'_','') LIKE '%porc_jerme%'
     OR replace($1,'_','') LIKE '%porvi__larme%'
     OR replace($1,'_','') LIKE '%porvi_larme%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_drugs (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%cocaine%'
     OR replace($1,'_','') LIKE '%ketamine%'
     OR replace($1,'_','') LIKE '%opium%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_derogatory (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%retard%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_profanity (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%(c|k)(u|v)n{1,2}t%'
     OR replace($1,'_','') SIMILAR TO '%sh(i|1)t%'
     OR replace($1,'_','') SIMILAR TO '%hurens(o|0)hn%'
     OR replace($1,'_','') LIKE '%b_tch%'
     OR replace($1,'_','') LIKE '%f_ck%'
     OR replace($1,'_','') LIKE '%fukc%'
     OR replace($1,'_','') LIKE '%mike_hunt%'
     OR replace($1,'_','') LIKE '%mikehunt%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_blasphemy (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%p(o|0)rc(o|0)di(o|0)%'
     OR replace($1,'_','') SIMILAR TO '%p(o|0)rc(o|0)mad(o|0)nna%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_marijuana (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') LIKE '%marijuana%'
     OR replace($1,'_','') LIKE '%420blazeit%'
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION is_sex_insult (VARCHAR) RETURNS BOOLEAN STABLE AS $$
 SELECT replace($1,'_','') SIMILAR TO '%wh(o|0)re%'
     OR replace($1,'_','') SIMILAR TO '%s(l|1)ut%'
$$ LANGUAGE SQL;
