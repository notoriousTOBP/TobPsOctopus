function Update-AllOctopusProjectLogos{
    param(
        [switch]$force
    )
    . $PSScriptroot\..\Stash\StashFunctions
    $tempDir        =   "$env:temp\ProjectLogos"
    New-Item -itemType directory $tempDir -force | out-null
    $notFound = "/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAFIAxsDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKDRQaACiiigAooooAKKKKACiiigAooooAKKKKACiiigApCQoySAPU1keIvEun+GrA3N7KN7cRQqfnkb0A/rXk+reO9R1u6BDxxWoPywrllB9Se9AHs8uoWkMRke4iCDqd44rJn8aeH7cqH1GL5gWGD2FeFXEM97MZZpXlGf4TtFO/saeKDfFHvBGWHcUAexp8SvDrPgyzqO7eSSB+Vbth4g0nVE32d/DKB1w2CPwNfPsFnPJIApcEd8YK+1dRpGkTG4BaRUnHRvu7xQB7YCCMg5FFcpp73NqjP9o+VBll3Arj39PrW7YapBfIm1gsrLnYev4UAXqKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK5jxx4xtPBuhtdy7ZLqT5beAn77ep9h3ro55kt7eSeQ4SNS7H2AzXyP448YT+M/E8l1IxjgUmOBAc7EB/mepoAdf8AiLUNe1R77ULppp36f7I9AOwrY0x3ZPugc965iyMMRATJA6ux5rrdO2rF5rAKMjk8tQBsiJra3LsztJ/AduB9a1LFZY7DZJHyw3HJ5NRWkTXUqKyN5eMtuPLfhW7Jb/MsbFFUjAVh6e9AFK2sywyiknPbnFWtQ0ySW1EY8uPAz5kshz+Q6VqJp7KQUaNfTZ1qzcWKToqr85xycZoA4CLRLyS7H2a6upCx2hkYqn0wfvV1GnzXdpcAo8n2heCGYFfyq9sls/8AUxR7CcGRzg8dcVlXV/5t4vkkMwyeRjb7lu9AHo2k6mbuFRKymTplfX0rVryeLxLHZ3cSNcSw7UBdig2Oc/dPrj25r0LQ9dtdatt0MqNKn31U5x/9agDWooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAOF+Lus3Gi/D29ltZFSWcrBkjJw3Bx6HHevk5PlI2ttx3617z+0ReqIdGsg5DlnkIBPTGPpXhttCruMk57D1oA2NLViQFQKf+ekp5/AV1+nxv5ieVlmH8Ug5H0XtWDpelzyPu8zAA6qmP1NdzodlGWjUSOcHBw2B07+tAG1pQWHYjAuSdxA5JroVgWSYSfNvIwNvb2HrVaysgkzYyoHPHUj61rxqWwI328c+/0oAkhsvMJBZmCnmPPH4/4VorbyINowF7gCmWqOEHlkLjoPWrYRwQXct7DgUAUbi1MigAAD6VS/seJUcA43Hc/v9a6BoiUHPzHr7UxoRggDjqc0AcFNoTvfmMaXDO03CsZCnH06fjWnoXh6TR9TE0FxAoRsTwW8pYrn1/8A1VqWpK+KLh3bcsVupXPbOc/yqabSbSO8S+sJUtbuX5jGTjzs9c/WgDqQcgUtQWkwmt1bBVhwynqDU9ABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRUN1dQ2VrLc3EixxRKWZmOAAKAPmz44aleah45+xTJ5UNlEFgU/xBuWf+n4V59ZJNGQY44snkFjya0PHPieTxX4xvtWIKws3lQIe0S/d/Pr+NZ1jLhvmZQexPYUAdVYW93LGjXFztTPQDgCu00JIYhvjBfI4J6GuFsJhMQ7szRr26bjXoejFkijLBRkZKAcCgDpdPV5ZFY4yOgB610UEQJGOp6nrgVy1nc7rkKBtycYA4NdXaoRFliefU80AascSLgFBj1pDguDn5R0FQJN8nTNKCGoAmMm48Zp2Ts5yaiGBjipkORj1oAy5oQl99rXrsCHjsDmsObQpRLNqU97LdXTvlJXGCvooA4ArrmQAnI4PrUN7aJeJGg3KAwbIPFAFixZ4bmVJWyCFOffFalZJBEwYtwBtxUqySIGIcgDt1oA0aKopfPj5kB+lTLdxnggigCxRTBNG38Qp4IPSgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo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"
    [System.Convert]::FromBase64String($notFound) | set-content -encoding byte "$tempDir\NotFound.jpg"
    write-host "Getting all project URLs..."
    $projectUrls    =   Get-AllProjectUrls
    $projectUrls | %{
        $projectName = $_.project
        try{
            write-host "Working on $projectName..."
            $logoPath = "$tempDir\$().png"
            write-host "Downloading logo..."
            invoke-webrequest "$($_.JobSeeker)/assets/dist/images/logo.png" -outfile $logoPath
            write-host "Setting logo..."
            Update-OctopusProjectLogo $projectName $logoPath
            write-host "Deleting logo file..."
            Remove-Item -force $logoPath
        }catch{
            write-host -foreground red "Error updating $projectName - $($_.exception.message)"
            if(!$force){
                if(!(Get-UserApproval)){
                    return
                }
            }
            try{
                Update-OctopusProjectLogo $projectName "$tempDir\NotFound.jpg"
            }catch{
                
            }
        }
    }
}
