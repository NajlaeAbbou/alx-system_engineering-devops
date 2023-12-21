# creating holberton user
user { 'holberton':
  ensure     => 'present',
  managehome => true,
}

# setting up a password for the "holberton" user
user { 'holberton':
  password => '$6$random_salt$hashed_password',
}

# Allowing SSH access for the "holberton" user
ssh_authorized_key { 'holberton_ssh_key':
  user  => 'holberton',
  type  => 'ssh-rsa',
  key   => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTk8M8LgFndnAoB++2PnC+T1b8RGTPuQi7b4Kh5Gyg70APTaTpWHaRBKEsZni8gN0u9A1yBkkIR3/twZ0YLOiDYLIl9sbAlxIr9v63liEX6d2ue7DCrwvl8xHN1Fi74GUzxtPta1peAHEq42+2Ibh1z41RhpK8AepMUFPNd/aCL6d83EchHvtFRWsRZpJpV2PRNKIBcfb628SuWaK85wlYfL2PHNIxHeXqaWBE8LSV7yvGfq2uNWMvPvGwF2hGEaoX/W4u2Ot/Lzaymr4mlR0RpZAxuv/QOLiWpg/0QPzVghSiINh31AYc3rtYutTCjwVVmMxRx4jcG9QonOQTpADgNT7axXCEM9gdDhlTcjoIcakWCaDU8ZUuMBXNPxIFioEXFz1/UdTokpCxNC7nt78k7BUwS3fkUNoEGoipeBhDsUzmL+FaSAMOwnzCGW/SipD4qtJcnM2sXXGnelZti6pXitsrMtdR8FT16Hm3FmbSLkWxTAlSlY+RpexCs2KYo30= root@5c47e3755b6d',
}

# changing permissions for a specific file
file { '/usr/bin':
  owner => 'holberton',
  group => 'holberton',
  mode  => '0644',
}
