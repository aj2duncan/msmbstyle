% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/specific_content.R
\name{question}
\alias{question}
\alias{question_begin}
\alias{question_end}
\title{Indicate a "question" within a book.}
\usage{
question(text, header = "&#x25BA; Question", label = NULL)

question_begin(header = "&#x25BA; Question", label = NULL)

question_end()
}
\arguments{
\item{text}{\code{character}. Text that provides the body of the question.
Not providing anything to this argument is assumed to indicate that
you wish to include something more complex than just text within the 
question, and a corresponding call to \code{question_end} should be 
used later in the document.}

\item{header}{\code{character}. Defines the text used to mark the start 
of a 'question'.  Set this if you want to refer to this as an 'Exercise', 
'Homework', etc.  
'&#x25BA;' renders as a filled right pointing triangle in HTML.}

\item{label}{\code{character}.  Provides a label that can be referenced in
rest of the document.  This must start with the text 'ques:' and should
be referenced using the standard bookdown syntax e.g. for
\code{label = 'ques:one'} use \code{\@ref(ques:one)} in the main text.}
}
\description{
Functions to demark a 'question' within an R Markdown document.
}
\details{
If your question is simply a paragraph of text, you can use 
  \code{question()} and provide the paragraph via the argument \code{text}.

If you need to provide more detail than a single paragraph,
  you can use the functions \code{question_begin()} and \code{question_end()} 
  to indicated the region of the document you wish to be included in the 
  question.  (This is similar to using \code{\\begin{}} and \code{\\end{}} 
  tags in a Latex document.).  These two functions must be used together,
  otherwise the resulting document will have unmatched HTML tags.
  
\code{question_begin()} is a simple wrapper around \code{question} with the
  \code{text} forced to be missing, and you can start a larger question with
  either.  \code{question_end()} should never be used on its own as it 
  closes bits of document structure that are expected to have been opened 
  already.
}
\examples{
\dontrun{
msmbstyle::question(text = "This is a labelled question",
                    label = "ques:two", 
                    header = "Answer")
}
}
\seealso{
\code{\link{solution}}
}
