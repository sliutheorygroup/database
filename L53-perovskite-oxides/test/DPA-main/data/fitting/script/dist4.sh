for i in B2C61 B2S6 B4S4 B6S2 B4N4T K4N4N8 P12N8M4 P12N8Z4 P8N4I4 P2S6 P4S4 P6S2 B2C6 B4C4 B6C2 C2S6 C4S4 C6S2 B2P6 B4P4 B6P2 P6C2 P4C4 P2C6 P8T2Z6 P8T4Z4 P8T6Z2
do
	mkdir $i
done
	mv 002* 097* B2S6
	mv 003* 103* B4S4
	mv 004* 108* B6S2
	mv 011* 012* 068* B4N4T
	mv 013* 014* 067* K4N4N8
	mv 015* 016* 075* P12N8M4    
	mv 017* 018* 074* P12N8Z4
	mv 019* 020* 090* P8N4I4
	mv 021* 084* P2S6
 	mv 022* 086* P4S4
  	mv 023* 088* P6S2
  	mv 024* B2C6
	mv 098* B2C61
  	mv 025* 104* B4C4
  	mv 026* 109* B6C2
  	mv 027* 070* C2S6
  	mv 028* 071* C4S4
  	mv 029* 072* C6S2
  	mv 030* 099* B2P6
  	mv 031* 105* B4P4
  	mv 032* 110* B6P2
  	mv 033* 089* P6C2
  	mv 034* 087* P4C4
  	mv 035* 085* P2C6
  	mv 036* 091* P8T2Z6
  	mv 037* 092* P8T4Z4
  	mv 038* 093* P8T6Z2


for i in B2C61 B2S6 B4S4 B6S2 B4N4T K4N4N8 P12N8M4 P12N8Z4 P8N4I4 P2S6 P4S4 P6S2 B2C6 B4C4 B6C2 C2S6 C4S4 C6S2 B2P6 B4P4 B6P2 P6C2 P4C4 P2C6 P8T2Z6 P8T4Z4 P8T6Z2
do
	cp sample-e.py $i
        cd $i
        python sample-e.py
        cd ..
done
