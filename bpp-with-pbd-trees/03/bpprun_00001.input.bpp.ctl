
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

  species&tree = 10  S1.1 S1.5 S1.8 S3.3 S3.9 S1.7 S2.4 S2.10 S1.2 S1.6
                     2 2 2 2 2 2 2 2 2 2
                 (((S1.1,(S1.5,S1.8)),(((S3.3,S3.9),S1.7),(S2.4,S2.10))),(S1.2,S1.6));


       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 1    * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3.0 0.08   # invgamma(a, b) for theta, mean = 0.04
      tauprior = 3.0   0.005473381977311749       # invgamma(a, b) for root tau & Dirichlet(a) for other tau's, mean = 0.0027366909886558746; root age (raw, unscaled) = 27.366909886558744

      finetune =  1: 3 0.003 0.002 0.00002 0.005 0.9 0.001 0.001 # finetune for GBtj, GBspr, theta, tau, mix

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 4000
      sampfreq = 100
       nsample = 1000

