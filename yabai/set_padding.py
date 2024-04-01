import subprocess

output = subprocess.run(["yabai","-m","query","--displays"],capture_output=True,text=True)
output_text = output.stdout.strip()
output_obj = eval(output_text)
width = (output_obj[0]["frame"]["w"])

padding = "12"

if width == 1512.0:
    subprocess.run(["yabai","-m","config","top_padding","0"])
    subprocess.run(["yabai","-m","config","bottom_padding","0"])
    subprocess.run(["yabai","-m","config","left_padding","0"])
    subprocess.run(["yabai","-m","config","right_padding","0"])
    subprocess.run(["yabai","-m","config","window_gap","0"])
    print("Padding set to 0")
else:
    subprocess.run(["yabai","-m","config","top_padding",padding])
    subprocess.run(["yabai","-m","config","bottom_padding",padding])
    subprocess.run(["yabai","-m","config","left_padding",padding])
    subprocess.run(["yabai","-m","config","right_padding",padding])
    subprocess.run(["yabai","-m","config","window_gap",padding])
    print("Padding set to " + padding)
