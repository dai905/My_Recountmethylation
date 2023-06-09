% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cg_control_metrics.R
\name{get_crossreactive_cpgs}
\alias{get_crossreactive_cpgs}
\title{get_crossreactive_cpgs}
\usage{
get_crossreactive_cpgs(probeset = "all")
}
\arguments{
\item{probeset}{Specify the set of probes to filter ("all", "hm450k", "epic",
"chen", "pidlsey", "illumina").}
}
\value{
Vector of cross-reactive CpG probe IDs.
}
\description{
Get cross-reactive CpG probe IDs for Illumina BeadArray platforms.
}
\details{
Prior work showed significant cross-reactivity at subsets of CpG probes on 
Illumina's BeadArray platforms, including HM450K and EPIC. This was primarily due to 
the probe sequence, as the targeted 50-bp sequence can be either too short or too 
degenerate to bind a particular DNA region with high specificity. This can cause 
cross-reaction with off-target DNA locations, including at entirely different 
chromosomes than the target sequence. Consult the individual publication sources for 
details about the identification and consequences of cross-reactive CpG probes.

You can retrieve a cross-reactive probe set in a variety of ways. For instance, 
declare the publication source with either "chen" (for Chen et al 2013), "pidsley" 
(for Pidsley et al 2016), or "illumina" (for official Illumina documentation), or 
declare the platform category as either "all" (both HM450K and EPIC), "hm450k", or 
"epic."
}
\examples{
length(get_crossreactive_cpgs("all"))      # 46324
length(get_crossreactive_cpgs("hm450k"))   # 30540
length(get_crossreactive_cpgs("epic"))     # 43410
length(get_crossreactive_cpgs("chen"))     # 29233
length(get_crossreactive_cpgs("pidsley"))  # 43254
length(get_crossreactive_cpgs("illumina")) # 1031

}
\references{
1. Yi-an Chen, Mathieu Lemire, Sanaa Choufani, Darci T. Butcher, Daria Grafodatskaya, 
Brent W. Zanke, Steven Gallinger, Thomas J. Hudson & Rosanna Weksberg (2013) 
Discovery of cross-reactive probes and polymorphic CpGs in the Illumina Infinium
HumanMethylation450 microarray, Epigenetics, 8:2, 203-209, DOI: 10.4161/epi.23470

2. Pidsley, R., Zotenko, E., Peters, T.J. et al. Critical evaluation of the Illumina
MethylationEPIC BeadChip microarray for whole-genome DNA methylation profiling.
Genome Biol 17, 208 (2016). https://doi.org/10.1186/s13059-016-1066-1
}
\seealso{
bactrl, get_qcsignal
}
