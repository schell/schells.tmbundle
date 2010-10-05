#!/usr/bin/env ruby

# let's get our cli args
title = ARGV[0]
prompt = ARGV[1]
defaultText = ARGV[2]

# now do the work
require "#{ENV['TM_SUPPORT_PATH']}/lib/ui"
nib = "#{ENV['TM_SUPPORT_PATH']}/nibs/RequestString.nib"
result = ""
TextMate::UI.dialog(:nib => nib, :parameters => {}, :center => true) do
|dialog|
  dialog.parameters = {'string' => defaultText, 'title' => title, 'prompt' => prompt}
	result = dialog.wait_for_input
end
if result["returnArgument"] == "" || result["returnArgument"] == nil
  returnString = "nil"
else
  returnString = result["returnArgument"]
end
print returnString