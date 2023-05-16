(Get-EC2Instance).Instances | % { Remove-EC2Instance -InstanceId $PSItem.InstanceId -Force }
