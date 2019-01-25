variable "ssh_public_key_filepath" {
  description = "Filepath for the ssh public key"
  type = "string"

  default = "../../keys/ubuntu.pub"
}

variable "google_credentials_path" {
  description = "Filepath for the google credential.json"
  type = "string"

  default = "../../accounts/i-like-dsmproject-9ae17eb886e7.json"
}
