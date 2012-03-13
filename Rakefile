################################################################################
#  Copyright 2007 Ben Walding                                                  #
#                                                                              #
#  Licensed under the Apache License, Version 2.0 (the "License");             #
#  you may not use this file except in compliance with the License.            #
#  You may obtain a copy of the License at                                     #
#                                                                              #
#     http://www.apache.org/licenses/LICENSE-2.0                               #
#                                                                              #
#  Unless required by applicable law or agreed to in writing, software         #
#  distributed under the License is distributed on an "AS IS" BASIS,           #
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    #
#  See the License for the specific language governing permissions and         #
#  limitations under the License.                                              #
################################################################################
require 'net/http'
require 'fileutils'
require 'rake/clean'
require 'logger'

begin
  require 'rubygems'
  require 'rake/gempackagetask'
rescue Exception
  nil
end

gem 'soap4r'

require 'wsdl/soap/wsdl2ruby' #Must require this AFTER the gem version of soap4r is loaded!

logger = Logger.new(STDERR)
logger.level = Logger::INFO


desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]

desc "generates RDoc documentation"
task :rdoc do
  rdoc = RDoc::RDoc.new
  rdoc.document([])
end

task :clean do
  remove_file("wsdl/confluenceservice-v1.wsdl")
  remove_file("lib/confluence4r/v1/confluenceService.rb")
  remove_file("lib/confluence4r/v1/confluenceServiceDriver.rb")
  remove_file("lib/confluence4r/v1/confluenceServiceMappingRegistry.rb")
end


desc "gets the wsdl files for Confluence services"
task :getwsdl do
  versions().each { |version| 
    save(getWsdlFileName(version), get_file("docs.codehaus.org", "/rpc/soap-axis/confluenceservice-v#{version}?wsdl"))
  }
end

task :build_gem do
  system("gem build confluence4r.gemspec")
end

task :install_gem do
  system("gem install *.gem")
end  

task :deploy_gem do
  system("scp *.gem codehaus03:/home/projects/confluence4r/snapshots.dist/distributions/")
end

task :generate do
  versions().each { |version|
    worker = WSDL::SOAP::WSDL2Ruby.new
    worker.logger = logger
    worker.location = getWsdlFileName(version)
    worker.basedir = "lib/confluence4r/v#{version}"
    
    worker.opt['force'] = true
    worker.opt['classdef'] = 'confluenceService'
    worker.opt['driver'] = 'ConfluenceSoapService'
    worker.opt['mapping_registry'] = 'DefaultMappingRegistry'
    worker.opt['module_path'] = "Confluence4R::V#{version}"
    
    mkdir_p worker.basedir
    
    worker.run
  }
end

def versions 
 [ 1, 2 ]
end

def get_file(host, path)
    puts "getting http://#{host}#{path}"
    http = Net::HTTP.new(host)
    http.start { |w| w.get2(path).body }
end

def getWsdlFileName(vName)
  "wsdl/confluenceservice-v#{vName}.wsdl"
end

# Saves this document to the specified @var path.
# doesn't create the file if contains markup for 404 page
def save( path, content )
  File::open(path, 'w') { | f | 
    f.write( content ) 
  }
end

def remove_file(file)
  if File.exists?(file)
    File.unlink(file)
  end
end
