proc read_file {filename} { 
    set file [open $filename r]
    if {$file == -1} { 
        return -code error "Could not open file: $filename"
    }
    set contents [read $file]
    close $file
    return $contents
}

set contents [read_file non_existent_file.txt]
puts $contents