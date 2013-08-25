# Test Step 1 of ISOpure using the saved data

# load library 
library(ISOpureR);

# load the data from that path
data.path <-  paste0(file.path(system.file(package = "ISOpureR"), 'extdata', 'Beer'));  
load(file.path(data.path , 'beer.tumordata.2500.transcripts.RData'));
load(file.path(data.path , 'beer.normaldata.2500.transcripts.RData'));

# the normaldata and tumourdata should be matrices
beer.tumordata <- as.matrix(beer.tumordata);
beer.normaldata <- as.matrix(beer.normaldata);

# run step 1 of ISOpureR
ISOpureS1model <- ISOpureS1.model_core.learnmodel(beer.tumordata, beer.normaldata);