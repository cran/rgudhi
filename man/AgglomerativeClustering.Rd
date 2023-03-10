% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sklearn-cluster.R
\name{AgglomerativeClustering}
\alias{AgglomerativeClustering}
\title{Performs clustering according to the agglomerative algorithm}
\description{
Recursively merges pair of clusters of sample data; uses linkage
distance. This is a wrapper around the Python class
\href{https://scikit-learn.org/stable/modules/generated/sklearn.cluster.AgglomerativeClustering.html#sklearn.cluster.AgglomerativeClustering}{sklearn.cluster.AgglomerativeClustering}.
}
\examples{
\dontshow{if (reticulate::py_module_available("sklearn.cluster")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
cl <- AgglomerativeClustering$new()
\dontshow{\}) # examplesIf}
}
\section{Super classes}{
\code{rgudhi::PythonClass} -> \code{rgudhi::SKLearnClass} -> \code{\link[rgudhi:BaseClustering]{rgudhi::BaseClustering}} -> \code{AgglomerativeClustering}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AgglomerativeClustering-new}{\code{AgglomerativeClustering$new()}}
\item \href{#method-AgglomerativeClustering-clone}{\code{AgglomerativeClustering$clone()}}
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
\if{html}{\out{<a id="method-AgglomerativeClustering-new"></a>}}
\if{latex}{\out{\hypertarget{method-AgglomerativeClustering-new}{}}}
\subsection{Method \code{new()}}{
The \link{AgglomerativeClustering} class constructor.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AgglomerativeClustering$new(
  n_clusters = 2L,
  affinity = c("euclidean", "l1", "l2", "manhattan", "cosine", "precomputed"),
  memory = NULL,
  connectivity = NULL,
  compute_full_tree = "auto",
  linkage = c("ward", "complete", "average", "single"),
  distance_threshold = NULL,
  compute_distances = FALSE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{n_clusters}}{An integer value specifying the number of clusters to
find. It must be \code{NULL} if \code{distance_threshold} is not \code{NULL}. Defaults
to \code{2L}.}

\item{\code{affinity}}{A string specifying the metric used to compute the
linkage. Can be \code{"euclidean"}, \code{"l1"}, \code{"l2"}, \code{"manhattan"},
\code{"cosine"} or \code{"precomputed"}. If \code{linkage} is \code{"ward"}, only
\code{"euclidean"} is accepted. If \code{"precomputed"}, a distance matrix
(instead of a similarity matrix) is needed as input for the \verb{$fit()}
method. Defaults to \code{"euclidean"}.}

\item{\code{memory}}{A string specifying the path to the caching directory.
Defaults to \code{NULL} in which case no caching is done.}

\item{\code{connectivity}}{Either a numeric matrix or an object of class
\link[stats:dist]{stats::dist} or an object coercible into a function by
\code{\link[rlang:as_function]{rlang::as_function()}} specifying for each sample the neighboring
samples following a given structure of the data. This can be a
connectivity matrix itself or a function that transforms the data into
a connectivity matrix. Defaults to \code{NULL}, i.e., the hierarchical
clustering algorithm is unstructured.}

\item{\code{compute_full_tree}}{Either a boolean value or the \code{"auto"} string
specifying whether to prematurely stop the construction of the tree at
\code{n_clusters}. This is useful to decrease computation time if the number
of clusters is not small compared to the number of samples. This option
is useful only when specifying a connectivity matrix. Note also that
when varying the number of clusters and using caching, it may be
advantageous to compute the full tree. It must be \code{TRUE} if
\code{distance_threshold} is not \code{NULL}. Defaults to \code{"auto"}, which is
equivalent to \code{TRUE} when \code{distance_threshold} is not \code{NULL} or that
\code{n_clusters} is inferior to the maximum between \code{100} and \code{0.02 * n_samples}. Otherwise, \code{"auto"} is equivalent to \code{FALSE}.}

\item{\code{linkage}}{A string specifying which linkage criterion to use. The
linkage criterion determines which distance to use between sets of
observation. The algorithm will merge the pairs of cluster that
minimize this criterion.
\itemize{
\item \code{ward}: minimizes the variance of the clusters being merged;
\item \code{average}: uses the average of the distances of each observation of
the two sets;
\item \code{complete}: uses the maximum of the distances between all
observations of the two sets.
\item \code{single}: uses the minimum of the distances between all observations
of the two sets.
Defaults to \code{"ward"}.
}}

\item{\code{distance_threshold}}{A numeric value specifying the linkage distance
threshold above which clusters will not be merged. If not \code{NULL},
\code{n_clusters} must be \code{NULL} and \code{compute_full_tree} must be \code{TRUE}.
Defaults to \code{NULL}.}

\item{\code{compute_distances}}{A boolean value specifying whether to compute
distances between clusters even if \code{distance_threshold} is not used.
This can be used to make dendrogram visualization, but introduces a
computational and memory overhead. Defaults to \code{FALSE}.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
An object of class \link{AgglomerativeClustering}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AgglomerativeClustering-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AgglomerativeClustering-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AgglomerativeClustering$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
