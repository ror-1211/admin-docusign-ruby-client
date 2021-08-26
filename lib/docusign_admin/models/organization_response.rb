=begin
#DocuSign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Admin
  class OrganizationResponse
    attr_accessor :id

    attr_accessor :name

    attr_accessor :description

    attr_accessor :default_account_id

    attr_accessor :default_permission_profile_id

    attr_accessor :created_on

    attr_accessor :created_by

    attr_accessor :last_modified_on

    attr_accessor :last_modified_by

    attr_accessor :accounts

    attr_accessor :users

    attr_accessor :reserved_domains

    attr_accessor :identity_providers

    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'default_account_id' => :'default_account_id',
        :'default_permission_profile_id' => :'default_permission_profile_id',
        :'created_on' => :'created_on',
        :'created_by' => :'created_by',
        :'last_modified_on' => :'last_modified_on',
        :'last_modified_by' => :'last_modified_by',
        :'accounts' => :'accounts',
        :'users' => :'users',
        :'reserved_domains' => :'reserved_domains',
        :'identity_providers' => :'identity_providers',
        :'links' => :'links'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'default_account_id' => :'String',
        :'default_permission_profile_id' => :'Integer',
        :'created_on' => :'DateTime',
        :'created_by' => :'String',
        :'last_modified_on' => :'DateTime',
        :'last_modified_by' => :'String',
        :'accounts' => :'Array<OrganizationAccountResponse>',
        :'users' => :'Array<OrganizationSimpleIdObject>',
        :'reserved_domains' => :'Array<DomainResponse>',
        :'identity_providers' => :'Array<IdentityProvidersResponse>',
        :'links' => :'Array<LinkResponse>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'default_account_id')
        self.default_account_id = attributes[:'default_account_id']
      end

      if attributes.has_key?(:'default_permission_profile_id')
        self.default_permission_profile_id = attributes[:'default_permission_profile_id']
      end

      if attributes.has_key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.has_key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.has_key?(:'last_modified_on')
        self.last_modified_on = attributes[:'last_modified_on']
      end

      if attributes.has_key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.has_key?(:'accounts')
        if (value = attributes[:'accounts']).is_a?(Array)
          self.accounts = value
        end
      end

      if attributes.has_key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.has_key?(:'reserved_domains')
        if (value = attributes[:'reserved_domains']).is_a?(Array)
          self.reserved_domains = value
        end
      end

      if attributes.has_key?(:'identity_providers')
        if (value = attributes[:'identity_providers']).is_a?(Array)
          self.identity_providers = value
        end
      end

      if attributes.has_key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          default_account_id == o.default_account_id &&
          default_permission_profile_id == o.default_permission_profile_id &&
          created_on == o.created_on &&
          created_by == o.created_by &&
          last_modified_on == o.last_modified_on &&
          last_modified_by == o.last_modified_by &&
          accounts == o.accounts &&
          users == o.users &&
          reserved_domains == o.reserved_domains &&
          identity_providers == o.identity_providers &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, description, default_account_id, default_permission_profile_id, created_on, created_by, last_modified_on, last_modified_by, accounts, users, reserved_domains, identity_providers, links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_Admin.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
