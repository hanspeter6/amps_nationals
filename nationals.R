# here i want to focus on constructing vectors of variables that are consistent
# over the period of study and only national. Although still using 2002 as basis for variable selection.
# want to include full sets (ie not simple) and more granulated internet variables.
# need to exlude set05 for this... has no internet details.
# here will 

## want to read in the various datasets

# full sets
set02 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2002/set02.rds")
# set05 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2005/set05.rds")
set08 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2008/set08.rds")
set10 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2010/set10.rds")
set12 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2012/set12.rds")
set14 <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2014/set14.rds")

# simple
set02_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2002/set02_simple.rds")
# set05_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2005/set05_simple.rds")
set08_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2008/set08_simple.rds")
set10_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2010/set10_simple.rds")
set12_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2012/set12_simple.rds")
set14_simple <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2014/set14_simple.rds")

# simple_print
set02_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2002/set02_simple_print.rds")
# set05_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2005/set05_simple_print.rds")
set08_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2008/set08_simple_print.rds")
set10_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2010/set10_simple_print.rds")
set12_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2012/set12_simple_print.rds")
set14_simple_print <- readRDS("/Users/hans-peterbakker/Dropbox/Statistics/UCTDataScience/Thesis/amps_2014/set14_simple_print.rds")

# ## want to create a national products only set that can be applied to all the sets
# # comparing and contrasting:
# names(set05)[which(!names(set05) %in% names(set02))]
# names(set02)[which(!names(set02) %in% names(set05))]
# 
# names(set08)[which(!names(set08) %in% names(set05))]
# names(set05)[which(!names(set05) %in% names(set08))]
# 
# names(set10)[which(!names(set10) %in% names(set08))]
# names(set08)[which(!names(set08) %in% names(set10))]
# 
# names(set12)[which(!names(set12) %in% names(set10))]
# names(set10)[which(!names(set10) %in% names(set12))]
# 
# names(set14)[which(!names(set14) %in% names(set12))]
# names(set12)[which(!names(set12) %in% names(set14))]

# creating a national products only set:

# nationals list :
nationals <- c("Business.Day",
               "Daily.Sun",
               "Mail.n.Guardian",
               "Rapport",
               "The.Sunday.Independent",
               "Sunday.Times",
               "The.Times",
               "Soccer.Laduma",
               "Drum",
               "Huisgenoot",
               "You",
               "Kickoff",
               "Bona",
               "Car",
               "Cosmopolitan",
               "FHM",
               "Getaway",
               "Sarie",
               "Topcar",
               "X5FM",
               "Metro.FM",
               "RSG",
               "e.tv",
               "SABC.1",
               "SABC.2",
               "SABC.3",
               "DSTV",
               "int_print",
               "int_radio",
               "int_news",
               "int_social",
               "int_search")

# for full
set02_nat <- data.frame(cbind(set02[,1:21], set02[,which(names(set02) %in% nationals)]   ))     
# set05_nat <- data.frame(cbind(set05[,1:19], set05[,which(names(set05) %in% nationals)]   ))     
set08_nat <- data.frame(cbind(set08[,1:23], set08[,which(names(set08) %in% nationals)]   ))     
set10_nat <- data.frame(cbind(set10[,1:23], set10[,which(names(set10) %in% nationals)]   ))     
set12_nat <- data.frame(cbind(set12[,1:23], set12[,which(names(set12) %in% nationals)]   ))     
set14_nat <- data.frame(cbind(set14[,1:23], set14[,which(names(set14) %in% nationals)]   ))     

# for simple
set02_nat_simple <- data.frame(cbind(set02_simple[,1:21], set02_simple[,which(names(set02_simple) %in% nationals)]   ))     
# set05_nat_simple <- data.frame(cbind(set05_simple[,1:19], set05_simple[,which(names(set05_simple) %in% nationals)]   ))     
set08_nat_simple <- data.frame(cbind(set08_simple[,1:23], set08_simple[,which(names(set08_simple) %in% nationals)]   ))     
set10_nat_simple <- data.frame(cbind(set10_simple[,1:23], set10_simple[,which(names(set10_simple) %in% nationals)]   ))     
set12_nat_simple <- data.frame(cbind(set12_simple[,1:23], set12_simple[,which(names(set12_simple) %in% nationals)]   ))     
set14_nat_simple <- data.frame(cbind(set14_simple[,1:23], set14_simple[,which(names(set14_simple) %in% nationals)]   ))     

