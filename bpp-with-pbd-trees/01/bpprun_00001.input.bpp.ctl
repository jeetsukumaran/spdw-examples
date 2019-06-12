
          seed =  -1

       seqfile = bpprun_00001.input.chars.txt
      Imapfile = bpprun_00001.input.imap.txt
       outfile = bpprun_00001.results.out.txt
      mcmcfile = bpprun_00001.results.mcmc.txt

* speciesdelimitation = 0 * fixed species tree
* speciesdelimitation = 1 0 2    * species delimitation rjMCMC algorithm0 and finetune(e)
  speciesdelimitation = 1 1 2 1 * species delimitation rjMCMC algorithm1 finetune (a m)
          speciestree = 0        * species tree NNI/SPR
*        speciestree = 1  0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio


     speciesmodelprior = 1         * 0: uniform labeled histories; 1:uniform rooted trees

  species&tree = 5  S1.1 S1.4 S2.2 S3.3 S3.5
                     2 2 2 2 2
                 ((S1.1,S1.4),(S2.2,(S3.3,S3.5)));


       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 1    * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3.0 8e-05   # invgamma(a, b) for theta, mean = 4e-05
      tauprior = 3.0   6.95491192616244e-06       # invgamma(a, b) for root tau & Dirichlet(a) for other tau's, mean = 3.47745596308122e-06; root age (raw, unscaled) = 34.7745596308122

      finetune =  1: 3 0.003 0.002 0.00002 0.005 0.9 0.001 0.001 # finetune for GBtj, GBspr, theta, tau, mix

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 4000
      sampfreq = 100
       nsample = 1000

