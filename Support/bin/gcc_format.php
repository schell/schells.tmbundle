<?php
	// get stdout and stderr then delete temp file
	$dir = $argv[2];
	$commandFile = $argv[1] . '.mkout';
	$commands = file_get_contents($commandFile);
	
	// break lines up by line ending
	$lines = explode("\n", $commands);
	
	// find errors and link them to pages and line number
	$errors = 0;
	for ($i=0; $i < count($lines); $i++) 
	{
		$class 			= "warn";
		$fnpos 			= strpos($lines[$i], ':');
		$filename 		= substr($lines[$i], 0, $fnpos);
		$lnpos 			= strpos($lines[$i], ': error:');
		
		if($lnpos === false)	// if we don't find an error, check for a warning...
		{
			$lnpos = strpos($lines[$i], ': warning:');
			if($lnpos === false)
			{
				$class = "err";
			}
		}else
		{
			$class = "err";
		}
		
		$linestart = $lnpos - $fnpos - 1;
		if($linestart < 0) continue;
		$line = substr($lines[$i], $fnpos+1, $lnpos - $fnpos - 1);
		$link = "txmt://open?url=file://$dir/$filename&line=$line&column=1";
		$lines[$i] = substr_replace( $lines[$i], '</a>', $lnpos, 0);
		$lines[$i] = "<div class=\"$class\"><a href=\"$link\">" . $lines[$i] . '</div>';
		$errors++;
	}
	$output = implode("<br />\n", $lines);
	
	echo '
	<html>
	<head>
		<style type="text/css">
		body 	{background:#000000; color:#999999;}
		#comment{width:100%; background: #230021; color:#6060BF;}
		#fail 	{width:100%; background:#3E0018; color:#9918B8;}
		#succ 	{width:100%; background:#230021; color:#B0FFF0;}
		.warn	{width:100%; background:#230021; color:#FFDD33;}
		.err	{width:100%; background:#230021; color:#FF4433;}
		dslsh 	{color:#A96AA9;}
		a:link 	{color:#008080;}
		a:hover	{color:#80A0FF;}
		</style>
	</head>
		<body>
			<div id="comment">
				<dslsh>//</dslsh> '. $argv[1] .'\'s build results: <a href="http://www.efnx.com">efnx</a>
			</div>';
			
	$order   = array("\r\n", "\n", "\r");
	$replace = '<br />';
	// Processes \r\n's first so they aren't converted twice.
	$output = str_replace($order, $replace, $output);
	echo $output . '<br />';
	
	if($errors > 0)
	{
		echo '<div id="fail">Build failed with '. $errors .' errors.</div>';
	}else if(strpos($output, 'Error') === false && strpos($output, 'Stop') === false)
	{
		echo '<div id="succ">Build Succeeded!</div>';
	}else
	{
		echo '<div id="fail">Build Failed!</div>';
	}
	echo'
		</body>
	</html>';
?>