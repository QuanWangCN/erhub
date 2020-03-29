day=c(0,rep(1,5),rep(3,5),rep(5,5),rep(7,5))
value=c(100,
        31.5,32.3,30.2,28.9,28.7,
        16.5,15.8,17.2,16.6,16.9,
        11.5,13.1,14.5,12.7,11,
        9.8,10.2,10.9,8.8,8.6)
xx=data.frame(day,value)
library(ggplot2)
ggplot(data=xx,mapping = aes(x=day, y=value))+geom_jitter()+
  geom_smooth(method = 'loess')+
  xlab("Time (Day)")+
  ylab("Preserved IHC (%)")+
  theme_bw()
pdf(file = "~/Desktop/ihc.pdf",width = 8/2.54,height = 8/2.54)
ggplot(data=xx,mapping = aes(x=day, y=value))+geom_jitter()+
  geom_smooth(method = 'loess')+
  xlab("Time (Day)")+
  ylab("Preserved IHC (%)")+
  theme_bw()
graphics.off()

sgn.day=c(rep(0,5),rep(5,5),rep(10,5),rep(15,5),rep(20,5),rep(25,5),rep(30,5),rep(45,5),rep(60,5))
sgn.n=c(3156,2988,3048,2996,3092,
        3106,3028,2978,2878,2958,
        3106,2928,2928,2816,2942,
        2800,2846,2778,2822,2748,
        2408,2588,2266,2474,2362,
        2206,2172,2242,2238,2168,
        2102,2088,2068,2112,2134,
        1858,1898,1876,1834,1828,
        1650,1688,1624,1586,1600)
xx=data.frame(sgn.day,sgn.n)
ggplot(data=xx,mapping = aes(x=sgn.day, y=sgn.n))+geom_jitter()+
  geom_smooth(method = 'loess')+
  xlab("Time (Day)")+
  ylab("Preserved SGN (/mm2)")+
  theme_bw()
pdf(file = "~/Desktop/sgn.pdf",width = 8/2.54,height = 8/2.54)
ggplot(data=xx,mapping = aes(x=sgn.day, y=sgn.n))+geom_jitter()+
  geom_smooth(method = 'loess')+
  xlab("Time (Day)")+
  ylab("Preserved SGN (/mm2)")+
  theme_bw()
graphics.off()