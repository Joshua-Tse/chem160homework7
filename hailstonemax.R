

seqmax <-c()
seqlen<- c()

for (i in 1:1000){
n<-i
maxval <-0
counter<-1
	while (n != 1) {
  		if (n%%2==0) {
    		n<-as.integer(n/2)
  		} else {
  		  n<-as.integer(n*3+1)
 		}

if (n > maxval) {
maxval <- n
}
counter <-counter+1
}
	seqmax <- append (seqmax,maxval)
	seqlen<-append(seqlen,counter)
}
png("seqmax.png")
plot(seqmax)

dev.off()
png("seqlen.png")
plot(seqlen)

dev.off()




