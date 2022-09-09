<?php
/**
 * @author Alessandro Blason <mrblason@gmail.com>
 * @date 07/09/2022
 */
// Report all PHP errors
ini_set('display_errors', 1);
error_reporting(E_ALL);

include("config.php");

// (AgentDVR) Actions -> Action Configuration -> Upload Image = 1
$target_dir = "uploads/"; 
$target_file = "";

if (array_key_exists("file0", $_FILES)) {
	$target_file = $target_dir . basename( $_FILES["file0"]["name"]);

	if (move_uploaded_file($_FILES["file0"]["tmp_name"], $target_file)) {
		//echo "The file ". basename( $_FILES["file0"]["name"]). " has been uploaded.";
	} else {
		//echo "Sorry, there was an error uploading your file.";
	}
	// create curl file object from file
	if (function_exists('curl_file_create')) { 
		$tmp_file = curl_file_create($target_file);
	} else { // 
		$tmp_file = '@' . realpath($target_file);
	}
}

// (AgentDVR) Actions -> Action Configuration -> URL = http://yourserverIP/telegram_alert.php?msg={MSG}
$caption = "";
if (isset($_GET["msg"])) {
	$caption = $_GET["msg"];
}	

if ($target_file != "") {
	$data = array('chat_id' => $yourchatid, 'photo' => $tmp_file, 'caption' => $caption);
	$function = "sendPhoto";
} else {
	$data = array('chat_id' => $yourchatid, 'text' => $caption);
	$function = "sendMessage";
}	

$ch = curl_init();
$headers = array("Content-Type:multipart/form-data");
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
// Telegram API url format: https://api.telegram.org/bot<THE TOKEN RECEIVED FROM BOTFATHER>/sendPhoto')
curl_setopt($ch, CURLOPT_URL, 'https://api.telegram.org/bot' . $yourbottoken . '/' . $function);
curl_exec($ch);
curl_close($ch);

?>