# for simple_print
set02_nat_simple_print <- data.frame(cbind(set02_simple_print[,1:21], set02_simple_print[,which(names(set02_simple_print) %in% nationals)]   ))     
# set05_nat_simple_print <- data.frame(cbind(set05_simple_print[,1:19], set05_simple_print[,which(names(set05_simple_print) %in% nationals)]   ))     
set08_nat_simple_print <- data.frame(cbind(set08_simple_print[,1:23], set08_simple_print[,which(names(set08_simple_print) %in% nationals)]   ))     
set10_nat_simple_print <- data.frame(cbind(set10_simple_print[,1:23], set10_simple_print[,which(names(set10_simple_print) %in% nationals)]   ))     
set12_nat_simple_print <- data.frame(cbind(set12_simple_print[,1:23], set12_simple_print[,which(names(set12_simple_print) %in% nationals)]   ))     
set14_nat_simple_print <- data.frame(cbind(set14_simple_print[,1:23], set14_simple_print[,which(names(set14_simple_print) %in% nationals)]   ))     


# save them
saveRDS(set02_nat, "set02_nat.rds")
# saveRDS(set05_nat, "set05_nat.rds")
saveRDS(set08_nat, "set08_nat.rds")
saveRDS(set10_nat, "set10_nat.rds")
saveRDS(set12_nat, "set12_nat.rds")
saveRDS(set14_nat, "set14_nat.rds")

saveRDS(set02_nat_simple, "set02_nat_simple.rds")
# saveRDS(set05_nat_simple, "set05_nat_simple.rds")
saveRDS(set08_nat_simple, "set08_nat_simple.rds")
saveRDS(set10_nat_simple, "set10_nat_simple.rds")
saveRDS(set12_nat_simple, "set12_nat_simple.rds")
saveRDS(set14_nat_simple, "set14_nat_simple.rds")

saveRDS(set02_nat_simple_print, "set02_nat_simple_print.rds")
# saveRDS(set05_nat_simple_print, "set05_nat_simple_print.rds")
saveRDS(set08_nat_simple_print, "set08_nat_simple_print.rds")
saveRDS(set10_nat_simple_print, "set10_nat_simple_print.rds")
saveRDS(set12_nat_simple_print, "set12_nat_simple_print.rds")
saveRDS(set14_nat_simple_print, "set14_nat_simple_print.rds")





# read them again (for use later...)
set02_nat <- readRDS("set02_nat.rds")

set08_nat <- readRDS("set08_nat.rds")
set10_nat <- readRDS("set10_nat.rds")
set12_nat <- readRDS("set12_nat.rds")
set14_nat <- readRDS("set14_nat.rds")

set02_nat_simple <- readRDS("set02_nat_simple.rds")

set08_nat_simple <- readRDS("set08_nat_simple.rds")
set10_nat_simple <- readRDS("set10_nat_simple.rds")
set12_nat_simple <- readRDS("set12_nat_simple.rds")
set14_nat_simple <- readRDS("set14_nat_simple.rds")

set02_nat_simple_print <- readRDS("set02_nat_simple_print.rds")

set08_nat_simple_print <- readRDS("set08_nat_simple_print.rds")
set10_nat_simple_print <- readRDS("set10_nat_simple_print.rds")
set12_nat_simple_print <- readRDS("set12_nat_simple_print.rds")
set14_nat_simple_print <- readRDS("set14_nat_simple_print.rds")

# define minimum (based on 2002 national products only) to ensure same variables...
nat_names <- names(set02_nat[22:ncol(set02_nat)])
nat_names <- nat_names[-14] # get rid of FHM which disappears in 2014

