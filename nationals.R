# here i want to focus on constructing vectors of variables that are consistent
# over the period of study and only national. Although still using 2002 as basis for variable selection.
# want to include full sets (ie not simple) and more granulated internet variables.
# need to exlude set05 for this... has no internet details.
# also dont forget that set08 calculates print engagement differently...

# want to read in the full sets
set02 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2002/set02.rds")
# set05 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2005/set05.rds")
set08 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2008/set08.rds")
set10 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2010/set10.rds")
set12 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2012/set12.rds")
set14 <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2014/set14.rds")

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

set02_nat <- data.frame(cbind(set02[,1:19], set02[,which(names(set02) %in% nationals)]   ))     
# set05_nat <- data.frame(cbind(set05[,1:19], set05[,which(names(set05) %in% nationals)]   ))     
set08_nat <- data.frame(cbind(set08[,1:21], set08[,which(names(set08) %in% nationals)]   ))     
set10_nat <- data.frame(cbind(set10[,1:21], set10[,which(names(set10) %in% nationals)]   ))     
set12_nat <- data.frame(cbind(set12[,1:21], set12[,which(names(set12) %in% nationals)]   ))     
set14_nat <- data.frame(cbind(set14[,1:21], set14[,which(names(set14) %in% nationals)]   ))     

# save them
saveRDS(set02_nat, "set02_nat.rds")
# saveRDS(set05_nat, "set05_nat.rds")
saveRDS(set08_nat, "set08_nat.rds")
saveRDS(set10_nat, "set10_nat.rds")
saveRDS(set12_nat, "set12_nat.rds")
saveRDS(set14_nat, "set14_nat.rds")

# define minimum (based on 2002 national products only) to ensure same variables...
nat_names_02 <- names(set02_nat[20:ncol(set02_nat)])
nat_names_02 <- nat_names_02[-14] # get rid of FHM which disappears in 2014

# define min sets '02 as basis (ie would not include Daily Sun. Can consider using 2005 as basis and excluding 2002???)
set02_min <- data.frame(cbind(set02[,1:19], set02_nat[,which(names(set02_nat) %in% nat_names_02)]   ))
# set05_min <- data.frame(cbind(set05[,1:19], set05_nat[,which(names(set05_nat) %in% nat_names_02)]   ))     
set08_min <- data.frame(cbind(set08[,1:21], set08_nat[,which(names(set08_nat) %in% nat_names_02)]   ))     
set10_min <- data.frame(cbind(set10[,1:21], set10_nat[,which(names(set10_nat) %in% nat_names_02)]   ))     
set12_min <- data.frame(cbind(set12[,1:21], set12_nat[,which(names(set12_nat) %in% nat_names_02)]   ))     
set14_min <- data.frame(cbind(set14[,1:21], set14_nat[,which(names(set14_nat) %in% nat_names_02)]   ))     

# save min sets
# save them
saveRDS(set02_min, "set02_min.rds")
# saveRDS(set05_min, "set05_min.rds")
saveRDS(set08_min, "set08_min.rds")
saveRDS(set10_min, "set10_min.rds")
saveRDS(set12_min, "set12_min.rds")
saveRDS(set14_min, "set14_min.rds")
