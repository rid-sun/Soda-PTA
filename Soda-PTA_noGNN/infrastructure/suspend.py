import win32gui
import win32con
import win32api
classname = '#32770 (Dialog)'
titlename = 'Microsoft Visual C++ Runtime Library'

while True:
    # 
    hwnd = win32gui.FindWindow(None, titlename)
    while not hwnd:
        hwnd = win32gui.FindWindow(None, titlename)
    # please adjust based on the specific situation.
    ignore = win32gui.FindWindowEx(hwnd, None, 'Button', '忽略(&I)')
    # 
    win32gui.SendMessage(ignore, win32con.WM_LBUTTONDOWN, win32con.MK_LBUTTON, 0)
    # 
    win32gui.SendMessage(ignore, win32con.WM_LBUTTONUP, win32con.MK_LBUTTON, 0)
    print('输出')
    