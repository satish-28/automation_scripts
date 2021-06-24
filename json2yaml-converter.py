#Programmer - python_script(Dev-satish)

# PyYAML is applicable for board range of tasks from complex configuration files to object serialization & persistance
# JSON is in-built module in Python and the YAML Module can be installed using the command - pip install PyYAML.

import json
import yaml 

#Defining json2yaml
def json2yaml(json_name, yaml_name):
	json_data = json.load(open(json_name, 'r'))

	yaml_file = open(yaml_name, 'w')


	yaml.safe_dump(json_data, yaml_file, allow_unicode=True, default_flow_style=False)
	
	yaml_data = yaml.load_all(open(yaml_name, 'r'), Loader=yaml.FullLoader)


	print("\n"+yaml.dump_all(yaml_data))
	print("\n##############################################################################")
	print("\nOUTPUT: JSON FILE "+json_name.split('/')[-1]+" CONVERTED TO YAML FILE "+yaml_name.split('/')[-1]+"\n" )
	print("\n##############################################################################")

#Defining yaml2json
def yaml2json(yaml_name, json_name):
	yaml_data = yaml.safe_load(open(yaml_name, 'r'))

	json_file = open(json_name, 'w')

	json.dump(yaml_data, json_file, indent=2)
	json_file.close()
	
	json_data = open(json_name, 'r').read()
	print("\n"+ json_data)
	print("\n##############################################################################")
	print("\nOUTPUT: YAML FILE "+yaml_name.split('/')[-1]+" CONVERTED TO JSON FILE "+json_name.split('/')[-1]+"\n" )
	print("\n##############################################################################")

# Driver Code
if __name__ == '__main__':
	
	mode = int(input("\n1. JSON TO YAML\n2. YAML TO JSON\n\nSELECT CONVERSION MODE : "))
	json_file = input("\nENTER JSON FILE PATH : ")
	yaml_file = input("\nENTER YAML FILE PATH : ")

	#Calling the selected function as per user's selection		
	if mode == 1:
		json2yaml(json_file, yaml_file),
	elif mode == 2:
		yaml2json(yaml_file, json_file)
	else:
		print("\n INVALID INPUT")		