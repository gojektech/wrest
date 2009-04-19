# Copyright 2009 Sidu Ponnappa

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software distributed under the License
# is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.

module Wrest
  module CoreExt #:nodoc:
    module Hash #:nodoc:
      # Makes it easier to build other objects from a String
      module Conversions

        # A convenience method equivalent to Wrest::Uri.new(string)
        def to_mutated_hash(mutator)
          returning({})do |mutated_hash|
            self.each{|tuple| mutated_hash.store(*mutator.mutate(tuple))}
          end
        end
      end
    end
  end
end
