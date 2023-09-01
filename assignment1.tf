# create a local resource 
resource "local_file" "rakesh" {
    content= "amal"
    filename="rake.html"
  
}
# create a local resousce and pass the locals in local resource
resource "local_file" "ra1" {
    content=local.file_content
    filename="rak.html"
  
}
locals {
 file_content = "forum"
  
}
# create a local resource and 

resource "local_file" "file1" {
    content= "amal"
    filename="rak.py"

}
resource "random_id" "OTP"{
    byte_length = 8
}
 
 resource "local_file" "file2"{
    content="${random_id.otp.hex}"
    filename="rak.py"
}