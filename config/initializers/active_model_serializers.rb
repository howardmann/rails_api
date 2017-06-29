# Use jsonAPI format adapter
ActiveModel::Serializer.config.adapter = :json_api
# Do not change rails underscore convention for multiple property names e.g. box_office not box-office
ActiveModel::Serializer.config.key_transform = :unaltered