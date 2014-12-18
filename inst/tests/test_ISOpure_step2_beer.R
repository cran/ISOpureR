# Test Step 2 of ISOpure using the saved data

# load library 
library(ISOpureR);

# load the data from that path
data.path <-  paste0(file.path(system.file(package = "ISOpureR"), 'extdata', 'Beer'));  
load(file.path(data.path , 'beer.tumordata.1000.transcripts.30.patients.RData'));
load(file.path(data.path , 'beer.normaldata.1000.transcripts.RData'));
load(file.path(data.path , 'beer.ISOpureS1model.1000.transcripts.30.patients.RData'));

# the normaldata and tumourdata should be matrices
beer.tumordata <- as.matrix(beer.tumordata);
beer.normaldata <- as.matrix(beer.normaldata);

# run step 2 of ISOpureR
ISOpureS2model <- ISOpureS2.model_core.learnmodel(beer.tumordata, beer.normaldata, ISOpureS1model);
