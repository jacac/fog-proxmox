# frozen_string_literal: true
# Copyright 2018 Tristan Robert

# This file is part of Fog::Proxmox.

# Fog::Proxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Fog::Proxmox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Fog::Proxmox. If not, see <http://www.gnu.org/licenses/>.

# frozen_string_literal: true

module Fog
  module Proxmox
    class Identity
      # class Real update_permissions request
      class Real
        def update_permissions(body_params)
          request(
            expects: [200],
            method: 'PUT',
            path: 'access/acl',
            body: URI.encode_www_form(body_params)
          )
        end
      end

      # class Mock update_permissions request
      class Mock
      end
    end
  end
end
