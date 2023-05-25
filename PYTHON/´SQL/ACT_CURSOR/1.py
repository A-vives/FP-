import xml.etree.ElementTree as ET

tree = ET.parse("/home/alejandro ruta xml")
root = tree.getroot()
for el in root.findall("student"):
    print(
        el.find('id'),
        el.find('name').text,
        el.find('date_of_birth0').text,
        el.find('email')
        )
        cursor