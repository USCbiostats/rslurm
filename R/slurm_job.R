#' Create a slurm_job object
#' 
#' This function creates a \code{slurm_job} object which can be passed to other
#' functions such as \code{\link{cancel_slurm}}, \code{\link{cleanup_files}}, 
#' \code{\link{get_slurm_out}} and \code{\link{print.slurm_job}}. 
#' 
#' In general, \code{slurm_job} objects are created automatically as the output of 
#' \code{\link{slurm_apply}} or \code{\link{slurm_call}}, but it may be necessary 
#' to manually recreate one if the job was submitted in a different R session.
#' 
#' @param jobname The name of the Slurm job. The rslurm-generated scripts and 
#' output files associated with a job should be found in the 
#' \emph{_rslurm_[jobname]} folder.
#' @param nodes The number of cluster nodes used by that job.
#' @return A \code{slurm_job} object.
#' @export
slurm_job <- function(jobname, nodes) {
    
    structure(
        list(jobname = jobname, nodes = nodes),
        class = "slurm_job"
    )
    
}
