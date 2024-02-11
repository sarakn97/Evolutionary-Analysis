# DS/DN JANUARY 2024
df <- read.delim("/home/sara/Downloads/paml-4.10.7/jan_results/nef/yn00_nef_W7", header=T, sep="")
library(dplyr)
df_seq1 <- df %>% filter(df$seq..1 == 1)
write.csv(df_seq1, "/home/sara/Marilia/yn00_january/nef/nef_W7.csv")

plot(df_seq1$seq., df_seq1$dN, pch=19)                                
points(df_seq1$seq., df_seq1$dS, col = "red", pch = 19)                


# gag
gagw3 <- read.csv("/home/sara/Marilia/yn00_january/gag/gag_w3.csv")
gagw5 <- read.csv("/home/sara/Marilia/yn00_january/gag/gag_w5.csv")
gagw7 <- read.csv("/home/sara/Marilia/yn00_january/gag/gag_w7.csv")

gw3DS <- mean(gagw3$dS)
gw3DN <- mean(gagw3$dN)
gw5DS <- mean(gagw5$dS)
gw5DN <- mean(gagw5$dN)
gw7DS <- mean(gagw7$dS)
gw7DN <- mean(gagw7$dN)

dsg <- c(gw3DS, gw5DS, gw7DS,  gw3DN, gw5DN, gw7DN)
dng <- c("dS", "dS", "dS", "dN", "dN", "dN")
xg <- c("w3", "w5", "w7", "w3", "w5", "w7")

dfg <- data.frame(week = xg, dSdN = dng, value = dsg)

