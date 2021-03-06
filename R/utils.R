template_resources = function(name, package, ...) {
    system.file('rmarkdown', 'templates', name, 'resources', ..., package = package)
}

gsub_fixed = function(...) {
    gsub(..., fixed = TRUE)
}

pandoc2.0 = function() {
    rmarkdown::pandoc_available('2.0')
}

generate_id2 <- function() {
    f1 <- file.path(tempdir(), "solution_idx")
    
    id <- ifelse(file.exists(f1), readLines(f1), "1")
    id_new <- as.character(as.integer(id) + 1)
    writeLines(text = id_new, con = f1)

    return(id)
}

toggle_script <- function() {
    
    return(
        paste("<script>
function toggle_visibility(id1, id2) {
var e = document.getElementById(id1);
var f = document.getElementById(id2);

e.style.display = ((e.style.display!='none') ? 'none' : 'block');

if(f.classList.contains('fa-plus-square')) {
    f.classList.add('fa-minus-square')
    f.classList.remove('fa-plus-square')
} else {
    f.classList.add('fa-plus-square')
    f.classList.remove('fa-minus-square')
}

}
</script>",
'<script>
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
    if ($(window).width() < 768) {
        var currentScrollPos = window.pageYOffset;
        if (prevScrollpos > currentScrollPos) {
            document.getElementById("navbar").style.top = "0";
        } else {
            document.getElementById("navbar").style.top = "-50px";
        }
        prevScrollpos = currentScrollPos;
    }
}
</script>',
# '<script>$("#mySidenav").BootSideMenu({pushBody:false, width:"25%"});</script>',
# '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>',
'<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <!-- Optional theme 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
            
            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>',
sep = "\n")
)
}