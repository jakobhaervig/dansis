module Jekyll
  class FileListGenerator < Generator
    safe true
    priority :high

    def generate(site)
      if site.config['file_list_generator'] && site.config['file_list_generator']['base_folder']
        base_folder = site.config['file_list_generator']['base_folder']
        base_folder_path = File.join(site.source, base_folder)
        if File.directory?(base_folder_path)
          find_files(base_folder_path, site)
        end
      end
    end

    def find_files(folder, site)
      Dir.foreach(folder) do |entry|
        next if entry == '.' || entry == '..'
        entry_path = File.join(folder, entry)
        if File.directory?(entry_path)
          find_files(entry_path, site)
        else
          relative_path = Pathname.new(entry_path).relative_path_from(Pathname.new(site.source))
          site.data['file_list'] ||= []
          site.data['file_list'] << { 'folder' => relative_path.dirname.to_s, 'filename' => entry }
        end
      end
    end
  end
end