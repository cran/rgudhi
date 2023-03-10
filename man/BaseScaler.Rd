% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sklearn-scalers.R
\name{BaseScaler}
\alias{BaseScaler}
\title{Base Class for Scalers}
\description{
This is the base class for all the scalers available in the
\href{https://scikit-learn.org/stable/modules/classes.html#module-sklearn.preprocessing}{\strong{sklearn.preprocessing}}
module. The child classes are intended to be used within some GUDHI classes
such as \code{\link{DiagramScaler}}.
}
\keyword{internal}
\section{Super classes}{
\code{rgudhi::PythonClass} -> \code{rgudhi::SKLearnClass} -> \code{BaseScaler}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-BaseScaler-clone}{\code{BaseScaler$clone()}}
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
\if{html}{\out{<a id="method-BaseScaler-clone"></a>}}
\if{latex}{\out{\hypertarget{method-BaseScaler-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{BaseScaler$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
