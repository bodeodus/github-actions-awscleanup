#Cleanup state machines
Get-SFNStateMachineList | % { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -WhatIf }

#Cleanup activity tasks
Get-SFNActivityList | % { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -WhatIf }
