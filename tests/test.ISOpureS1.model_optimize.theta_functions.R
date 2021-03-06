# test.ISOpureS1.model_optimize.theta_functions.R #################################################
# Testing script for functions needed in the optimilzation of mm in Step 1
# Test theta separately since it takes a while...
#
# The functions are of the form ISOpureS1.model_optimize.---
# (theta)
#   theta_loglikelihood
#   theta_deriv_loglikelihood

# LOAD DATA #######################################################################################
# load library 
library(ISOpureR);

# load the data from that path
data.path <-  paste0(file.path(system.file(package = "ISOpureR"), 'extdata', 'Beer'));  
load(file.path(data.path , 'beer.tumordata.250.transcripts.30.patients.RData'));
load(file.path(data.path, 'beer.ISOpureS1model.250.transcripts.30.patients.RData'));

# the normaldata and tumourdata should be matrices
beer.tumordata <- as.matrix(beer.tumordata);

# TEST THETA FUNCTIONS ############################################################################

# inputs needed for theta functions
# initial value of theta (this is testing just patient 1)
ww <- t(ISOpureS1model$theta_weights[1, ,drop=F])

# test theta functions (just for patient 1, that's the third entry)
ISOpureS1.model_optimize.theta.theta_loglikelihood(ww, beer.tumordata, 1, ISOpureS1model);
ISOpureS1.model_optimize.theta.theta_deriv_loglikelihood(ww, beer.tumordata, 1, ISOpureS1model);

# remove parameters used in the test
rm(K, ww);
