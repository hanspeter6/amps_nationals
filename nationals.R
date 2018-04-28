# here i want to focus on constructing vectors of variables that are consistent
# over the period of study and only national.

# want to read in only the "simple versions"
set02_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2002/set02_simple.rds")
set05_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2005/set05_simple.rds")
set08_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2008/set08_simple.rds")
set10_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2010/set10_simple.rds")
set12_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2012/set12_simple.rds")
set14_simple <- readRDS("/Users/HansPeter/Dropbox/Statistics/UCTDataScience/Thesis/amps_2014/set14_simple.rds")

## want to create a national products only set that can be applied to all the sets
# comparing and contrasting:
names(set05_simple)[which(!names(set05_simple) %in% names(set02_simple))]
names(set02_simple)[which(!names(set02_simple) %in% names(set05_simple))]

names(set08_simple)[which(!names(set08_simple) %in% names(set05_simple))]
names(set05_simple)[which(!names(set05_simple) %in% names(set08_simple))]

names(set10_simple)[which(!names(set10_simple) %in% names(set08_simple))]
names(set08_simple)[which(!names(set08_simple) %in% names(set10_simple))]

names(set12_simple)[which(!names(set12_simple) %in% names(set10_simple))]
names(set10_simple)[which(!names(set10_simple) %in% names(set12_simple))]

names(set14_simple)[which(!names(set14_simple) %in% names(set12_simple))]
names(set12_simple)[which(!names(set12_simple) %in% names(set14_simple))]


# creating a national products only set:
        
# national list:
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
               "internet_eng")
set02_nat <- data.frame(cbind(set02_simple[,1:19], set02_simple[,which(names(set02_simple) %in% nationals)]   ))     
set05_nat <- data.frame(cbind(set05_simple[,1:19], set05_simple[,which(names(set05_simple) %in% nationals)]   ))     
set08_nat <- data.frame(cbind(set08_simple[,1:21], set08_simple[,which(names(set08_simple) %in% nationals)]   ))     
set10_nat <- data.frame(cbind(set10_simple[,1:21], set10_simple[,which(names(set10_simple) %in% nationals)]   ))     
set12_nat <- data.frame(cbind(set12_simple[,1:21], set12_simple[,which(names(set12_simple) %in% nationals)]   ))     
set14_nat <- data.frame(cbind(set14_simple[,1:21], set14_simple[,which(names(set14_simple) %in% nationals)]   ))     

# save them
saveRDS(set02_nat, "set02_nat.rds")
saveRDS(set05_nat, "set05_nat.rds")
saveRDS(set08_nat, "set08_nat.rds")
saveRDS(set10_nat, "set10_nat.rds")
saveRDS(set12_nat, "set12_nat.rds")
saveRDS(set14_nat, "set14_nat.rds")

# define minimum (based on 2002 national products only) to ensure same variables...
names_02 <- names(set02_nat[20:ncol(set02_nat)])
names_02 <- names_02[-14] # get rid of FHM which disappears in 2014

# define min sets
set02_min <- data.frame(cbind(set02_simple[,1:19], set02_nat[,which(names(set02_nat) %in% names_02)]   ))     
set05_min <- data.frame(cbind(set05_simple[,1:19], set05_nat[,which(names(set05_nat) %in% names_02)]   ))     
set08_min <- data.frame(cbind(set08_simple[,1:21], set08_nat[,which(names(set08_nat) %in% names_02)]   ))     
set10_min <- data.frame(cbind(set10_simple[,1:21], set10_nat[,which(names(set10_nat) %in% names_02)]   ))     
set12_min <- data.frame(cbind(set12_simple[,1:21], set12_nat[,which(names(set12_nat) %in% names_02)]   ))     
set14_min <- data.frame(cbind(set14_simple[,1:21], set14_nat[,which(names(set14_nat) %in% names_02)]   ))     

# save min sets
# save them
saveRDS(set02_min, "set02_min.rds")
saveRDS(set05_min, "set05_min.rds")
saveRDS(set08_min, "set08_min.rds")
saveRDS(set10_min, "set10_min.rds")
saveRDS(set12_min, "set12_min.rds")
saveRDS(set14_min, "set14_min.rds")