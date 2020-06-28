grid_skeleton = function(path) {

  # ensure directory exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources = system.file('rstudio', 'templates', 'project', 'resources',
                          package = 'msmbstyle', mustWork = TRUE)

  # list files to move
  files = list.files(resources)
  # move files
  source = file.path(resources, files)
  target = file.path(path, files)
  file.copy(source, target)

  return(TRUE)
}