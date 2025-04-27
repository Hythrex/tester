function save_game()
{
	var file = file_text_open_write("file0");
	
	file_text_write_real(file, global.day);
	
	file_text_close(file);
}

function load_game()
{
	if (file_exists("file0"))
	{
		var file = file_text_open_read("file0");
		
		global.day = file_text_read_real(file);
		
		file_text_close(file);
	}
}