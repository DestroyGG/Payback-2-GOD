function START()
gg.toast("v1.01")
menu = gg.multiChoice({"MODO DIOS","✖️SALIR✖️"},nil,"By DESTROY \n\nSCRIPT V1.01")
if menu == nil then
else
if menu[1] == true then
YF1()
end
if menu[2] == true then
exit()
end
end
DTR = -1
end
function YF1()
  local function setVal (address, flags, value, freeze)
    local t = {{
        address = address,
        flags = flags,
        value = value,
        freeze = true,
    }}
    gg.clearResults()
    gg.addListItems(t)
end
  gg.setRanges(0)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.toast("PISTOLA")
  gg.sleep(1000)
  gg.searchNumber("13",gg.TYPE_WORD)
  gg.toast("CUCHILLO")
  gg.sleep(1000)
  gg.refineNumber("0",gg.TYPE_WORD)
  gg.toast("PISTOLA")
  gg.sleep(1000)
  gg.refineNumber("13",gg.TYPE_WORD)
  addr = gg.getResults(1)[1].address
  setVal (addr + 0x140, gg.TYPE_QWORD, 999999999, true)
  setVal (addr + 0x6C, gg.TYPE_WORD, 0, true)
  setVal (addr + 0x4, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0x6, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0x8, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0xA, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0xC, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0xE, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0x10, gg.TYPE_WORD, 32767, true)
  setVal (addr + 0x12, gg.TYPE_WORD, 32767, true)
   setVal (addr + 0x14, gg.TYPE_DWORD, -1, true)
end
function exit()
print("\n\n█▀▄ █▀▀ █▀ ▀█▀ █▀█ █▀█ █▄█   █▀▀ █▀▀ \n█▄▀ ██▄ ▄█    █    █▀▄ █▄█    █      █▄█ █▄█")
gg.clearResults()
gg.toast("SUSCRÍBETE")
gg.sleep(100)
os.exit()
end
while true do
if gg.isVisible(true) then
DTR = 1
gg.setVisible(false)
end
if DTR == 1 then
START()
end
end
