# here i want to focus on constructing vectors of variables that are consistent
# over the period of study and only national and using 2002 as basis for variable selection.
# makes it possible to keep all dataframe

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
        
# nationals list _simple:
nationals_simple <- c("Business.Day",
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

set02_nat_simple <- data.frame(cbind(set02_simple[,1:19], set02_simple[,which(names(set02_simple) %in% nationals_simple)]   ))     
set05_nat_simple <- data.frame(cbind(set05_simple[,1:19], set05_simple[,which(names(set05_simple) %in% nationals_simple)]   ))     
set08_nat_simple <- data.frame(cbind(set08_simple[,1:21], set08_simple[,which(names(set08_simple) %in% nationals_simple)]   ))     
set10_nat_simple <- data.frame(cbind(set10_simple[,1:21], set10_simple[,which(names(set10_simple) %in% nationals_simple)]   ))     
set12_nat_simple <- data.frame(cbind(set12_simple[,1:21], set12_simple[,which(names(set12_simple) %in% nationals_simple)]   ))     
set14_nat_simple <- data.frame(cbind(set14_simple[,1:21], set14_simple[,which(names(set14_simple) %in% nationals_simple)]   ))     

# save them
saveRDS(set02_nat_simple, "set02_nat_simple.rds")
saveRDS(set05_nat_simple, "set05_nat_simple.rds")
saveRDS(set08_nat_simple, "set08_nat_simple.rds")
saveRDS(set10_nat_simple, "set10_nat_simple.rds")
saveRDS(set12_nat_simple, "set12_nat_simple.rds")
saveRDS(set14_nat_simple, "set14_nat_simple.rds")

# define minimum (based on 2002 national products only) to ensure same variables...
nat_names_02_simple <- names(set02_nat_simple[20:ncol(set02_nat_simple)])
nat_names_02_simple <- nat_names_02_simple[-14] # get rid of FHM which disappears in 2014

# define min sets '02 as basis (ie would not include Daily Sun. Can consider using 2005 as basis and excluding 2002???)
set02_min_simple <- data.frame(cbind(set02_simple[,1:19], set02_nat_simple[,which(names(set02_nat_simple) %in% nat_names_02_simple)]   ))
set05_min_simple <- data.frame(cbind(set05_simple[,1:19], set05_nat_simple[,which(names(set05_nat_simple) %in% nat_names_02_simple)]   ))     
set08_min_simple <- data.frame(cbind(set08_simple[,1:21], set08_nat_simple[,which(names(set08_nat_simple) %in% nat_names_02_simple)]   ))     
set10_min_simple <- data.frame(cbind(set10_simple[,1:21], set10_nat_simple[,which(names(set10_nat_simple) %in% nat_names_02_simple)]   ))     
set12_min_simple <- data.frame(cbind(set12_simple[,1:21], set12_nat_simple[,which(names(set12_nat_simple) %in% nat_names_02_simple)]   ))     
set14_min_simple <- data.frame(cbind(set14_simple[,1:21], set14_nat_simple[,which(names(set14_nat_simple) %in% nat_names_02_simple)]   ))     

# save min sets
# save them
saveRDS(set02_min_simple, "set02_min_simple.rds")
saveRDS(set05_min_simple, "set05_min_simple.rds")
saveRDS(set08_min_simple, "set08_min_simple.rds")
saveRDS(set10_min_simple, "set10_min_simple.rds")
saveRDS(set12_min_simple, "set12_min_simple.rds")
saveRDS(set14_min_simple, "set14_min_simple.rds")
