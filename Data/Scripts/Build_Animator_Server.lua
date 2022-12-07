Events.ConnectForPlayer("Build.Animator.Hide", function(player)
	player.isVisible = false
end)

Events.ConnectForPlayer("Build.Animator.Show", function(player)
	player.isVisible = true
end)