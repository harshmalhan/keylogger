PARAM( [String]$Att, [String]$Subj, [String]$Body)
Function Send-Email
{
    PARAM(
             [Parameter(`
             Mandatory =$True)]
         [String]$To,
             [Parameter(`
             Mandatory =$True)]
         [String]$From,
             [Parameter(`
             Mandatory =$True)]
         [String]$Password,
             [Parameter(`
             Mandatory =$True)]
         [String]$Subject,
             [Parameter(`
             Mandatory =$True)]
         [String]$Body,
             [Parameter(`
             Mandatory =$True)]
         [String]$attachment,
         )
         
try
{
    $Msg = New-ObjectSystem.Net.Mail.MailMessage($From, $To, $Subject, $Body)
    $Srv = "smtp.gmail.com"
    if($attachment -ne $null)
    {
        try
        {
            $Attachments = $attchment -split ("\:\:");
            
            ForEach($val in $Attachments)
            {
                $attach = New-Object System.Net.mail.Attachment($val)
                $Msg.Attachments.Add($attch)
            }
        }
        catch
        {
            exit 2;
        }
        
        $client = New-object Net.Mail.SmtpClient($Srv, 587)
        $client.EnableSsl = $true
        $client.Credentials = New-object System.Net.NetworkCredentials($From.Split("@")[0]
        $client.Send($Msg)
        Remove-Variable -Name client
        Remove-Variable -Name Password
        exit 7;
        
    }
}       

catch
    {
        exit 3;
    }  
try 
    {
        Send-Email 
            -attachment $att
            -To "Address Of The Recipient"
            -Body $Body
            -Subject $Subj
            -password "tralala"
    }   
catch
    {
        exit 4;
    }     
   
                    
         
         
         
             
            
                     