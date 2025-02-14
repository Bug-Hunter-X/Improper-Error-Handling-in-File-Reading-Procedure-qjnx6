proc read_file {filename} { 
    if {[catch {open $filename r} file]} { 
        return -code error "Could not open file: $filename - $file"
    }
    set contents [read $file]
    close $file
    return $contents
}

set contents [read_file non_existent_file.txt]
if {[string length $contents] == 0} { 
 puts "File is empty or does not exist."
} else { 
 puts $contents
}

#Example with existing file
set contents [read_file existing_file.txt] 
if {[string length $contents] == 0} { 
 puts "File is empty."
} else { 
 puts $contents
}