## define min sets '02 as basis (ie would not include Daily Sun. Can consider using 2005 as basis and excluding 2002???)
# for full
set02_min <- data.frame(cbind(set02[,1:21], set02_nat[,which(names(set02_nat) %in% nat_names)]   ))
# set05_min <- data.frame(cbind(set05[,1:19], set05_nat[,which(names(set05_nat) %in% nat_names)]   ))     
set08_min <- data.frame(cbind(set08[,1:23], set08_nat[,which(names(set08_nat) %in% nat_names)]   ))     
set10_min <- data.frame(cbind(set10[,1:23], set10_nat[,which(names(set10_nat) %in% nat_names)]   ))     
set12_min <- data.frame(cbind(set12[,1:23], set12_nat[,which(names(set12_nat) %in% nat_names)]   ))     
set14_min <- data.frame(cbind(set14[,1:23], set14_nat[,which(names(set14_nat) %in% nat_names)]   ))     

# for simple
set02_min_simple <- data.frame(cbind(set02_simple[,1:21], set02_nat_simple[,which(names(set02_nat_simple) %in% nat_names)]   ))
# set05_min_simple <- data.frame(cbind(set05_simple[,1:19], set05_nat_simple[,which(names(set05_nat_simple) %in% nat_names)]   ))     
set08_min_simple <- data.frame(cbind(set08_simple[,1:23], set08_nat_simple[,which(names(set08_nat_simple) %in% nat_names)]   ))     
set10_min_simple <- data.frame(cbind(set10_simple[,1:23], set10_nat_simple[,which(names(set10_nat_simple) %in% nat_names)]   ))     
set12_min_simple <- data.frame(cbind(set12_simple[,1:23], set12_nat_simple[,which(names(set12_nat_simple) %in% nat_names)]   ))     
set14_min_simple <- data.frame(cbind(set14_simple[,1:23], set14_nat_simple[,which(names(set14_nat_simple) %in% nat_names)]   ))     

# for simple_print
set02_min_simple_print <- data.frame(cbind(set02_simple_print[,1:21], set02_nat_simple_print[,which(names(set02_nat_simple_print) %in% nat_names)]   ))
# set05_min_simple_print <- data.frame(cbind(set05_simple_print[,1:19], set05_nat_simple_print[,which(names(set05_nat_simple_print) %in% nat_names)]   ))     
set08_min_simple_print <- data.frame(cbind(set08_simple_print[,1:23], set08_nat_simple_print[,which(names(set08_nat_simple_print) %in% nat_names)]   ))     
set10_min_simple_print <- data.frame(cbind(set10_simple_print[,1:23], set10_nat_simple_print[,which(names(set10_nat_simple_print) %in% nat_names)]   ))     
set12_min_simple_print <- data.frame(cbind(set12_simple_print[,1:23], set12_nat_simple_print[,which(names(set12_nat_simple_print) %in% nat_names)]   ))     
set14_min_simple_print <- data.frame(cbind(set14_simple_print[,1:23], set14_nat_simple_print[,which(names(set14_nat_simple_print) %in% nat_names)]   ))     


## save min sets

# full sets
saveRDS(set02_min, "set02_min.rds")
# saveRDS(set05_min, "set05_min.rds")
saveRDS(set08_min, "set08_min.rds")
saveRDS(set10_min, "set10_min.rds")
saveRDS(set12_min, "set12_min.rds")
saveRDS(set14_min, "set14_min.rds")

saveRDS(set02_min_simple, "set02_min_simple.rds")
# saveRDS(set05_min_simple, "set05_min_simple.rds")
saveRDS(set08_min_simple, "set08_min_simple.rds")
saveRDS(set10_min_simple, "set10_min_simple.rds")
saveRDS(set12_min_simple, "set12_min_simple.rds")
saveRDS(set14_min_simple, "set14_min_simple.rds")

saveRDS(set02_min_simple_print, "set02_min_simple_print.rds")
# saveRDS(set05_min_simple_print, "set05_min_simple_print.rds")
saveRDS(set08_min_simple_print, "set08_min_simple_print.rds")
saveRDS(set10_min_simple_print, "set10_min_simple_print.rds")
saveRDS(set12_min_simple_print, "set12_min_simple_print.rds")
saveRDS(set14_min_simple_print, "set14_min_simple_print.rds")


