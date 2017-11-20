randomnumber: 1100000+ (1?100000)
ranprice: 215.6+(randomnumber[0]?2001)%100
randate:2017.10.17+randomnumber[0]?31
rantime:08:00:00.000000000 + randomnumber[0]?08:30:00.000000000
ranexchtime:rantime + randomnumber[0]?00:00:00.100000000
ranquantity:100*1+randomnumber[0]?100
ranside:randomnumber[0]?2
tradesVOD:([] date:randate;time:rantime;exchTime:ranexchtime;sym:`VOD;market:`LSE;price:ranprice;quantity:ranquantity;Side:ranside)
tradesVOD:`date`time xasc tradesVOD

randomnumber: 1100000+ (1?100000)
ranprice: 3548.10+(randomnumber[0]?2001)%100
randate:2017.10.17+randomnumber[0]?31
rantime:13:30:00.000000000 + randomnumber[0]?06:30:00.000000000
ranexchtime:rantime + randomnumber[0]?00:00:00.100000000
ranquantity:100*1+randomnumber[0]?1000
ranside:randomnumber[0]?2
tradesAAPL:([] date:randate;time:rantime;exchTime:ranexchtime;sym:`AAPL;market:`NASDAQ;price:ranprice;quantity:ranquantity;Side:ranside)
tradesAAPL: `date`time xasc tradesAAPL

randomnumber: 1100000+ (1?100000)
ranprice: 2584.10+(randomnumber[0]?2001)%100
randate:2017.10.17+randomnumber[0]?31
rantime:13:30:00.000000000 + randomnumber[0]?06:30:00.000000000
ranexchtime:rantime + randomnumber[0]?00:00:00.100000000
ranquantity:100*1+randomnumber[0]?1000
ranside:randomnumber[0]?2
tradesHSBC:([] date:randate;time:rantime;exchTime:ranexchtime;sym:`HSBA;market:`LSE;price:ranprice;quantity:ranquantity;Side:ranside)
tradesHSBC: `date`time xasc tradesHSBC

bucketStats::{timePeriod: x;select minimum: min price,maximum: max price,average: avg price by date,timePeriod xbar exchTime.minute,market from tradesVOD}
