# W3BPN
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPN.txt", header=F, sep="\t")
# dimensions = 
extraDF <- as.data.frame(extra[2:7284,])
colnames(extraDF) <- extraDF[1,]
library(dplyr)
select(extraDF, matches("YU2reference"))

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPN_YU2.csv")

Avg_div_per_window_W3BPN <- extra[,6164:6165]
write.csv(Avg_div_per_window_W3BPN, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPN_AVG_DIV_PER_WNDW.csv")

# done

# W3BPP
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPP.txt", header=F, sep="\t")
# dimensions = 8661 x 6645
extraDF <- as.data.frame(extra[2:8661,])
colnames(extraDF) <- extraDF[1,]

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPP_YU2.csv")

Avg_div_per_window_W3BPP <- extra[,6644:6645]
write.csv(Avg_div_per_window_W3BPP, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPP_AVG_DIV_PER_WNDW.csv")

# done

# W5BPN
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPN.txt", header=F, sep="\t")
dim(extra)
# dimensions = 9139 x 10305
extraDF <- as.data.frame(extra[2:9139,])
colnames(extraDF) <- extraDF[1,]

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPN_YU2.csv")

Avg_div_per_window_W5BPN <- extra[,10304:10305]
write.csv(Avg_div_per_window_W5BPN, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPN_AVG_DIV_PER_WNDW.csv")

# W5BPP
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPP.txt", header=F, sep="\t")
dim(extra)
# dimensions = 9462 x 11993
extraDF <- as.data.frame(extra[2:9462,])
colnames(extraDF) <- extraDF[1,]

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPP_YU2.csv")

Avg_div_per_window_W5BPP <- extra[,11992:11993]
write.csv(Avg_div_per_window_W5BPP, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPP_AVG_DIV_PER_WNDW.csv")

# W7BPN
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPN.txt", header=F, sep="\t")
dim(extra)
# dimensions = 9036 x 9509
extraDF <- as.data.frame(extra[2:9036,])
colnames(extraDF) <- extraDF[1,]

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPN_YU2.csv")

Avg_div_per_window_W7BPN <- extra[,9508:9509]
write.csv(Avg_div_per_window_W7BPN, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPN_AVG_DIV_PER_WNDW.csv")

# W7BPP
extra <- read.delim("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPP.txt", header=F, sep="\t")
dim(extra)
# dimensions = 9417 x 10509
extraDF <- as.data.frame(extra[2:9417,])
colnames(extraDF) <- extraDF[1,]

yu2s <- sapply("YU2reference", grep, colnames(extraDF), value = TRUE)
refOnly <- extraDF[,yu2s]
write.csv(refOnly,"/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPP_YU2.csv")

Avg_div_per_window_W7BPP <- extra[,10508:10509]
write.csv(Avg_div_per_window_W7BPP, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPP_AVG_DIV_PER_WNDW.csv")


# how to get averages
# W7BPN
vec <- as.numeric(extra[8,2:9507])
mean(vec[seq(1,length(vec),2)]) # S+
mean(vec[seq(2,length(vec),2)]) # S-

# Get Averages
W3BPN <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPN_YU2.csv")
W3BPN <- W3BPN[,2:157]
colnames(W3BPN) <- W3BPN[1,]
W3BPN <- W3BPN[3:7283,]
W3BPN_divergence_gaps <- apply(W3BPN, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W3BPN_divergence_NOgaps <- apply(W3BPN, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))

# Get Averages
W3BPP <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W3BPP_YU2.csv")
dim(W3BPP)
W3BPP <- W3BPP[,2:163]
colnames(W3BPP) <- W3BPP[1,]
W3BPP <- W3BPP[3:8660,]
W3BPP_divergence_gaps <- apply(W3BPP, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W3BPP_divergence_NOgaps <- apply(W3BPP, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))

# Get Averages
W5BPN <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPN_YU2.csv")
dim(W5BPN)
W5BPN <- W5BPN[,2:203]
colnames(W5BPN) <- W5BPN[1,]
W5BPN <- W5BPN[3:9138,]
W5BPN_divergence_gaps <- apply(W5BPN, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W5BPN_divergence_NOgaps <- apply(W5BPN, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))

# Get Averages
W5BPP <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W5BPP_YU2.csv")
dim(W5BPP)
W5BPP <- W5BPP[,2:219]
colnames(W5BPP) <- W5BPP[1,]
W5BPP <- W5BPP[3:9461,]
W5BPP_divergence_gaps <- apply(W5BPP, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W5BPP_divergence_NOgaps <- apply(W5BPP, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))

# Get Averages
W7BPN <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPN_YU2.csv")
dim(W7BPN)
W7BPN <- W7BPN[,2:195]
colnames(W7BPN) <- W7BPN[1,]
W7BPN <- W7BPN[3:9035,]
W7BPN_divergence_gaps <- apply(W7BPN, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W7BPN_divergence_NOgaps <- apply(W7BPN, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))

# Get Averages
W7BPP <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/W7BPP_YU2.csv")
dim(W7BPP)
W7BPP <- W7BPP[,2:205]
colnames(W7BPP) <- W7BPP[1,]
W7BPP <- W7BPP[3:9416,]
W7BPP_divergence_gaps <- apply(W7BPP, 1, function(vec) mean(as.numeric(vec)[seq(1,length(vec),2)]))
W7BPP_divergence_NOgaps <- apply(W7BPP, 1, function(vec) mean(as.numeric(vec)[seq(2,length(vec),2)]))


length(W7BPP_divergence_gaps) #9414
length(W7BPN_divergence_gaps) #9033
length(W5BPP_divergence_gaps) #9459
length(W5BPN_divergence_gaps) #9136
length(W3BPP_divergence_gaps) #8658
length(W3BPN_divergence_gaps) #7281

length(W7BPP_divergence_NOgaps) #9414
length(W7BPN_divergence_NOgaps) #9033
length(W5BPP_divergence_NOgaps) #9459
length(W5BPN_divergence_NOgaps) #9136
length(W3BPP_divergence_NOgaps) #8658
length(W3BPN_divergence_NOgaps) #7281

write.csv(W7BPP_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W7BPP_divergence_gaps.csv")
write.csv(W7BPP_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W7BPP_divergence_NOgaps.csv")
write.csv(W7BPN_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W7BPN_divergence_gaps.csv")
write.csv(W7BPN_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W7BPN_divergence_NOgaps.csv")

write.csv(W5BPP_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W5BPP_divergence_gaps.csv")
write.csv(W5BPP_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W5BPP_divergence_NOgaps.csv")
write.csv(W5BPN_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W5BPN_divergence_gaps.csv")
write.csv(W5BPN_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W5BPN_divergence_NOgaps.csv")

write.csv(W3BPP_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W3BPP_divergence_gaps.csv")
write.csv(W3BPP_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W3BPP_divergence_NOgaps.csv")
write.csv(W3BPN_divergence_gaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W3BPN_divergence_gaps.csv")
write.csv(W3BPN_divergence_NOgaps, "/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/W3BPN_divergence_NOgaps.csv")



divergence <- read.csv("/storage1/fs1/liang.shan/Active/Marilia_Seq/fasta/sdsw/avgs/divergence.csv")
lines <- c(rep("W3", 7280), rep("W3BP", 7280), rep("W5", 7280), rep("W5BP", 7280), rep("W7", 7280), rep("W7BP", 7280))
vals <- c(divergence$W3, divergence$W3BP, divergence$W5BPN, divergence$W5BP, divergence$W7, divergence$W7BP)
positions <- c(divergence$Position, divergence$Position, divergence$Position, divergence$Position, divergence$Position, divergence$Position)
# combine into df
df <- data.frame(week = lines, divergence = vals, position = positions)
# linear regression
library(ggplot2)
ggplot(df, aes(x=position, y=divergence, col=week)) + geom_point() +
  geom_smooth(method="lm", se=FALSE)








