
          seed =  -1

       seqfile = bpprun_00001.input.chars.txt
      Imapfile = bpprun_00001.input.imap.txt
       outfile = run2.results.out.txt
      mcmcfile = run2.results.mcmc.txt

* speciesdelimitation = 0 * fixed species tree
* speciesdelimitation = 1 0 2    * species delimitation rjMCMC algorithm0 and finetune(e)
  speciesdelimitation = 1 1 2 1 * species delimitation rjMCMC algorithm1 finetune (a m)
          speciestree = 0        * species tree NNI/SPR
*        speciestree = 1  0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio


     speciesmodelprior = 1         * 0: uniform labeled histories; 1:uniform rooted trees

  species&tree = 5  T3 T1 T4 T5 T2
                     2 2 2 2 2
                 ((T3,(T1,(T4,T5))),T2);


       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 5    * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3.0 0.0008   # invgamma(a, b) for theta, mean = 0.0004
      tauprior = 3.0   4.0260538206846314e-07       # invgamma(a, b) for root tau & Dirichlet(a) for other tau's, mean = 2.0130269103423157e-07; root age (raw, unscaled) = 10.065134551711578

      finetune =  1: 3 0.003 0.002 0.00002 0.005 0.9 0.001 0.001 # finetune for GBtj, GBspr, theta, tau, mix

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 4000
      sampfreq = 100
       nsample = 1000

