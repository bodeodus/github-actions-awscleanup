#Cleanup state machines
Get-SFNStateMachineList | % { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -Force }

#Cleanup activity tasks
Get-SFNActivityList | % { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -Force }
