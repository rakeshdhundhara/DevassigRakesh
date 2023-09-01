# create a local resource 
resource "local_file" "rakesh" {
    content= "kamal"
    filename="rake.html"
  
}
# create a local resousce and pass the locals in local resource
resource "local_file" "ra1" {
    content=local.file_content
    filename="rak.html"
  
}
locals {
 file_content = "Locals file content pass the local file ra1"
  
}
# create a local resource and provide random in local resousce

resource "local_file" "file1" {
    content= "kamal"
    filename="rak.py"

}
resource "random_id" "OTP"{
    byte_length = 8
}
 
 resource "local_file" "file2"{
    content="${random_id.OTP.hex}"
    filename="rak.py"
}