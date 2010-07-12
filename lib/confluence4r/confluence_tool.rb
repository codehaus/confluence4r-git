################################################################################
#  Copyright 2006-2009 Codehaus Foundation
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
################################################################################
require 'logger'

module Confluence4R

  class ConfluenceTool
    
    def initialize(version, base_url, *options)
      @version = version
      @base_url = base_url  
      @options = options
      @logger = Logger.new(STDERR)
      @endpoint_url = "#{@base_url}/rpc/soap-axis/confluenceservice-v#{version}"
    end
    
    def logger=(logger)
      @logger = logger
    end
    
  
    def driver()
      if not @driver
        @logger.info( "Connecting driver to #{@endpoint_url}" )

        require "confluence4r/v#{@version}/confluenceService.rb"
        require "confluence4r/v#{@version}/ConfluenceSoapServiceDriver.rb"
        require "confluence4r/v#{@version}/confluenceServiceMappingRegistry.rb"

        service_classname = "Confluence4R::V#{@version}::ConfluenceSoapService"
        service = eval(service_classname)
        @driver = service.send(:new, @endpoint_url)
      end
      @driver
    end
    
    def wiredump_file_base=(base)
      driver().wiredump_file_base = base
    end
  
    def login(username, password)
      @token = driver().login(username, password)
    end
    
    def token()
      @token
    end
    
    def method_missing(method_name, *args)
      call_driver(method_name, *args)
    end
    
    def call_driver(method_name, *args)
      @logger.debug("Finding method #{method_name}")
      method = driver().method(method_name)     
      
      if args.length > 0
        method.call(@token, *args)     
      else
        method.call(@token)
      end
    end
    
    def getGroup(group_key)
      if call_driver("hasGroup", group_key)
        return group_key
      else
        return nil
      end
    end
    
    def getUser( user_key )
      if call_driver("hasUser", user_key)
        return call_driver( "getUser", user_key )
      else
        return nil
      end
    end
    
  end  

end
