name "graylog2-server"
default_version project.build_version

dependency "server-jre"
dependency "runit"

if version.include? '-beta' or version.include? '-rc'
  source url: "http://packages.graylog2.org/releases/graylog2-server/graylog2-server-#{version}.tgz",
         md5: "afd98d8653e04e1ea13db2590fdb915e"
else
  source url: "http://packages.graylog2.org/releases/graylog2-server/graylog2-server-#{version}.tgz",
         md5: "777d53f5f4f12e9e6ce8374d99fe0176"
end

relative_path "graylog2-server-#{version}"

build do
  mkdir "#{install_dir}/server"
  mkdir "#{install_dir}/plugin"
  sync  "#{project_dir}/", "#{install_dir}/server"
end
