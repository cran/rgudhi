% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sklearn-cluster.R
\name{OPTICS}
\alias{OPTICS}
\title{Performs clustering according to the OPTICS algorithm}
\description{
This is a wrapper around the Python class
\href{https://scikit-learn.org/stable/modules/generated/sklearn.cluster.OPTICS.html#sklearn.cluster.OPTICS}{sklearn.cluster.OPTICS}.
}
\examples{
\dontshow{if (reticulate::py_module_available("sklearn.cluster") && getRversion() >= "4.2") (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
cl <- OPTICS$new()
\dontshow{\}) # examplesIf}
}
\section{Super classes}{
\code{rgudhi::PythonClass} -> \code{rgudhi::SKLearnClass} -> \code{\link[rgudhi:BaseClustering]{rgudhi::BaseClustering}} -> \code{OPTICS}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-OPTICS-new}{\code{OPTICS$new()}}
\item \href{#method-OPTICS-clone}{\code{OPTICS$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="PythonClass" data-id="get_python_class"><a href='../../rgudhi/html/PythonClass.html#method-PythonClass-get_python_class'><code>rgudhi::PythonClass$get_python_class()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="PythonClass" data-id="set_python_class"><a href='../../rgudhi/html/PythonClass.html#method-PythonClass-set_python_class'><code>rgudhi::PythonClass$set_python_class()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="apply"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-apply'><code>rgudhi::SKLearnClass$apply()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="fit"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-fit'><code>rgudhi::SKLearnClass$fit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="fit_transform"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-fit_transform'><code>rgudhi::SKLearnClass$fit_transform()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="get_params"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-get_params'><code>rgudhi::SKLearnClass$get_params()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="set_params"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-set_params'><code>rgudhi::SKLearnClass$set_params()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rgudhi" data-topic="SKLearnClass" data-id="transform"><a href='../../rgudhi/html/SKLearnClass.html#method-SKLearnClass-transform'><code>rgudhi::SKLearnClass$transform()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-OPTICS-new"></a>}}
\if{latex}{\out{\hypertarget{method-OPTICS-new}{}}}
\subsection{Method \code{new()}}{
The \link{OPTICS} class constructor.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OPTICS$new(
  min_samples = 5L,
  max_eps = Inf,
  metric = c("minkowski", "cityblock", "cosine", "euclidean", "l1", "l2", "manhattan",
    "braycurtis", "canberra", "chebyshev", "correlation", "dice", "hamming", "jaccard",
    "kulsinski", "mahalanobis", "rogerstanimoto", "russellrao", "seuclidean",
    "sokalmichener", "sokalsneath", "sqeuclidean", "yule"),
  p = 2L,
  metric_params = NULL,
  cluster_method = c("xi", "dbscan"),
  eps = NULL,
  xi = 0.05,
  predecessor_correction = TRUE,
  min_cluster_size = NULL,
  algorithm = c("auto", "ball_tree", "kd_tree", "brute"),
  leaf_size = 30L,
  memory = NULL,
  n_jobs = 1L
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{min_samples}}{Either an integer value greater than 1 or a numeric
value between 0 and 1 specifying the number of samples in a
neighborhood for a point to be considered as a core point. Also, up and
down steep regions can’t have more than \code{min_samples} consecutive
non-steep points. Expressed as an absolute number or a fraction of the
number of samples (rounded to be at least 2). Defaults to \code{5L}.}

\item{\code{max_eps}}{A numeric value specifying the maximum distance between
two samples for one to be considered as in the neighborhood of the
other. Reducing \code{max_eps} will result in shorter run times. Defaults to
\code{Inf}.}

\item{\code{metric}}{Either a string or an object coercible into a function via
\code{\link[rlang:as_function]{rlang::as_function()}} specifying the metric to use for distance
computation. If \code{metric} is a function, it is called on each pair of
instances (rows) and the resulting value recorded. The function should
take two numeric vectors as input and return one numeric value
indicating the distance between them. This works for Scipy’s metrics,
but is less efficient than passing the metric name as a string. If
metric is \code{"precomputed"}, \code{X} is assumed to be a distance matrix and
must be square. Valid string values for metric are:
\itemize{
\item from
\href{https://scikit-learn.org/stable/modules/classes.html#module-sklearn.metrics}{\strong{sklearn.metrics}}:
\code{"cityblock"}, \code{"cosine"}, \code{"euclidean"}, \code{"l1"}, \code{"l2"},
\code{"manhattan"};
\item from
\href{https://docs.scipy.org/doc/scipy/reference/spatial.distance.html}{\strong{scipy.spatial.distance}}:
\code{"braycurtis"}, \code{"canberra"}, \code{"chebyshev"}, \code{"correlation"}, \code{"dice"},
\code{"hamming"}, \code{"jaccard"}, \code{"kulsinski"}, \code{"mahalanobis"},
\code{"minkowski"}, \code{"rogerstanimoto"}, \code{"russellrao"}, \code{"seuclidean"},
\code{"sokalmichener"}, \code{"sokalsneath"}, \code{"sqeuclidean"}, \code{"yule"}.
}

Defaults to \code{"minkowski"}.}

\item{\code{p}}{An integer value specifying the power for the Minkowski metric.
When \code{p = 1}, this is equivalent to using the Manhattan distance
(\eqn{\ell_1}). When \code{p = 2}, this is equivalent to using the Euclidean
distance (\eqn{\ell_2}). For arbitrary \eqn{p}, the Minkowski distance
(\eqn{\ell_p}) is used. Defaults to \code{2L}.}

\item{\code{metric_params}}{A named list specifying additional arguments for the
metric function. Defaults to \code{NULL}.}

\item{\code{cluster_method}}{A string specifying the extraction method used to
extract clusters using the calculated reachability and ordering.
Possible values are \code{"xi"} and \code{"dbscan"}. Defaults to \code{"xi"}.}

\item{\code{eps}}{A numeric value specifying the maximum distance between two
samples for one to be considered as in the neighborhood of the other.
Defaults to \code{max_eps}. Used only when \code{cluster_method == "dbscan"}.}

\item{\code{xi}}{A numeric value in \eqn{[0,1]} specifying the minimum steepness
on the reachability plot that constitutes a cluster boundary. For
example, an upwards point in the reachability plot is defined by the
ratio from one point to its successor being at most \code{1 - xi}. Used only
when \code{cluster_method == "xi"}. Defaults to \code{0.05}.}

\item{\code{predecessor_correction}}{A boolean value specifying whether to
correct clusters according to the predecessors calculated by OPTICS
\insertCite{schubert2018improving}{rgudhi}. This parameter has minimal
effect on most data sets. Used only when \code{cluster_method == "xi"}.
Defaults to \code{TRUE}.}

\item{\code{min_cluster_size}}{Either an integer value \eqn{> 1} or a numeric
value in \eqn{[0,1]} specifying the minimum number of samples in an
OPTICS cluster, expressed as an absolute number or a fraction of the
number of samples (rounded to be at least 2). If \code{NULL}, the value of
\code{min_samples} is used instead. Used only when \code{cluster_method == "xi"}.
Defaults to \code{NULL}.}

\item{\code{algorithm}}{A string specifying the algorithm used to compute the
nearest neighbors. Choices are \code{c("auto", "ball_tree", "kd_tree", "brute")}. Defaults to \code{"auto"} which will attempt to decide the most
appropriate algorithm based on the values passed to fit method. Note:
fitting on sparse input will override the setting of this parameter,
using \code{algorithm == "brute"}.}

\item{\code{leaf_size}}{An integer value specifying the leaf size passed to
\code{BallTree} or \code{KDTree}. This can affect the speed of the construction
and query, as well as the memory required to store the tree. The
optimal value depends on the nature of the problem. Defaults to \code{30L}}

\item{\code{memory}}{A string specifying the path to the caching directory into
which caching the output of the computation of the tree. Defaults to
\code{NULL} in which case no caching is done.}

\item{\code{n_jobs}}{An integer value specifying the number of parallel jobs to
run for neighbors search. Defaults to \code{1L}. A value of \code{-1L} means
using all processors.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
An object of class \link{OPTICS}.
\subsection{References}{

\insertCited{}
}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-OPTICS-clone"></a>}}
\if{latex}{\out{\hypertarget{method-OPTICS-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OPTICS$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
