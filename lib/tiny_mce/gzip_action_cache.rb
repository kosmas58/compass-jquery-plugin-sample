module ActionController
  module Caching
  	module Actions
#      
      module ClassMethods #:nodoc:
        def caches_gzip_action(*actions)
          around_filter(GzipActionCacheFilter.new(perform_caching, *actions))
        end
      end

      class GzipActionCacheFilter #:nodoc:
        begin 
          require 'zlib' 
          require 'stringio' 
          GZIP_SUPPORTED = true 
        rescue 
          GZIP_SUPPORTED = false 
        end 
        
        def initialize(perform_caching, *actions, &block)
          @actions = actions
          @perform_caching = perform_caching
        end

        def before(controller)
          return unless @actions.include?(controller.action_name.intern)

          if @perform_caching
            if cache = controller.read_fragment(controller.url_for.split("://").last)
              controller.rendered_action_cache = true
              
              if accepts_gzip?(controller)
                cache = compress_output(cache)
                controller.response.headers['Content-encoding'] = @compression_encoding
              end 
              
              controller.send(:render_text, cache)
              return false
            end
          elsif accepts_gzip?(controller)
            controller.response.body = compress_output(controller.response.body)
          end
        end

        def after(controller)
          return if !@perform_caching || !@actions.include?(controller.action_name.intern) || controller.rendered_action_cache
          controller.write_fragment(controller.url_for.split("://").last, controller.response.body)
        end
        
        private
          
          def accepts_gzip?(controller)
            return false unless GZIP_SUPPORTED 
            accepts = controller.request.env['HTTP_ACCEPT_ENCODING'] 
            return false unless accepts && accepts =~ /(x-gzip|gzip)/ 
            @compression_encoding = $1 
            true 
          end
          
          def compress_output(body) 
            output = StringIO.new 
            def output.close 
              # Zlib does a close. Bad Zlib... 
              rewind 
            end 
            gz = Zlib::GzipWriter.new(output) 
            gz.write(body) 
            gz.close 
            if output.length < body.length 
              @old_response_body = body 
              output.string 
            end 
          end 
        
      end
    end
  end
end
    