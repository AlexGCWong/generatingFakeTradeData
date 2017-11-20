randomnumber: 1100000+ (1?100000);

ranask: 215.4+(randomnumber[0]?2001)%100;
ranbid: ranask - ((randomnumber[0]?10)%100); 
ranbidsize:100*1+randomnumber[0]?99;
ranasksize:ranbidsize +100*randomnumber[0]?10;
randate:2017.10.17+randomnumber[0]?31;
ranquotetime:08:00:00.000000000 + randomnumber[0]?08:30:00.000000000;


quotesVOD:([] date:randate;quoteTime:ranquotetime;sym:`VOD;market:`LSE;bidPrice:ranbid;askPrice:ranask;bidSize:ranbidsize;askSize:ranasksize;side:`buy);

randomnumber: 1100000+ (1?100000);
ranask: 215.6+(randomnumber[0]?2001)%100;
ranbid: ranask - ((randomnumber[0]?10)%100); 
ranbidsize:100*1+randomnumber[0]?99;
ranasksize:ranbidsize +100*randomnumber[0]?10;
randate:2017.10.17+randomnumber[0]?31;
ranquotetime:08:00:00.000000000 + randomnumber[0]?08:30:00.000000000;


`quotesVOD insert ([] date:randate;quoteTime:ranquotetime;sym:`VOD;market:`LSE;bidPrice:ranask;askPrice:ranbid;bidSize:ranasksize;askSize:ranbidsize;side:`sell);

randomnumber: 1100000+ (1?100000);
ranask: 2198.1+(randomnumber[0]?2001)%100;
ranbid: ranask - ((randomnumber[0]?10)%100); 
ranbidsize:100*1+randomnumber[0]?99;
ranasksize:ranbidsize +100*randomnumber[0]?10;
randate:2017.10.17+randomnumber[0]?31;
ranquotetime:13:30:00.000000000 + randomnumber[0]?06:30:00.000000000;



`quotesVOD insert([] date:randate;quoteTime:ranquotetime;sym:`VOD;market:`NASDAQ;bidPrice:ranbid;askPrice:ranask;bidSize:ranbidsize;askSize:ranasksize;side:`buy);

randomnumber: 1100000+ (1?100000);
ranask: 2198.1+(randomnumber[0]?2001)%100;
ranbid: ranask - ((randomnumber[0]?10)%100); 
ranbidsize:100*1+randomnumber[0]?99;
ranasksize:ranbidsize +100*randomnumber[0]?10;
randate:2017.10.17+randomnumber[0]?31;
ranquotetime:13:30:00.000000000 + randomnumber[0]?06:30:00.000000000;

`quotesVOD insert ([] date:randate;quoteTime:ranquotetime;sym:`VOD;market:`NASDAQ;bidPrice:ranask;askPrice:ranbid;bidSize:ranasksize;askSize:ranbidsize;side:`sell);
quotesVOD: `date`quoteTime xasc quotesVOD;