library(ggplot2)
data <- dfg
data$week <- ordered(data$week, levels=c("w3", "w5", "w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("GAG") +
  geom_point()

# pol
polw3 <- read.csv("/home/sara/Marilia/yn00_january/pol/pol_w3.csv")
polw5 <- read.csv("/home/sara/Marilia/yn00_january/pol/pol_w5.csv")
polw7 <- read.csv("/home/sara/Marilia/yn00_january/pol/pol_w7.csv")

pw3DS <- mean(polw3$dS)
pw3DN <- mean(polw3$dN)
pw5DS <- mean(polw5$dS)
pw5DN <- mean(polw5$dN)
pw7DS <- mean(polw7$dS)
pw7DN <- mean(polw7$dN)

dsp <- c(pw3DS, pw5DS, pw7DS, pw3DN, pw5DN, pw7DN)
dnp <- c("dS", "dS", "dS", "dN", "dN", "dN")
xp <- c("w3", "w5", "w7", "w3", "w5", "w7")

dfp <- data.frame(week = xp, dSdN = dnp, value = dsp)

library(ggplot2)
data <- dfp
data$week <- ordered(data$week, levels=c("w3", "w5", "w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("POL") +
  geom_point()

# env
envw3 <- read.csv("/home/sara/Marilia/yn00_january/env/env_w3.csv")
envw5 <- read.csv("/home/sara/Marilia/yn00_january/env/env_w5.csv")
envw7 <- read.csv("/home/sara/Marilia/yn00_january/env/env_w7.csv")

plot(envw5$seq., envw5$dN, pch=19)                                
points(envw5$seq., envw5$dS, col = "red", pch = 19)      

ew3DS <- mean(envw3$dS)
ew3DN <- mean(envw3$dN)
ew5DS <- mean(envw5$dS)
ew5DN <- mean(envw5$dN)
ew7DS <- mean(envw7$dS)
ew7DN <- mean(envw7$dN)

dse <- c(ew3DS, ew5DS, ew7DS, ew3DN, ew5DN,ew7DN)
dne <- c("dS", "dS", "dS", "dN", "dN", "dN")
xe <- c("w3", "w5", "w7", "w3", "w5", "w7")

dfe <- data.frame(week = xe, dSdN = dne, value = dse)

library(ggplot2)
data <- dfe
data$week <- ordered(data$week, levels=c("w3", "w5", "w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("ENV") +
  geom_point()

# nef
nefw3 <- read.csv("/home/sara/Marilia/yn00_january/nef/nef_W3.csv")
nefw5 <- read.csv("/home/sara/Marilia/yn00_january/nef/nef_W5.csv")
nefw7 <- read.csv("/home/sara/Marilia/yn00_january/nef/nef_W7.csv")

nw3DS <- mean(nefw3$dS)
nw3DN <- mean(nefw3$dN)
nw5DS <- mean(nefw5$dS)
nw5DN <- mean(nefw5$dN)
nw7DS <- mean(nefw7$dS)
nw7DN <- mean(nefw7$dN)

dsn <- c(nw3DS, nw5DS, nw7DS, nw3DN, nw5DN, nw7DN) 
dnn <- c("dS", "dS", "dS", "dN", "dN", "dN")
xn <- c("w3", "w5", "w7", "w3", "w5", "w7")

dfn <- data.frame(week = xn, dSdN = dnn, value = dsn)

library(ggplot2)
data <- dfn
data$week <- ordered(data$week, levels=c("w3", "w5", "w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("NEF") +
  geom_point()

# vif 
vifw3 <- read.csv("/home/sara/Marilia/yn00_january/vif/vif_w3.csv")
vifw5 <- read.csv("/home/sara/Marilia/yn00_january/vif/vif_w5.csv")
vifw7 <- read.csv("/home/sara/Marilia/yn00_january/vif/vif_w7.csv")

vfw3DS <- mean(vifw3$dS)
vfw3DN <- mean(vifw3$dN)
vfw5DS <- mean(vifw5$dS)
vfw5DN <- mean(vifw5$dN)
vfw7DS <- mean(vifw7$dS)
vfw7DN <- mean(vifw7$dN)

dsvf <- c(vfw3DS, vfw5DS, vfw7DS, vfw3DN, vfw5DN, vfw7DN)
dnvf <- c("dS", "dS", "dS", "dN", "dN", "dN")
xvf <- c("w3", "w5", "w7", "w3", "w5", "w7")

dfg <- data.frame(week = xvf, dSdN = dnvf, value = dsvf)

library(ggplot2)
data <- dfg
data$week <- ordered(data$week, levels=c("w3", "w5", "w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("VIF") +
  geom_point()

# vpr
vprw3 <- read.csv("/home/sara/Marilia/yn00_january/vpr/vpr_w3.csv")
vprw5 <- read.csv("/home/sara/Marilia/yn00_january/vpr/vpr_w5.csv")
vprw7 <- read.csv("/home/sara/Marilia/yn00_january/vpr/vpr_w7.csv")

vpw3DS <- mean(vprw3$dS)
vpw3DN <- mean(vprw3$dN)
vpw5DS <- mean(vprw5$dS)
vpw5DN <- mean(vprw5$dN)
vpw7DS <- mean(vprw7$dS)
vpw7DN <- mean(vprw7$dN)

dsvp <- c(vpw3DS, vpw5DS, vpw7DS, vpw3DN, vpw5DN, vpw7DN)
dnvp <- c("dS", "dS", "dS", "dN", "dN", "dN")
xvp <- c("w3", "w5", "w7", "w3", "w5", "w7")
dfvp <- data.frame(week = xvp, dSdN = dnvp, value = dsvp)

library(ggplot2)
data <- dfvp
data$week <- ordered(data$week, levels=c("w3", "w5","w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("VPR") +
  geom_point()

# vpu
vpuw3 <- read.csv("/home/sara/Marilia/yn00_january/vpu/vpu_W3_1.csv")
vpuw5 <- read.csv("/home/sara/Marilia/yn00_january/vpu/vpu_W5_1.csv")
vpuw7 <- read.csv("/home/sara/Marilia/yn00_january/vpu/vpu_W7_1.csv")

vuw3DS <- mean(vpuw3$dS)
vuw3DN <- mean(vpuw3$dN)
vuw5DS <- mean(vpuw5$dS)
vuw5DN <- mean(vpuw5$dN)
vuw7DS <- mean(vpuw7$dS)
vuw7DN <- mean(vpuw7$dN)

dsvu <- c(vuw3DS, vuw5DS, vuw7DS, vuw3DN, vuw5DN, vuw7DN)
dnvu <- c("dS", "dS", "dS", "dN", "dN", "dN")
xvu <- c("w3", "w5", "w7", "w3", "w5", "w7")
dfvu <- data.frame(week = xvu, dSdN = dnvu, value = dsvu)

library(ggplot2)
data <- dfvu
data$week <- ordered(data$week, levels=c("w3", "w5","w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("VPU") +
  geom_point()

# rev
revw3 <- read.csv("/home/sara/Marilia/yn00_january/rev/rev_w3.csv")
revw5 <- read.csv("/home/sara/Marilia/yn00_january/rev/rev_w5.csv")
revw7 <- read.csv("/home/sara/Marilia/yn00_january/rev/rev_w7.csv")

rw3DS <- mean(revw3$dS)
rw3DN <- mean(revw3$dN)
rw5DS <- mean(revw5$dS)
rw5DN <- mean(revw5$dN)
rw7DS <- mean(revw7$dS)
rw7DN <- mean(revw7$dN)

dsr <- c(rw3DS, rw5DS, rw7DS, rw3DN, rw5DN, rw7DN)
dnr <- c("dS", "dS", "dS", "dN", "dN", "dN")
xr <- c("w3", "w5", "w7", "w3", "w5", "w7")
dfr <- data.frame(week = xr, dSdN = dnr, value = dsr)

library(ggplot2)
data <- dfr
data$week <- ordered(data$week, levels=c("w3", "w5","w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("REV") +
  geom_point()

# tat1
tat1w3 <- read.csv("/home/sara/Marilia/yn00_january/tat1/tat1_w3.csv")
tat1w5 <- read.csv("/home/sara/Marilia/yn00_january/tat1/tat1_w5.csv")
tat1w7 <- read.csv("/home/sara/Marilia/yn00_january/tat1/tat1_w7.csv")

tw3DS <- mean(tat1w3$dS)
tw3DN <- mean(tat1w3$dN)
tw5DS <- mean(tat1w5$dS)
tw5DN <- mean(tat1w5$dN)
tw7DS <- mean(tat1w7$dS)
tw7DN <- mean(tat1w7$dN)

dst <- c(tw3DS, tw5DS, tw7DS, tw3DN, tw5DN, tw7DN)
dnt <- c("dS", "dS", "dS", "dN", "dN", "dN")
xt <- c("w3", "w5", "w7", "w3", "w5", "w7")
dft <- data.frame(week = xt, dSdN = dnt, value = dst)

library(ggplot2)
data <- dft
data$week <- ordered(data$week, levels=c("w3", "w5","w7"))
ggplot(data, aes(x=factor(week), y=value, color = dSdN, group=1)) + xlab("Week") + ylab("Value") + ggtitle("TAT1") +
  geom_point()

# ####### COMBINED PLOT
# ds <- c(gw3DS, gw3DS, gw5DS, gw5DS, gw7DS, gw7DS, gw3DN, gw3DN, gw5DN, gw5DN, gw7DN, gw7DN, pw3DS, pw3DS, pw5DS, pw5DS, pw7DS, pw7DS, pw3DN, pw3DN, pw5DN, pw5DN, pw7DN, pw7DN, ew3DS, ew3DS, ew5DS, ew5DS, ew7DS, ew7DS, ew3DN, ew3DN, ew5DN, ew5DN, ew7DN, ew7DN,
#         nw3DS, nw3DS, nw5DS, nw5DS, nw7DS, nw7DS, nw3DN, nw3DN, nw5DN, nw5DN, nw7DN, nw7DN, vfw3DS, vfw3DS, vfw5DS, vfw5DS, vfw7DS, vfw7DS, vfw3DN, vfw3DN, vfw5DN, vfw5DN, vfw7DN, vfw7DN, vpw3DS, vpw3DS, vpw5DS, vpw5DS, vpw7DS, vpw7DS, vpw3DN, vpw3DN, vpw5DN, vpw5DN, vpw7DN, vpw7DN)
# dn <- c("dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN", "dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN", "dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN", "dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN", "dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN", "dS", "dS", "dS", "dS", "dS", "dS", "dN", "dN", "dN", "dN", "dN", "dN")
# x <- c("w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7", "w3", "w3", "w5", "w5", "w7", "w7")
# prot <- c(rep("GAG", 12), rep("POL", 12), rep("ENV",12), rep("NEF",12), rep("VIF",12), rep("VPR",12))
# df <- data.frame(week = x, dSdN = dn, value = ds, protein = prot)
# 
# library(ggplot2)
# ggplot(data=df,aes(x=factor(week), y=value, color=protein, linetype=factor(dSdN), group = interaction(protein, dSdN))) + 
#   geom_line() +
#   ylab("Average dS/dN Rate") + xlab("Week") +
#   ggtitle("Synonymous & Non-Synonymous Substitution Rates")+
#   theme(legend.text = element_text(size = 12))
# 
# ####### COMBINED PLOT
# ds <- c(gagw3$dS, gagw3$dS, gagw5$dS, gagw5$dS, gagw7$dS, gagw7$dS, polw3$dS, polw3$dS, polw5$dS, polw5$dS, polw7$dS, polw7$dS, envw3$dS, envw3$dS, envw5$dS, envw5$dS, envw7$dS, envw7$dS, nefw3$dS, nefw3$dS, nefw5$dS, nefw5$dS,  nefw7$dS, nefw7$dS, vifw3$dS, vifw3$dS, vifw5$dS, vifw5$dS, vifw7$dS, vprw3$dS, vprw3$dS, vprw5$dS, vprw5$dS, vprw7$dS, vprw7$dS,
#         gagw3$dN, gagw3$dN, gagw5$dN, gagw5$dN, gagw7$dN, gagw7$dN, polw3$dN, polw3$dN, polw5$dN, polw5$dN, polw7$dN, polw7$dN, envw3$dN, envw3$dN, envw5$dN, envw5$dN, envw7$dN, envw7$dN, nefw3$dN, nefw3$dN, nefw5$dN, nefw5$dN,  nefw7$dN, nefw7$dN, vifw3$dN, vifw3$dN, vifw5$dN, vifw5$dN, vifw7$dN, vprw3$dN, vprw3$dN, vprw5$dN, vprw5$dN, vprw7$dN, vprw7$dN)
# 
# dn <- c(rep("dS", length(gagw3$dS)), rep("dS", length(gagw3$dS)), rep("dS", length(gagw5$dS)), rep("dS", length(gagw5$dS)), rep("dS", length(gagw7$dS)), rep("dS", length(gagw7$dS)),
#         rep("dS", length(polw3$dS)), rep("dS", length(polw3$dS)), rep("dS", length(polw5$dS)), rep("dS", length(polw5$dS)), rep("dS", length(polw7$dS)), rep("dS", length(polw7$dS)),
#         rep("dS", length(envw3$dS)), rep("dS", length(envw3$dS)), rep("dS", length(envw5$dS)), rep("dS", length(envw5$dS)), rep("dS", length(envw7$dS)), rep("dS", length(envw7$dS)),
#         rep("dS", length(nefw3$dS)), rep("dS", length(nefw3$dS)), rep("dS", length(nefw5$dS)), rep("dS", length(nefw5$dS)),  rep("dS", length(nefw7$dS)), rep("dS", length(nefw7$dS)),
#         rep("dS", length(vifw3$dS)), rep("dS", length(vifw3$dS)), rep("dS", length(vifw5$dS)), rep("dS", length(vifw5$dS)), rep("dS", length(vifw7$dS)),
#         rep("dS", length(vprw3$dS)), rep("dS", length(vprw3$dS)), rep("dS", length(vprw5$dS)), rep("dS", length(vprw5$dS)), rep("dS", length(vprw7$dS)), rep("dS", length(vprw7$dS)),
#         rep("dN", length(gagw3$dN)), rep("dN", length(gagw3$dN)), rep("dN", length(gagw5$dN)), rep("dN", length(gagw5$dN)), rep("dN", length(gagw7$dN)), rep("dN", length(gagw7$dN)),
#         rep("dN", length(polw3$dN)), rep("dN", length(polw3$dN)), rep("dN", length(polw5$dN)), rep("dN", length(polw5$dN)), rep("dN", length(polw7$dN)), rep("dN", length(polw7$dN)),
#         rep("dN", length(envw3$dN)), rep("dN", length(envw3$dN)), rep("dN", length(envw5$dN)), rep("dN", length(envw5$dN)), rep("dN", length(envw7$dN)), rep("dN", length(envw7$dN)),
#         rep("dN", length(nefw3$dN)), rep("dN", length(nefw3$dN)), rep("dN", length(nefw5$dN)), rep("dN", length(nefw5$dN)), rep("dN", length(nefw7$dN)), rep("dN", length(nefw7$dN)),
#         rep("dN", length(vifw3$dN)), rep("dN", length(vifw3$dN)), rep("dN", length(vifw5$dN)), rep("dN", length(vifw5$dN)), rep("dN", length(vifw7$dN)), 
#         rep("dN", length(vprw3$dN)), rep("dN", length(vprw3$dN)), rep("dN", length(vprw5$dN)), rep("dN", length(vprw5$dN)), rep("dN", length(vprw7$dN)), rep("dN", length(vprw7$dN)))
# 
# x <- c(rep("w3", length(gagw3$dS)), rep("w3", length(gagw3$dS)), rep("w5", length(gagw5$dS)), rep("w5", length(gagw5$dS)), rep("w7", length(gagw7$dS)), rep("w7", length(gagw7$dS)),
#        rep("w3", length(polw3$dS)), rep("w3", length(polw3$dS)), rep("w5", length(polw5$dS)), rep("w5", length(polw5$dS)), rep("w7", length(polw7$dS)), rep("w7", length(polw7$dS)),
#        rep("w3", length(envw3$dS)), rep("w3", length(envw3$dS)), rep("w5", length(envw5$dS)), rep("w5", length(envw5$dS)), rep("w7", length(envw7$dS)), rep("w7", length(envw7$dS)),
#        rep("w3", length(nefw3$dS)), rep("w3", length(nefw3$dS)), rep("w5", length(nefw5$dS)), rep("w5", length(nefw5$dS)),  rep("w7", length(nefw7$dS)),  rep("w7", length(nefw7$dS)),
#        rep("w3", length(vifw3$dS)), rep("w3", length(vifw3$dS)), rep("w5", length(vifw5$dS)), rep("w5", length(vifw5$dS)), rep("w7", length(vifw7$dS)),
#        rep("w3", length(vprw3$dS)), rep("w3", length(vprw3$dS)), rep("w5", length(vprw5$dS)), rep("w5", length(vprw5$dS)), rep("w7", length(vprw7$dS)), rep("w7", length(vprw7$dS)),
#        rep("w3", length(gagw3$dN)), rep("w3", length(gagw3$dN)), rep("w5", length(gagw5$dN)), rep("w5", length(gagw5$dN)), rep("w7", length(gagw7$dN)), rep("w7", length(gagw7$dN)),
#        rep("w3", length(polw3$dN)), rep("w3", length(polw3$dN)), rep("w5", length(polw5$dN)), rep("w5", length(polw5$dN)), rep("w7", length(polw7$dN)), rep("w7", length(polw7$dN)),
#        rep("w3", length(envw3$dN)), rep("w3", length(envw3$dN)), rep("w5", length(envw5$dN)), rep("w5", length(envw5$dN)), rep("w7", length(envw7$dN)), rep("w7", length(envw7$dN)),
#        rep("w3", length(nefw3$dN)), rep("w3", length(nefw3$dN)), rep("w5", length(nefw5$dN)), rep("w5", length(nefw5$dN)),  rep("w7", length(nefw7$dN)),  rep("w7", length(nefw7$dN)),
#        rep("w3", length(vifw3$dN)), rep("w3", length(vifw3$dN)), rep("w5", length(vifw5$dN)), rep("w5", length(vifw5$dN)), rep("w7", length(vifw7$dN)),
#        rep("w3", length(vprw3$dN)), rep("w3", length(vprw3$dN)), rep("w5", length(vprw5$dN)), rep("w5", length(vprw5$dN)), rep("w7", length(vprw7$dN)), rep("w7", length(vprw7$dN)))
# 
# prot <- c(rep("GAG", length(gagw3$dS)), rep("GAG", length(gagw3$dS)), rep("GAG", length(gagw5$dS)), rep("GAG", length(gagw5$dS)), rep("GAG", length(gagw7$dS)), rep("GAG", length(gagw7$dS)),
#           rep("POL", length(polw3$dS)), rep("POL", length(polw3$dS)), rep("POL", length(polw5$dS)), rep("POL", length(polw5$dS)), rep("POL", length(polw7$dS)), rep("POL", length(polw7$dS)),
#           rep("ENV", length(envw3$dS)), rep("ENV", length(envw3$dS)), rep("ENV", length(envw5$dS)), rep("ENV", length(envw5$dS)), rep("ENV", length(envw7$dS)), rep("ENV", length(envw7$dS)),
#           rep("NEF", length(nefw3$dS)), rep("NEF", length(nefw3$dS)), rep("NEF", length(nefw5$dS)), rep("NEF", length(nefw5$dS)),  rep("NEF", length(nefw7$dS)), rep("NEF", length(nefw7$dS)),
#           rep("VIF", length(vifw3$dS)), rep("VIF", length(vifw3$dS)), rep("VIF", length(vifw5$dS)), rep("VIF", length(vifw5$dS)), rep("VIF", length(vifw7$dS)),
#           rep("VPR", length(vprw3$dS)), rep("VPR", length(vprw3$dS)), rep("VPR", length(vprw5$dS)), rep("VPR", length(vprw5$dS)), rep("VPR", length(vprw7$dS)), rep("VPR", length(vprw7$dS)),
#           rep("GAG", length(gagw3$dN)), rep("GAG", length(gagw3$dN)), rep("GAG", length(gagw5$dN)), rep("GAG", length(gagw5$dN)), rep("GAG", length(gagw7$dN)), rep("GAG", length(gagw7$dN)),
#           rep("POL", length(polw3$dN)), rep("POL", length(polw3$dN)), rep("POL", length(polw5$dN)), rep("POL", length(polw5$dN)), rep("POL", length(polw7$dN)), rep("POL", length(polw7$dN)),
#           rep("ENV", length(envw3$dN)), rep("ENV", length(envw3$dN)), rep("ENV", length(envw5$dN)), rep("ENV", length(envw5$dN)), rep("ENV", length(envw7$dN)), rep("ENV", length(envw7$dN)),
#           rep("NEF", length(nefw3$dN)), rep("NEF", length(nefw3$dN)), rep("NEF", length(nefw5$dN)), rep("NEF", length(nefw5$dN)),  rep("NEF", length(nefw7$dN)), rep("NEF", length(nefw7$dN)),
#           rep("VIF", length(vifw3$dN)), rep("VIF", length(vifw3$dN)), rep("VIF", length(vifw5$dN)), rep("VIF", length(vifw5$dN)), rep("VIF", length(vifw7$dN)),
#           rep("VPR", length(vprw3$dN)), rep("VPR", length(vprw3$dN)), rep("VPR", length(vprw5$dN)), rep("VPR", length(vprw5$dN)), rep("VPR", length(vprw7$dN)), rep("VPR", length(vprw7$dN)))
# 
# df <- data.frame(week = x, dSdN = dn, value = ds, protein = prot)
# 
# 
# 
# p <-  ggplot(df, aes(x = factor(week), y = value, fill = dSdN)) +
#   geom_boxplot(alpha = 0.50) +
#   geom_point(aes(fill = dSdN), size = 3, shape = 21, position = position_jitterdodge()) +
#   theme(text = element_text(size = 16),
#         axis.title.x = element_blank(),
#         axis.title.y = element_blank(),
#         panel.grid.minor.x = element_blank(),
#         panel.grid.major.x = element_blank())
# 
# p + facet_grid(. ~ protein)


####### COMBINED PLOT
ds <- c(gw3DS, gw5DS, gw7DS, gw3DN, gw5DN, gw7DN, pw3DS, pw5DS, pw7DS, pw3DN, pw5DN, pw7DN, ew3DS, ew5DS, ew7DS, ew3DN, ew5DN,ew7DN, 
        nw3DS, nw5DS, nw7DS, nw3DN, nw5DN, nw7DN, vfw3DS, vfw5DS, vfw7DS, vfw3DN, vfw5DN, vfw7DN, vpw3DS, vpw5DS, vpw7DS, vpw3DN, vpw5DN, vpw7DN, 
        vuw3DS, vuw5DS, vuw7DS, vuw3DN, vuw5DN, vuw7DN, rw3DS, rw5DS, rw7DS, rw3DN, rw5DN, rw7DN, tw3DS, tw5DS, tw7DS, tw3DN, tw5DN, tw7DN)
dn <- c("dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN", "dS", "dS", "dS", "dN", "dN", "dN")
x <- c("w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7", "w3", "w5", "w7")
prot <- c(rep("GAG", 6), rep("POL", 6), rep("ENV",6), rep("NEF", 6), rep("VIF", 6), rep("VPR", 6), rep("VPU", 6), rep("REV", 6), rep("TAT1", 6))
df <- data.frame(week = x, dSdN = dn, value = ds, protein = prot)

library(ggplot2)
ggplot(data=df,aes(x=factor(week), y=value, color=protein, linetype=factor(dSdN), group = interaction(protein, dSdN))) + 
  geom_line() +
  ylab("Average dS/dN Rate") + xlab("Week") +
  ggtitle("Synonymous & Non-Synonymous Substitution Rates")+
  theme(legend.text = element_text(size = 12))

####### COMBINED PLOT
ds <- c(gagw3$dS, gagw5$dS, gagw7$dS, polw3$dS, polw5$dS, polw7$dS, envw3$dS, envw5$dS, envw7$dS, vifw3$dS, vifw5$dS, vifw7$dS, vprw3$dS, vprw5$dS, vprw7$dS, nefw3$dS, nefw5$dS, nefw7$dS, vpuw3$dS, vpuw5$dS, vpuw7$dS, revw3$dS, revw5$dS, revw7$dS, tat1w3$dS, tat1w5$dS, tat1w7$dS,
        gagw3$dN,  gagw5$dN, gagw7$dN,  polw3$dN, polw5$dN, polw7$dN, envw3$dN, envw5$dN, envw7$dN, vifw3$dN, vifw5$dN, vifw7$dN, vprw3$dN, vprw5$dN, vprw7$dN, nefw3$dN, nefw5$dN, nefw7$dN, vpuw3$dN, vpuw5$dN, vpuw7$dN, revw3$dN, revw5$dN, revw7$dN, tat1w3$dN, tat1w5$dN, tat1w7$dN)

dn <- c(rep("dS", length(gagw3$dS)), rep("dS", length(gagw5$dS)), rep("dS", length(gagw7$dS)),
        rep("dS", length(polw3$dS)), rep("dS", length(polw5$dS)), rep("dS", length(polw7$dS)),
        rep("dS", length(envw3$dS)), rep("dS", length(envw5$dS)), rep("dS", length(envw7$dS)),
        rep("dS", length(vifw3$dS)), rep("dS", length(vifw5$dS)), rep("dS", length(vifw7$dS)),
        rep("dS", length(vprw3$dS)), rep("dS", length(vprw5$dS)), rep("dS", length(vprw7$dS)),
        rep("dS", length(vpuw3$dS)), rep("dS", length(vpuw5$dS)), rep("dS", length(vpuw7$dS)),
        rep("dS", length(nefw3$dS)), rep("dS", length(nefw5$dS)), rep("dS", length(nefw7$dS)),
        rep("dS", length(revw3$dS)), rep("dS", length(revw5$dS)), rep("dS", length(revw7$dS)),
        rep("dS", length(tat1w3$dS)), rep("dS", length(tat1w5$dS)), rep("dS", length(tat1w7$dS)),
        rep("dN", length(gagw3$dN)), rep("dN", length(gagw5$dN)), rep("dN", length(gagw7$dN)),
        rep("dN", length(polw3$dN)), rep("dN", length(polw5$dN)), rep("dN", length(polw7$dN)),
        rep("dN", length(envw3$dN)), rep("dN", length(envw5$dN)), rep("dN", length(envw7$dN)),
        rep("dN", length(vifw3$dN)), rep("dN", length(vifw5$dN)), rep("dN", length(vifw7$dN)),
        rep("dN", length(vprw3$dN)), rep("dN", length(vprw5$dN)), rep("dN", length(vprw7$dN)),
        rep("dN", length(vpuw3$dN)), rep("dN", length(vpuw5$dN)), rep("dN", length(vpuw7$dN)),
        rep("dN", length(nefw3$dN)), rep("dN", length(nefw5$dN)), rep("dN", length(nefw7$dN)),
        rep("dN", length(revw3$dN)), rep("dN", length(revw5$dN)), rep("dN", length(revw7$dN)),
        rep("dN", length(tat1w3$dN)), rep("dN", length(tat1w5$dN)), rep("dN", length(tat1w7$dN)))

x <- c(rep("w3", length(gagw3$dS)), rep("w5", length(gagw5$dS)), rep("w7", length(gagw7$dS)),
       rep("w3", length(polw3$dS)), rep("w5", length(polw5$dS)), rep("w7", length(polw7$dS)),
       rep("w3", length(envw3$dS)), rep("w5", length(envw5$dS)), rep("w7", length(envw7$dS)),
       rep("w3", length(vifw3$dS)), rep("w5", length(vifw5$dS)), rep("w7", length(vifw7$dS)),
       rep("w3", length(vprw3$dS)), rep("w5", length(vprw5$dS)), rep("w7", length(vprw7$dS)),
       rep("w3", length(vpuw3$dS)), rep("w5", length(vpuw5$dS)), rep("w7", length(vpuw7$dS)),
       rep("w3", length(nefw3$dS)), rep("w5", length(nefw5$dS)), rep("w7", length(nefw7$dS)),
       rep("w3", length(revw3$dS)), rep("w5", length(revw5$dS)), rep("w7", length(revw7$dS)),
       rep("w3", length(tat1w3$dS)), rep("w5", length(tat1w5$dS)), rep("w7", length(tat1w7$dS)),
       rep("w3", length(gagw3$dN)), rep("w5", length(gagw5$dN)), rep("w7", length(gagw7$dN)),
       rep("w3", length(polw3$dN)), rep("w5", length(polw5$dN)), rep("w7", length(polw7$dN)),
       rep("w3", length(envw3$dN)), rep("w5", length(envw5$dN)), rep("w7", length(envw7$dN)),
       rep("w3", length(vifw3$dN)), rep("w5", length(vifw5$dN)), rep("w7", length(vifw7$dN)),
       rep("w3", length(vprw3$dN)), rep("w5", length(vprw5$dN)), rep("w7", length(vprw7$dN)),
       rep("w3", length(vpuw3$dN)), rep("w5", length(vpuw5$dN)), rep("w7", length(vpuw7$dN)),
       rep("w3", length(nefw3$dN)), rep("w5", length(nefw5$dN)), rep("w7", length(nefw7$dN)),
       rep("w3", length(revw3$dN)), rep("w5", length(revw5$dN)), rep("w7", length(revw7$dN)),
       rep("w3", length(tat1w3$dN)), rep("w5", length(tat1w5$dN)), rep("w7", length(tat1w7$dN)))

prot <- c(rep("GAG", length(gagw3$dS)), rep("GAG", length(gagw5$dS)), rep("GAG", length(gagw7$dS)),
          rep("POL", length(polw3$dS)), rep("POL", length(polw5$dS)), rep("POL", length(polw7$dS)),
          rep("ENV", length(envw3$dS)), rep("ENV", length(envw5$dS)), rep("ENV", length(envw7$dS)),
          rep("VIF", length(vifw3$dS)), rep("VIF", length(vifw5$dS)), rep("VIF", length(vifw7$dS)),
          rep("VPR", length(vprw3$dS)), rep("VPR", length(vprw5$dS)), rep("VPR", length(vprw7$dS)),
          rep("VPU", length(vpuw3$dS)), rep("VPU", length(vpuw5$dS)), rep("VPU", length(vpuw7$dS)),
          rep("NEF", length(nefw3$dS)), rep("NEF", length(nefw5$dS)), rep("NEF", length(nefw7$dS)),
          rep("REV", length(revw3$dS)), rep("REV", length(revw5$dS)), rep("REV", length(revw7$dS)),
          rep("TAT1", length(tat1w3$dS)), rep("TAT1", length(tat1w5$dS)), rep("TAT1", length(tat1w7$dS)),
          rep("GAG", length(gagw3$dN)), rep("GAG", length(gagw5$dN)), rep("GAG", length(gagw7$dN)),
          rep("POL", length(polw3$dN)), rep("POL", length(polw5$dN)), rep("POL", length(polw7$dN)),
          rep("ENV", length(envw3$dN)), rep("ENV", length(envw5$dN)), rep("ENV", length(envw7$dN)),
          rep("VIF", length(vifw3$dN)), rep("VIF", length(vifw5$dN)), rep("VIF", length(vifw7$dN)),
          rep("VPR", length(vprw3$dN)), rep("VPR", length(vprw5$dN)), rep("VPR", length(vprw7$dN)),
          rep("VPU", length(vpuw3$dN)), rep("VPU", length(vpuw5$dN)), rep("VPU", length(vpuw7$dN)),
          rep("NEF", length(nefw3$dN)), rep("NEF", length(nefw5$dN)), rep("NEF", length(nefw7$dN)),
          rep("REV", length(revw3$dN)), rep("REV", length(revw5$dN)), rep("REV", length(revw7$dN)),
          rep("TAT1", length(tat1w3$dN)), rep("TAT1", length(tat1w5$dN)), rep("TAT1", length(tat1w7$dN)))

df <- data.frame(week = x, dSdN = dn, value = ds, protein = prot)



p <-  ggplot(df, aes(x = factor(week), y = value, fill = dSdN)) +
  geom_boxplot(alpha = 0.50) +
  geom_point(aes(fill = dSdN), size = 3, shape = 21, position = position_jitterdodge()) +
  theme(text = element_text(size = 16),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank())

p + facet_grid(. ~ protein)




############################################# January 31 - tracking "super"mutants
# Add seq_name to data frame
## Fasta to CSV 
library(microseq)
fa <- readFasta(in.file = "/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/nefW7_AA.fa")
fa
w <- data.frame(header = fa$Header, seq = fa$Sequence)
write.csv(w,"/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/nefW7.csv")

env3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/envW3.csv")
env3 <- env3[-1,]
env5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/envW5.csv")
env5 <- env5[-1,]
env7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/envW7.csv")
env7 <- env7[-1,]

pol3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/polW3.csv")
pol3 <- pol3[-1,]
pol5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/polW5.csv")
pol5 <- pol5[-1,]
pol7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/polW7.csv")
pol7 <- pol7[-1,]

gag3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/gagW3.csv")
gag3 <- gag3[-1,]
gag5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/gagW5.csv")
gag5 <- gag5[-1,]
gag7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/gagW7.csv")
gag7 <- gag7[-1,]

nef3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/nefW3.csv")
nef3 <- nef3[-1,]
nef5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/nefW5.csv")
nef5 <- nef5[-1,]
nef7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/nefW7.csv")
nef7 <- nef7[-1,]

vif3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vifW3.csv")
vif3 <- vif3[-1,]
vif5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vifW5.csv")
vif5 <- vif5[-1,]
vif7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vifW7.csv")
vif7 <- vif7[-1,]

vpr3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vprW3.csv")
vpr3 <- vpr3[-1,]
vpr5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vprW5.csv")
vpr5 <- vpr5[-1,]
vpr7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vprW7.csv")
vpr7 <- vpr7[-1,]

rev3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/revW3.csv")
rev3 <- rev3[-1,]
rev5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/revW5.csv")
rev5 <- rev5[-1,]
rev7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/revW7.csv")
rev7 <- rev7[-1,]

vpu3 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vpuW3.csv")
vpu3 <- vpu3[-1,]
vpu5 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vpuW5.csv")
vpu5 <- vpu5[-1,]
vpu7 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/vpuW7.csv")
vpu7 <- vpu7[-1,]

tat13 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/tat1W3.csv")
tat13 <- tat13[-1,]
tat15 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/tat1W5.csv")
tat15 <- tat15[-1,]
tat17 <- read.csv("/home/sara/Marilia/individuals/proteins/MSAs/hypermut_removed/Analyzed/headers/tat1W7.csv")
tat17 <- tat17[-1,]

nefw3$seq_name <- nef3$header
nefw5$seq_name <- nef5$header
nefw7$seq_name <- nef7$header

envw3$seq_name <- env3$header
envw5$seq_name <- env5$header
envw7$seq_name <- env7$header

polw3$seq_name <- pol3$header
polw5$seq_name <- pol5$header
polw7$seq_name <- pol7$header

gagw3$seq_name <- gag3$header
gagw5$seq_name <- gag5$header
gagw7$seq_name <- gag7$header

vifw3$seq_name <- vif3$header
vifw5$seq_name <- vif5$header
vifw7$seq_name <- vif7$header

vprw3$seq_name <- vpr3$header
vprw5$seq_name <- vpr5$header
vprw7$seq_name <- vpr7$header

vpuw3$seq_name <- vpu3$header
vpuw5$seq_name <- vpu5$header
vpuw7$seq_name <- vpu7$header

revw3$seq_name <- rev3$header
revw5$seq_name <- rev5$header
revw7$seq_name <- rev7$header

tat1w3$seq_name <- tat13$header
tat1w5$seq_name <- tat15$header
tat1w7$seq_name <- tat17$header



# Construct data frame
dS <- c(nefw3$dS, nefw5$dS, nefw7$dS, polw3$dS, polw5$dS, polw7$dS, gagw3$dS, gagw5$dS, gagw7$dS, vifw3$dS, vifw5$dS, vifw7$dS, 
        envw3$dS, envw5$dS, envw7$dS, vprw3$dS, vprw5$dS, vprw7$dS, vpuw3$dS, vpuw5$dS, vpuw7$dS, revw3$dS, revw5$dS, revw7$dS, tat1w3$dS, tat1w5$dS, tat1w7$dS)
dN <- c(nefw3$dN, nefw5$dN, nefw7$dN, polw3$dN, polw5$dN, polw7$dN, gagw3$dN, gagw5$dN, gagw7$dN, vifw3$dN, vifw5$dN, vifw7$dN, 
        envw3$dN, envw5$dN, envw7$dN, vprw3$dN, vprw5$dN, vprw7$dN, vpuw3$dN, vpuw5$dN, vpuw7$dN, revw3$dN, revw5$dN, revw7$dN, tat1w3$dN, tat1w5$dN, tat1w7$dN)

week <- c(rep("W3", length(nefw3$dS)), rep("W5", length(nefw5$dS)), rep("W7", length(nefw7$dS)), rep("W3", length(polw3$dS)), rep("W5", length(polw5$dS)), rep("W7", length(polw7$dS)), rep("W3", length(gagw3$dS)), rep("W5", length(gagw5$dS)), rep("W7", length(gagw7$dS)),
          rep("W3", length(vifw3$dS)), rep("W5", length(vifw5$dS)), rep("W7", length(vifw7$dS)), rep("W3", length(envw3$dS)), rep("W5", length(envw5$dS)), rep("W7", length(envw7$dS)), rep("W3", length(vprw3$dS)), rep("W5", length(vprw5$dS)), rep("W7", length(vprw7$dS)),
          rep("W3", length(vpuw3$dS)), rep("W5", length(vpuw5$dS)), rep("W7", length(vpuw7$dS)), rep("W3", length(revw3$dS)), rep("W5", length(revw5$dS)), rep("W7", length(revw7$dS)), rep("W3", length(tat1w3$dS)), rep("W5", length(tat1w5$dS)), rep("W7", length(tat1w7$dS)))

prot <- c(rep("NEF", length(nefw3$dS)), rep("NEF", length(nefw5$dS)), rep("NEF", length(nefw7$dS)), rep("POL", length(polw3$dS)), rep("POL", length(polw5$dS)), rep("POL", length(polw7$dS)), rep("GAG", length(gagw3$dS)), rep("GAG", length(gagw5$dS)), rep("GAG", length(gagw7$dS)),
          rep("VIF", length(vifw3$dS)), rep("VIF", length(vifw5$dS)), rep("VIF", length(vifw7$dS)), rep("ENV", length(envw3$dS)), rep("ENV", length(envw5$dS)), rep("ENV", length(envw7$dS)), rep("VPR", length(vprw3$dS)), rep("VPR", length(vprw5$dS)), rep("VPR", length(vprw7$dS)),
          rep("VPU", length(vpuw3$dS)), rep("VPU", length(vpuw5$dS)), rep("VPU", length(vpuw7$dS)), rep("REV", length(revw3$dS)), rep("REV", length(revw5$dS)), rep("REV", length(revw7$dS)), rep("TAT1", length(tat1w3$dS)), rep("TAT1", length(tat1w5$dS)), rep("TAT1", length(tat1w7$dS)))

calc_dS <- c(rep("dS", length(nefw3$dS)), rep("dS", length(nefw5$dS)), rep("dS", length(nefw7$dS)), rep("dS", length(polw3$dS)), rep("dS", length(polw5$dS)), rep("dS", length(polw7$dS)), rep("dS", length(gagw3$dS)), rep("dS", length(gagw5$dS)), rep("dS", length(gagw7$dS)),
          rep("dS", length(vifw3$dS)), rep("dS", length(vifw5$dS)), rep("dS", length(vifw7$dS)), rep("dS", length(envw3$dS)), rep("dS", length(envw5$dS)), rep("dS", length(envw7$dS)), rep("dS", length(vprw3$dS)), rep("dS", length(vprw5$dS)), rep("dS", length(vprw7$dS)),
          rep("dS", length(vpuw3$dS)), rep("dS", length(vpuw5$dS)), rep("dS", length(vpuw7$dS)), rep("dS", length(revw3$dS)), rep("dS", length(revw5$dS)), rep("dS", length(revw7$dS)), rep("dS", length(tat1w3$dS)), rep("dS", length(tat1w5$dS)), rep("dS", length(tat1w7$dS)))
calc_dN <- c(rep("dN", length(nefw3$dN)), rep("dN", length(nefw5$dN)), rep("dN", length(nefw7$dN)), rep("dN", length(polw3$dN)), rep("dN", length(polw5$dN)), rep("dN", length(polw7$dN)), rep("dN", length(gagw3$dN)), rep("dN", length(gagw5$dN)), rep("dN", length(gagw7$dN)),
          rep("dN", length(vifw3$dN)), rep("dN", length(vifw5$dN)), rep("dN", length(vifw7$dN)), rep("dN", length(envw3$dN)), rep("dN", length(envw5$dN)), rep("dN", length(envw7$dN)), rep("dN", length(vprw3$dN)), rep("dN", length(vprw5$dN)), rep("dN", length(vprw7$dN)),
          rep("dN", length(vpuw3$dN)), rep("dN", length(vpuw5$dN)), rep("dN", length(vpuw7$dN)), rep("dN", length(revw3$dN)), rep("dN", length(revw5$dN)), rep("dN", length(revw7$dN)), rep("dN", length(tat1w3$dN)), rep("dN", length(tat1w5$dN)), rep("dN", length(tat1w7$dN)))

seq_name <- c(nefw3$seq_name, nefw5$seq_name, nefw7$seq_name, polw3$seq_name, polw5$seq_name, polw7$seq_name, gagw3$seq_name, gagw5$seq_name, gagw7$seq_name, vifw3$seq_name, vifw5$seq_name, vifw7$seq_name, 
        envw3$seq_name, envw5$seq_name, envw7$seq_name, vprw3$seq_name, vprw5$seq_name, vprw7$seq_name, vpuw3$seq_name, vpuw5$seq_name, vpuw7$seq_name, revw3$seq_name, revw5$seq_name, revw7$seq_name, tat1w3$seq_name, tat1w5$seq_name, tat1w7$seq_name)

df <- data.frame(week = week, dSdN = calc_dN, value = dN, protein = prot, seq = seq_name)
df <- data.frame(week = week, dSdN = calc_dS, value = dS, protein = prot, seq = seq_name)
# Construct data frame
# dS <- c(nefw3$dS, nefw5$dS, nefw7$dS, polw3$dS, polw5$dS, polw7$dS, gagw3$dS, gagw5$dS, gagw7$dS, vifw3$dS, vifw5$dS, vifw7$dS, envw3$dS, envw5$dS, envw7$dS, vprw3$dS, vprw5$dS, vprw7$dS)
# dN <- c(nefw3$dN, nefw5$dN, nefw7$dN, polw3$dN, polw5$dN, polw7$dN, gagw3$dN, gagw5$dN, gagw7$dN, vifw3$dN, vifw5$dN, vifw7$dN, envw3$dN, envw5$dN, envw7$dN, vprw3$dN, vprw5$dN, vprw7$dN)
# week <- c(rep("W3", length(nefw3$dN)), rep("W5", length(nefw5$dN)), rep("W7", length(nefw7$dN)), rep("W3", length(polw3$dN)), rep("W5", length(polw5$dN)), rep("W7", length(polw7$dN)), rep("W3", length(gagw3$dN)), rep("W5", length(gagw5$dN)), rep("W7", length(gagw7$dN)),
#           rep("W3", length(vifw3$dN)), rep("W5", length(vifw5$dN)), rep("W7", length(vifw7$dN)), rep("W3", length(envw3$dN)), rep("W5", length(envw5$dN)), rep("W7", length(envw7$dN)), rep("W3", length(vprw3$dN)), rep("W5", length(vprw5$dN)), rep("W7", length(vprw7$dN)))
# prot <- c(rep("NEF", length(nefw3$dN)), rep("NEF", length(nefw5$dN)), rep("NEF", length(nefw7$dN)), rep("POL", length(polw3$dN)), rep("POL", length(polw5$dN)), rep("POL", length(polw7$dN)), rep("GAG", length(gagw3$dN)), rep("GAG", length(gagw5$dN)), rep("GAG", length(gagw7$dN)),
#           rep("VIF", length(vifw3$dN)), rep("VIF", length(vifw5$dN)), rep("VIF", length(vifw7$dN)), rep("ENV", length(envw3$dN)), rep("ENV", length(envw5$dN)), rep("ENV", length(envw7$dN)), rep("VPR", length(vprw3$dN)), rep("VPR", length(vprw5$dN)), rep("VPR", length(vprw7$dN)))
# calc <- c(rep("dN", length(nefw3$dN)), rep("dN", length(nefw5$dN)), rep("dN", length(nefw7$dN)), rep("dN", length(polw3$dN)), rep("dN", length(polw5$dN)), rep("dN", length(polw7$dN)), rep("dN", length(gagw3$dN)), rep("dN", length(gagw5$dN)), rep("dN", length(gagw7$dN)),
#           rep("dN", length(vifw3$dN)), rep("dN", length(vifw5$dN)), rep("dN", length(vifw7$dN)), rep("dN", length(envw3$dN)), rep("dN", length(envw5$dN)), rep("dN", length(envw7$dN)), rep("dN", length(vprw3$dN)), rep("dN", length(vprw5$dN)), rep("dN", length(vprw7$dN)))
# seq <- c(nefw3$seq_name, nefw5$seq_names, nefw7$seq_names, polw3$seq_name, polw5$seq_name, polw7$seq_name, gagw3$seq_name, gagw5$seq_name, gagw7$seq_name, vifw3$seq_name, vifw5$seq_name, vifw7$seq_name, envw3$seq_name, envw5$seq_name, envw7$seq_name, vprw3$seq_name, vprw5$seq_name, vprw7$seq_name)

is.nan.data.frame <- function(x)
  do.call(cbind, lapply(x, is.nan))

dN_dS <- dN/dS
dN_dS[is.nan(dN_dS)] <- 0

df <- data.frame(week = week, dSdN = calc, value = dN_dS, protein = prot, seq = seq_name)
df$protein <- factor(df$protein, levels = c("GAG", "POL", "VIF", "ENV", "VPR", "NEF", "VPU", "TAT1", "REV"))


p <-  ggplot(df, aes(x = factor(week), y = value, fill = dSdN)) +
  geom_boxplot(alpha = 0.50) +
  geom_point(aes(fill = dSdN), size = 3, shape = 21, position = position_jitterdodge()) +
  theme(text = element_text(size = 16),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank())

p + facet_grid(. ~ protein)


library(ggplot2)
ggplot(data=df,aes(x=factor(protein, levels = c("GAG", "POL", "VIF", "ENV", "VPR","NEF", "VPU", "TAT1", "REV")), y=value, color=week)) + geom_point() +
  geom_line(data = df, aes(group = seq)) +
  ylab("dS Rate") + xlab("Protein") +
  ggtitle("Synonymous Mutation Rate")+
  theme(legend.text = element_text(size = 12))

+
  geom_line(data = summ, aes(group=supp), 
            position = position_dodge(width=0.75)) +
  
  library(ggplot2)
ggplot(data=df,aes(x=factor(week), y=value, color=protein, linetype=factor(dSdN), group = interaction(protein, dSdN))) + 
  geom_line() +
  ylab("Average dS/dN Rate") + xlab("Week") +
  ggtitle("Synonymous & Non-Synonymous Substitution Rates")+
  theme(legend.text = element_text(size = 12))



