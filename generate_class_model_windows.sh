#!/bin/bash

# Parse command-line arguments
class_name=$1
shift
attributes=("$@")

# Generate the constructor function
declaration=""
for attr in "${attributes[@]}"; do
  attr_name="${attr%%:*}"
  attr_type="${attr#*:}"
  declaration="${declaration}final ${attr_type} ${attr_name};"
done

constructor=""
for attr in "${attributes[@]}"; do
  attr_name="${attr%%:*}"
  constructor="${constructor} required this.${attr_name}, "
done
constructor="$class_name ({ ${constructor% ,} })"

# Generate the tojson function
tojson=""
tojson="${tojson}Map<String, dynamic> toJson() => {"
for attr in "${attributes[@]}"; do
  attr_name="${attr%%:*}"
  tojson="${tojson}'${attr_name}': ${attr_name}, "
done
tojson="${tojson% ,}};"

# Generate the fromjson function
fromjson=""
fromjson="${fromjson}factory ${class_name}.fromJson(Map<String, dynamic> json) => ${class_name}("
for attr in "${attributes[@]}"; do
  attr_name="${attr%%:*}"
  fromjson="${fromjson}${attr_name}: json['${attr_name}'], "
done
fromjson="${fromjson% ,});"

# Generate the class model file
cat << EOF > ${class_name}.dart
class ${class_name} {
  ${declaration}
  ${constructor};
  ${tojson}
  ${fromjson}
}
EOF