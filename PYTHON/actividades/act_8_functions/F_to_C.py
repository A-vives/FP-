
def cel_to_far(a):
    far = (a * 1.8) + 32        # Formula para pasar de celsius a farenheith
    return far

def far_to_cel(b):
    cel = (b - 32) / 1.8        # Formula para pasar de farenheith a celsius
    return cel

tem = float(input("introduce ºC: "))
tem2 = float(input("introduce ºF: "))

faren = cel_to_far(tem)
print(f"{tem} ºC son : {faren} ºF")

celsius = far_to_cel(tem2)
print(f"{tem2} ºF son : {celsius} ºC")