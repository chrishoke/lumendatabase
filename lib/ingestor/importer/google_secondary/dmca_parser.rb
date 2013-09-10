require 'ingestor/importer/base'

module Ingestor
  module Importer
    module GoogleSecondary
      class DmcaParser < Base

        handles_content(/IssueType:\s?lr_dmca/m)

        def parse_works(file_path)
          content = IssueContent.new(
            file_path, 'description_of_copyrighted_work', 'full_name'
          )

          content.to_work
        end

        def original?(file_path)
          File.open(file_path) { |f| f.grep(/^IssueType:/) }.present?
        end

      end
    end
  end
end
