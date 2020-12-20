<?php
function generate_barcode($code=null,$key=null)
{
	$app =& get_instance();
	$app->zend->load('Zend/Barcode');

	$barcodeOptions = array('text' => $key);
	$rendererOptions = array();
	$imageResource = Zend_Barcode::factory($code, 'image', $barcodeOptions, $rendererOptions)->draw();
  ob_start();
  imagejpeg($imageResource);
  $contents = ob_get_contents();
  ob_end_clean();
	return base64_encode($contents);
}
?>
