pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- ninja cat
-- by cubee 🐱
level=1
lvlo=0
code="0001112301"
version="1.0 b1"
cartdata("cubg-ninjacat")
function _init()
lpal=split("13,4,11,9,13,7,7,14,10,7,10,6,6,15,7")
mus_=split("6,6,6,20,6,6,6,6,6,20,    24,20,24,24,24,24,24,24,24,24,20,20")
title="fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff50ffffffffffffff50ffffffffffffffffff0000ffffff0ffffffffffffffffffffffff0ffffffffffffffffffffffff550ffffffffff50f550ffffffffff50ffff099990ffff090ffffffffffffffffffffff060fffffffffffffffffffffff55555555550f500f55555555550f500ffff098880fff0980ffffffffffffffffffffff0660fffffffffffffffffffff88888888888800008888888888880000fff09888820ff0980ffffffffffffffffffffff06d0ffffffffffffffffff888282222222222882f282222222222882ffff09888820f09880ffffffffffffffffffffff06d50000ffffffff888ff88222225d663ddd222202225d636ddd22220ff098888820f09820ffffffffffffffffffff006dddd6660ffffffff228882fff555557b76636000f555557776636000ff098882822008800000f00ff0f00000ff0006ddd0dddd00ffffffffff222ffff555055b767b7d00f555055776777d00ff08882088208820999809900209998200998055ddd5000ffffffffff55555fff550005555555000f550005555555000f0988820282088200980098802000820098002005d5000ffffffff55550000555f0000000000000f5f0000000000000ff0988220082088200980098882000820098002000d50fffffffff5500000000000550000000000ff00550000000000fff09822000882882008200888220008200888220f0550ffffffff5500000000000555550000055f5f0555550000055f5ff088200f0888882009800980220008200980020f0050fffffff777000fffff005555555ffffdd57f5555555ffffdd57f088200ff0288822009800980020908200980020ff000ffffff77776f777ffff550a05555ffd7777750a05555ffd7777708820fff0088820088220820020082000820020fff0fffffff7776655766ff5550aa05555ff6777650aa05555ff6777608200ffff0882200000000000000000f0000000ffffffffffff6665550ffff5500099005555f766500099005555f76650200fffff022200aaaaa000ff0ff00fff00ff0ffffffffffffffff550ffff5500000ff0055555550aaaaaaaa00000000000ffffff0000aabbbbbbb0fffffffffffffffffffffffffffffff50fffff550000ffff005555500aaaaaaaa00000000f0ffffffff00abbbbbb33330000ff000000fffffffffffffffffff50fffff50000ffffff000000000aaaaaaa00000000ffffffffff0abbbbb3300000aab00aaaab30ffffffffffffffffff500fff55000ff55555ff00000fc000000a00000000ffffffffff0abbbb3000000ab003000ab000fffffffffffffffffff500055500005550005fffffff101cc1c000000000ffffffffff0abbb3000fff0ab003000ab00fffffffffffffffffffff00055000000000000fffffff01007c0a00000000ffffffffff0abb300fffff0bbb330f0b30ffffffffffffffffffffffff555000000000000fffffff022cc0aa00000000ffffffffff0bbb30ffffff0ab0030f0ab0ffffffffffffffffffffffff550000000f5000ffffffff0820c0aa00000000ffffffffff0abbb0ffffff0ab0030f0ab0fffffffffffffffddffffff555000fffff5000ffffffff0825d0aa00000000ffffffffff0abbbb000fff0b30030f0b30ffffffffffffffdd505fff555000fffff55000ffffffff05007d0a00000000ffffffffff0bbbbbbb30000000000f0000ffffffffffffffdd50055555000ffffff5000ddfffffffc055d5d000000000ffffffffff003bbbbbbbbb300ff0fff00fffffffffffffffdd55005500000ffffff50ddd55ffffff1000000a00000000fffffffffff0333bbbb33300ffffffffffffffffffffffffd55500000000fffffffddd5555ffffff0aaaaaaa00000000fffffffffff000333333300fffffffffffffffffffffffffd555f00000fffffffffdd5555fffffffaaaaaaaa00000000ffffffffffff0000000000fffffffffffffffffffffffffff55fffffffffffffffff555fffffffffaaaaaaaa00000000ffffffffffffff0000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffaaaaaaaa00000000"
boss="fffff8ffff8ffffffffff8ffff8ffffffffffffffffffffffffff8ffff8ffffffffffffffffffffffffff8ffff8ffffffffff28ff82ffffffffff28ff82ffffffffff8ffff8ffffffffff28ff82ffffffffff8ffff8ffffffffff28ff82fffffffffbb8888bbffffffffbbbbbbbbfffffffff28ff82fffffffffbb8888bbfffffffff28ff82fffffffffbb8888bbffffffff2dbbbbd2ffffffff2d0550d2ffffffffbb8888bbffffffff2dbbbbd2ffffffffbb8888bbffffffff2dbbbbd2ffffffff8d0550d8ffffffff88888888ffffffdf2dbbbbd2ffffffff8d0550d8ffffffff2dbbbbd2fdffffff8d0550d8ffffffff28888882ffffffff28888882ffffdddf8d0550d8ffffffff28888882ffffffff8d0550d8fdddffff28888882fffffffff222222ffffffffff222222ffffff55528888882fffffffff222222fffffffff28888882555ffffff222222ffffffffff822228ffffff9aff822228ffa9ff5aff222222ffffffffff822228ffffffffff222222ffa5ffffff822228fffffffff88888888fffff99a88888888a99ff9aa8822228fffffffff88888888fffffffff8222288aa9fffff88888888ffffffffa828828afffffff9228888229fffff9228888888fffffffa82288228afffffff8888888229fffffa82288228afffffffa912219afffffffff128821ffffffffff22882aaffffffda91222219aaffffffaa28822fffffffaa91222219adffffff99122199fffffffff228822ffffffffff228219affffdd99f228822f99ffffffa912822fffffff99f228822f99ddfffff128821ffffffffff288882ffffffffff2888219fffff555f288882fffffffff9128882ffffffffff288882f555ffffff28ff82ffffffffff28ff82ffffffffff28ff82ffffff5fff28ff82ffffffffff28ff82ffffffffff28ff82fff5ffffff28ff82ffffffffff28ff82ffffffffff28ff82ffffffffff28ff82ffffffffff28ff82ffffffffff28ff82ffffffffff22ff22ffffffffff22ff22ffffffffff22ff22ffffffffff22ff22ffffffffff22ff22ffffffffff22ff22fffffffffff7777ffffffffffffffffffffffffffffffffff77ffffffff7777777ffffffff8ffff8ffffffffff8ffff8ffffffffffff8fffffffffffffff8fffffffffffffff8fffff77ffffff7fa977777fffffff28ff82ffffffffff28ff82ffffffffffff28888f8fffffffff28888f8fffffffff28888f777fffffff2a98777ffffffbbbbbbbbffffffffbb8888bbfffffffffbbbbb2882fffffffbbbbb2882fffffffbbbbb282777fffffbbba928877fffff2dd55dd2ffffffff2dbbbbd2fffffaaaff255dbbbbfffffbbf255dbbbbfffffbbf255db2a777fffbbf2589bbb77fffff88888888ffffffff8d0550d8ffffff9a8f885d05d0ffffffff885d05d0ffffffff885d0a9777ffffff828205d07fffff28888882ffffffff28888882ffffff777777777782ffffffff28888882ffffffff2882aa977ffff777778288827ffffff222222ffffffffff222222fffffffff2287777777ffffffff8882722fffffffff888889777f7777779a22222f7ffffff822228ffffffffff822228ffffff888f8882777777ff888f88982777ffff888f8882227777ff888f899aa88f7ffffff88888888ffffffff88888888ffff82f2888222ff777782f28889aaf777ff82f28882227777ff82f288899222fffffffa82288228affffffa82288228affffff88822228aa777fff888229a7f777ffff888227777fffffff88822222fffffffa9912222199affffa9912222199afffff882222f299977fff88277777ff77ffff88227779ffffffff882222ffffffffff9f228822f9ffffff9f228822f9fffff882f82ffffffffff8877777f9af77fff882f82fa9fffffff882f82fffffffffffff288882ffffffffff288882ffffff882f882fffffffff882f882ff9a777ff882f882fffffffff882f882fffffffffffff28ff82ffffffffff28ff82fffff222ff822ffffffff222ff822fff7777f222ff822ffff7fff222ff822fffffffffffff28ff82ffffffffff28ff82fffff22fff22fffffffff22fff22fff7777ff22fff22ff7777fff22fff22ffffffffffffff22ff22ffffffffff22ff22fffff"
endcat="111111111111111111111111111111111111111111111111111111111111111111111111777777777777777111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777777777777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777111111111117777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111177777771ccccccccc177777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777711111111cc177777777111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777777777771cc17777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777777777771cc17777777777111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777777777771cc17777777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111177777777777771cc17777777777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777777771cc17777777777777111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777777771cc17777777777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111177777777771cc17777777777777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777771cc177777777777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777771cc111111117777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111177777771ccccccccc1777777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777777111111111117777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111177777777777777777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777777777771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777777111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117771111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111dddddddddd111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111ddddddddddddddddd1111111111611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111dddddddddddddd6ddddddd111111166111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111dddddddddddddd666dddddddd111166611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111ddddddddddddddd666ddddddddd1116666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111dddddddddddddddd6666ddddddddd166666111111cc1111111111111111111111111111111111111111111111111111111111111111111111111111111111116ddddddddddddddd666666dddddddd6666666111ccccccc111111111111111111111111111111111111111111111111111111111111111111111111111111116dddddddddddddddd6666666ddddddd666666611ccc77cccccdd11111111111111111111111111111111111111111111111111111111111111111111111111166ddddddddddddddd866666666ddddd6666688881c7777777cccddd11111111111111111111111111111111111111111111111111111111111111111111111166dddddddddddddddd888888866666666688888882cc7777777ccddddd111111111111111111111111111111111111111111111111111111111111111111111666dddddddddddddddd8888888888888888888888828c7777777cccdddddd1111111111111111111111111111111111111111111111111111111111111111116666dddddddddddddddd8888888888888888888888828cc777777ccccdddddd111111111111111111111111111111111111111111111111111111111111111116666dddddddddddddddd68888888888888888888666288cc7777cccccccdddd111111111111111111111111111111111111111111111111111111111111111166666dddddddddddddddd66666688888888888666666888ccccccccccccccddd111111111111111111111111111111111111111111111111111111111111111166666dddddddddddddddd666666666666666666666668888ccc7777ccccccddd1111111111111111111111111111111111111111111111111111111111111116666666ddddddddddddddd666666dddd666666dddd6666888dd7777777cccdddd1111111111111111111111111111111111111111111111111111111111111116666666ddddddddddddddd66666dddddd6666dddddd666888dd77777777ccdddd11111111111111111111111111111111111111111111111111111111111111166666666dddddddddddddd6666ddd66ddd66ddd66ddd6688887777777777ddddd1111111111111111111111111111111111111111111111111111111111111116666666666666ddddddddd6666dd6666dd66dd6666dd668888877aa777777dddd1111111111111111111111111111111111111111111111111111111111111116666666666666666666ddd6666666666666666666666668888888aaa77777dddd111111111111111111111111111111111111111111111111111111111111111666666666666666666666d66666666666666666666666698888888aaa77777ddd111111111111111111111111111111111111111111111111111111111111111666666666666666666666d666666666666ddd666666669988888888aa77777aad1111111111111111111111111111111111111111111111111111111111111111666666666666666666666d666666dd6666d666dd666699998888888aa7777aaaaa11111111111111111111111111111111111111111111111111111111111111666666666666666666666d666666ddd666d66ddd6669aaa99888888889777aaaaaaaa111111111111111111111111111111111111111111111111111111111a9966666666666666666666dd66666dddddddddddd669aaaaa999888888997aaaaaaaaaaa111111111111111111111111111111111111111111111111111111aaa996666666666666666666ddd66666ddddd6dddd669aaaaaaaa9988888999aaaaaaaaaaaaa111111111111111111111111111111111111111111111111111aaaaa99966666666666666666dd996666666666666669aaaaaaaaaa9988899aaaaaaaaaaaaaaaaa1111111111111111111111111111111111111111111111177777777a99996666666666666dd977996666666666699aaaaaaaaaaaa9999aaaa777aaaaaaa777777777771111111111111111111111111ddddddddd11117777777777a9aaa999996666666699977aaa99999999999aaaaaaaaaaaaaaaaa7777777779aaaa777777777777111111111111111111111111ccddddddddd177777777777799aaaa777999999999a777aaaaaa999999aaaaaaaaaaaaaaaaa777777777779999aa77777777777711111111111111111111111cccccdddddddd777777aaaaaa999aaa7777aaa999aa7777aaaaa99977777aaaaaaaaaaaaaaa77777777777799999a777aaaaaaaaa1111111111111111111111cccccccccccddc7777aaaaaaa9999aaa7777aaa999aaa777aaaa9997777777777aaaaaaaaaadccccccccccaaa9999a777aaaaaaaaa111111111111111111111cc77ccccccccddc777aaaaaaa99999aaa7777aaa999aaa777aaa9999777777777777aaaaaaaddccc77ccccccaaa999aa7799999aaaa11111111111111111111cc7777ccccccdddc77aaaa777777777aaa7777aaa999aaaa777999999777aaaaa777777aaaaadddc777777cccca99999aa79999997771111111111111111111cc777777ccccddddcaaaa977777777777aa7777aaa999aaaa77999999a777aaaaaaa77777aaaddddc7777777ccc999999aaa9999777771111111111111111111c77777777ccdddddca999777777777777777777aaa999aaaaa99999aaa777aaaaaaaa7777aaaddddcc777777cccc99999aaaaa7777777111111111111111111cc777777cccddddddca9997777aaaaaaa7799777aa9999aaaaaaaaaaaaaa7999aaaaaaa77a99ddddcccc777777cccc9999aaaa77777777111111111111111111cc77777ccccddddddcca99777aaaaaaaaa9999a9999999aaaaaaaaaaaaaaa99999aaaaaa9999ddddcccc7777777cccd7777aa7777777aa111111111111111111cc77777cccccddddddcaaa777aaaaaaaaa9999a9999999aaaaaaaaaaaaaaaa9999999999999ddddcccccc7777777ccdd77797777777aaa1111111111111111111cc777cccccccdddddcaaa79999aaaaaaaa999aa999999a77777aaaaaaaaaaa999999999999dddccccccc7777777ccddd799777777aaaa1111111111111111111cccccccccccccddddcaaaa999999999999999aaaaaaaa777777777aaaaaaaaaa999999999adddcccccccc777777cddddd9977777aaaaa1111111111111111111ccccccdcccccccdddcaaaaaa999999999999aaaaaaaaa77777777777aaaaaaaaaaa99999aaddccccccccc777cccccddddd97777aaaaa911111111111111111111ccccdddcccccccddcaaaaaaaaaaa999999777777777a7777777777777aaaaa77777aaaaadddccccccccccccccccccddddd9777aaaa9911111111111111111111111ddddddccccdddc777777aaaaaaaaaa7777777777777aaaa77777777aaa7777777aaaaddcccccccddcccccccccccdddda777aaa999111111111111111111177777dddddddddddcc7777777777aaaaaa7777777777777aaaaaa777777aa77777777aaaaddccccccddddccccccccccddddaa777a9999111111111111111111777777777ddddddddc77aaa77777777aaaa77777aaa77799aaaaaaaa7777a7777aaaa77aaadddcccdddddddcccccccccddddaaa799999a1111111111111111117777777777777dddda77aaaaaa777777aaa777aaaaaaa9999aaaaaaaa77a7777aaaaa99aaaadddddddddddddccccccccddddaaaaa999aa111111111111111111777aaaa7777777aaaa99aaaaaaaa7779aaa777aaaaaaa999999aaaaaaaa7777aaaaa999aaaaadddddddddddddcccccccddddaaaaaaaaaa111111111111111aaa777aaaaaaa777779aa9999aaaaaaaaa99aa777aaaaaaa999a999999aa97777aaaaaa999aaaaaccddddddddddddcccccddddd7777777aaa11111111111111aaaaa77aaaaaaaaa77a9aaa99999aaaaaa999aa777aaaaaa9999aaa99999997777aaaaa9999aaaaaaccddddddddddddcccdddddd77777777aa11111111177777777aaaa999999aaaaa999aaa9999999999999aa7779999999999aaaa999997777aaaaaa9999aaa777accddddddddddddddddddd7777777a9aa11111111177777777777777999999aaa999aaaaaa999999999aaa7799999999999aaaaaa9977777aaaaa9999aaa777777accddddddddddddcccd7777aaa999aa111111117777777777777777a9999999999aaaaaaaaaaa999aaaaa99999999999aaaaaaaaa7777aaaaaa9999aa77777777accccccccccccccaaaaaaaaaaa99aa1111111177aaaaa7777777777a999999999aaaaaaa7777777777777a99999999aaaaaaaaa7777aaaaaa9999aa7777777777aa7777777a7777aaaaaaaaaa999aa1111111a777aaaaaaaaaa7777aaaa99999aaaaaa7777777777777779aaaaaaaaaaaaaaaaa777aaaaaaa9999aa777aaa7777a777777777a777aaaaaaaaa9999aa11111aaa777aaaaaaaaaaa999aaaaaaaaaaaaaaa77777777777777999aaaaaaaaaaaaaaaa77aaaaaaa9999aa777aaaaa777777777777799779999999999999aa1111aaaa7779999999aaaa999aaaaaaaaaaaaa77777aaaaaaaaaa9999aaaaaaaaaaaaaaaaa7aaaaa999999aa777aaaaaa997777aaaa7999799999999999999aa11aaaaaaa799999999999997777777aaaaaaa7777777aaaaaaaaa9999a77777777777777aaa9999999999aaa799aaaaaa99777aaaaaa999a999999999999aaaaaaaaaa7777aa9999999977777777777aaaaa777777777aaaaaaaa99997777777777777777aa999999999aaaaa99aaaaa99777aaaaaa9999aaaaaaaaaaaaaaaaaaaaaa7777a9aaaaa9977777777aaaa99aaaa7777777777999999999997777777777777779aaa9999999aaaaaa9999aa999777aaaaaa9999aaaaaaaaaaaaaaaaaaaa7777aa999aaaaa777777aaaaaaa999aaa777777777777999999999777aaaaaaaaaaa999aaaa9999aaaaaaaa99999999777aaaaa9999aaaaaaaaaaaaaaaaaaaa7777aaa999aaaaa7777aaaaaaaaa999aa7777aa7ccc77777999999a777aaaaaaaaaaa999aaaaaaaaaaaaaaaaa9999999777aaaaa9999aaaaaaaaaaaaaaaaaa77777aaaa999aaaaa777aaaaaaaaaa999aa7777acccccc77777aaaaaa777aaaaaaa7777999aaaaaaaaaaaaaaaaaaaa999777aaaaaa999aaaa77777777777aaaa7777aaaaa999aaaaa777aaaaaaaaa9999aa777ccccccccccc77aaaaaa777999999777777777aaaaaa7777777aaaaaaaaa777aaaaa999aa777777777777777aaa77aaaaaa9999aaaaaaa77aaaa99999999aa7ccc7777cccccccccaaaa7777999997777777777777aa77777777777aaaaaa777aaaaa999aa7777777777777799aaaaaaaa999999aaaaaa77777799999999aaccc777777777ccccccdda77779999997777777777777777777777777777aaaa777aaaa9999a7777777aaaaaaaa999aaaaa9999999aaaaaaa7777777799aaaaaacc777777777777cccddddd77aa999977777aaaa7777777777aaaa777777777a777aaaa999aa77777aaaaaaaaaa999aa99999999aaaaaaaaa77aa777777aaaaadccc77777777777ccccddddddaa99997777aaaaaaaa7777777aaaaaa77777777a77aaa9999aa777aaaaaaaaaaaa999a77799aaaaaaaaaaaa777aaaaa777777addcccc7777777777ccccccdddddaa9997777aaaaaaaaaaa7777aaaaaaaaa77777aa9999999aaa777aaaaaaaaaaaa999a77777aaaaaaaaaaa77aaaaaaaaa77777dddccccc77777777cccccccccddd9999777aaaaaaaaaaaaa7a99aaaaaaaaaa7a99a9999999aaaa77999999999999999a7777777aaaaaaaaa99aaaaaaaaaa7777ddddddcccc77777cccccccccccdd999a777aaaaaaaaaaaaaa99999aaaaaaaa9999aa99999aaaaa79999999999999999aaa7777777aaaaaaa999aaaaaaaaaaa77ddddddcccccc77ccdcccccccccdddaaa777aaaaaaaaaaaaaa99999999aaaa99999aaaaaaaaaaaaa999999999999999aaaaaaaa77777aaaaaa99999aaaaaaaaa77dddddcccccccccdddccccccccdddaaa77799aaaaaaaaaaa999a99999999999999aaaaaaaaaaaaaa99999999999aaaaaaaaaaaa777777aaaaa9999999aaaaaaa7dddddcccccccdddddddcccccccdddaaa799999999aaaa9999aaaa99999999999aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
cubg="aaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1ccccc1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1c55555c1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1c5555555c111a1a111aa1111a1111aaaaa111aaa11aa11aaa1a1111aa111aa1c555ccc55c1cc1c1ccc11cccc1cccc1aaa1ccc1a1cc11cc1a1c1cccc11ccc1a1c55c111cc1c55c5c555cc5555c5555c1a1c555c1c55cc55c1c5c5555cc555c11c11c1aa111c55c5c55c5c55ccc55cc1a1c55cc5c55c5c555c55c55ccc55cc1a1c11c1aaaa1c11c1c111cc111cc111c1a1c11cccc11c1c11c1c1c111cc111c1a1c11c1aaaa1c11c1c11c1c11c1c11c1aa1c11c11c1111c11ccc1c11c11cc11c11c11c1aa111c00c0c00c0c00ccc00cc1a1c00cc0c00c0c00c1c0c00cc1cc00c11c00c111cc11c00cc000cc0000c0000c1a1c0000c00c0c00c1c0c0000c000c1a1c000ccc00c11cc11ccc11cccc1cccc1aaa1cccc1cc1c1cc1a1c1cccc1ccc1aaa1c0000000c1a11aa111aa1111a1111aaaaa1111a11a1a11aaa1a1111a111aaaaa1c00000c1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1ccccc1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
w2spr="1511115100000000000000000000000000000000000000000000000000000000000000008882888222bbbb2e44424442ffffffffffffff77ff6fffff77777777158888810077700000777000007070000077700000777000007770000077700077707770822182212b7777b0422e422e96ffff69fffff767ff66ffff7777777788222222000070000000700000707000007000000070000000007000007070007000007082218221b7bbbb63422e422e95777d74ffff767fff66f6667777777782d36d36007770000007700000777000007770000077700000007000007770007700070082218221b7b77363422e422e967dd774fff767fffff6666f77777777206b76b7007000000000700000007000000070000070700000007000007070007000700082112121b7b66363422e422e457777d4fd767ffffddddfff7777777715555500007770000077700000007000007770000077700000007000007770007770777081331181b7333363422e422e46ddd772fdd7ffffdddfddff77777777110000010000000000000000000000000000000000000000000000000000000000000000813b318123666630422e422e26777662f455ffffffffddff77777777111111110000000000000000000000000000000000000000000000000000000000000000813b3181e03333002eee2eeeff6766ff4ffffffffffffdff77777777222e422e2222222e44444442ffffffffffbfff3fffffffffffffffffffffffffffdfff5fff5fff1f422e222e222e422e813b3181eeeeeeeeaaaaaa9fff422eff2ee0422e2eeeeee04222222effffffffffbfff3ffffff7bb3b7fffffff7fafffffdfff5fff75f51f422e2ee02ee0422e813b3181eeeeeeeea999994fff422eff2ee0422e2eeeeee04222222efff333ffff7bfb3fffffbbffffbbffffff4a49ffff7dfd5ffff151ff422e2ee02ee0422e81331181eeeeeeee944444ffff422effe0002eeee00000002eeeeeeeff37bb3ffff3b3ffffffbffffffbffffff2a29fffff5d5ffffff5fff2eeee000e0002eee82828821eeeeeeeeeeeeefffff422eff44422222222e2222222e2222ff3bbb3fffffffffffff3bffffb3ffffff9999ffffffdfffffff1fff222e2222222e222282218221eeeeeeeeee22efffff422eff422e2eeeeee02eeeeee02eeeff3bbb3ffffffffffffff333333ffffffffa99faffff5ffffff515ffeee02eeeeee02eee82218221eeeeeeeea9422effff422eff422e2eeeeee02eeeeee02eeefff333fffffffffffffffffffffffffffffaa9f9fffd5dffff51f11feee02eeeeee02eee82218221eeeeeeee44222effff422eff422ee0000000e0000000e000ffffffffffffffffffffffffffffffffff7a999fffd5f55fff5fff1f0000e0000000e00021112111eeeeeeeeeeeeeeffff422effffffffff2288882effccddff44444442444444422222222efaaaaaa9aaaaaaa9f5555555f55555552222222e2222222e000000ee00000000eeeeeeeebbb3bbb3ffffffff28777780fc77ccdf4222222e4222222e2eeeeee0fa999994a9999994fddddd55fddddd552eeeeee02eeeeee000000eee00000000eeeeeeeeb331b331ffffffff87888862c777cccd4222222e4222222e2eeeeee0ff44444494444444ff55555fff55555f2eeeeee02eeeeee00000eeeee0000000eeffffeeb331b331f7ffffff87877262dcccdddc2eeeeeee2eeeeeeee0000000fff2eeeeeeeeeeeefff5d5fffff151ffe0000000e00000000000eeeee0000000eeffffeeb331b331f6fff7ff87866262fdccddcf44422222222e444244444442fff422ee222ee222ffffdfffffff1fff44422222222e4442000eeeeeee000000eeffffeeb3113131f6fff6f787222262ffdcdcff422e2eeeeee0422e4222222eff422ea942ea942effff5ffffff515ff422e2eeeeee0422e000eeeeeeeeee000eeffffeeb12211b1fdf7f6f622666620f2fdcfef422e2eeeeee0422e4222222eff42224422244222fffd5dffff51f11f422e2eeeeee0422e000eeeeeeeeeee00eeeeeeeeb12821b1fdf6fdfde0222200f222eeef422ee0000000422e2eeeeeeeff2eeeeeeeeeeeeeffd5f55fff5fff1f422ee0000000422e00eeeeeeeeeeeee0eeeeeeeeb12821b1ffffffff422e222e222e422e422e222e222e422e44444442f4444442444444424444442fbbbbbbb3ffffffff0000000e00000000ffffffff00000000b12821b1ffffffff422e2ee02ee0422e422e2ee02ee0422e4222222ef422222e4222222e422222efb3333331ffffffff000000eee0000000ffffffff00077000b12821b1ffffffff422e2ee02ee0422e422e2ee02ee0422e2eeeeeeeffeeeeee2eeeeeee2eeeeeffb3333331ffffffff00000eeee0000000ffffffff00700000b12211b1ffffffff2eeee000e0002eee2eeee000e0002eee42222222fffe00000000000000000fff31111111ffffffff00eeeeeeeee00000ffffffff00777000b3b3bb31ffffffff444444424444444244422222222e4442f444442ffff2ee00eee00eee00ee0fffffffffffffffffff00eeeeeeeeeee000ffffffff00007000b331b331ffffffff4222222e4222222e422e2eeeeee0422eff2eeeffff2ee0b32e0b32e0b32ee0ffffffffffffffffff0eeeeeeeeeeeee00ffffffff00770000b331b331fa777a9f4222222e4222222e422e2eeeeee0422eff422effff2eee22eee22eee22eee0ffffffffffffffffff0eeeeeeeeeeeee00ffffffff00000000b331b331f9aaa99f2eeeeeee2eeeeeee422ee0000000422eff422effffe0000000000000000000ffffffffffffffffffeeeeeeeeeeeeeeee"
w2map="ゆ🐱████▒█⬇️██▒█▒█☉███☉█🐱웃█🐱♥█●▒█웃▒██▒███よゆ█🐱█🐱█🐱█☉██▒██よゆ███☉█☉█🐱●█●█●█●🐱█▒█▒█▒███▒█🐱⌂█░█🐱█🐱█████よゆ▒█▒█🐱✽█✽🐱█🐱█▒█🐱████🐱█♥█🐱☉🐱████よ➡️➡️ひた███は➡️ひ███████████む████ャ█むむ███⬅️█████ひた███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️つしししししししししししくしししち➡️➡️➡️➡️➡️➡️ひむ████た██つしの▥███ねしの███████ヌ███む████☉█むむ███⬅️██メ██ひ▥███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️つしししししししししししししししししの███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ██████ヌ████████は➡️➡️➡️➡️➡️➡️ひむ████▥██ひ█⬆️▥███に█웃███████メ███む████ヌ█むむ███⬅️█████ひ▥█ぬ█⌂➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ███ヌ████そ█そ█そ████████は➡️つししししししししししししししししひ██████☉████████ねししししししのむ████⌂██ひ██▥█ら█よぬう███████☉███む██████むむ███⬅️█████ひ▥█こ★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ████████▤█▤█▤████████は➡️ひむむむ█そ█▥█████████ひ████ぬ███ぬ███████████ヌ█むむ███████ひ██こ★★★★★★さ██ぬ███ク███む████☉█むむ███웃██け██の⬅️█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ████████▤█⬆️█▤████████は➡️ひむむむ█▤█▥██████メ██ひ███こ★★★★★さみこ★さ████████むむ███████ひ██は➡️➡️➡️➡️➡️➡️い★★★さ█へほま█ぬむ██ぬ█ユ█むむ███うぬへほま████は➡️つししししししししし➡️⌂█ぬ███ぬ██▤███▤███ぬ████は➡️ひむむむ█▤█▥█████████ひ███は➡️➡️➡️➡️➡️ひふは➡️ひ██ぬ█きき██むむ███へほま█ひ██ねしししししちつし⌂し…★★★★★さふ█こ★★★★★さ█ふこ★★★★★★███は➡️ひむむ██く████➡️い★★★★★さふ█⬆️███⬆️█ふこ★さ███は➡️ひむむむ█▤█▥█████████ひ███は➡️➡️➡️➡️➡️ひかは➡️い★★★★★★★★さふ█ふこ★★★★ひ████████くひ███は➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️ひ█かは➡️➡️➡️➡️➡️➡️██ふねしのむむ██⬅️██メ█➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️ひ███ねしのむむむ█▤█▥██████け██ひ███は➡️➡️➡️➡️➡️ひかは➡️つししししち➡️➡️➡️ひか█かは➡️➡️➡️➡️ひ████████ねの███は➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️ひ█かは➡️➡️➡️➡️➡️➡️██かに██むむ██웃██😐█➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️ひ████に█むむむ█⬆️█▥ぬ██ぬ█へほま█ひふ██は➡️➡️➡️➡️➡️ひかは➡️ひ████は➡️➡️➡️ひか█かは➡️➡️➡️➡️ひ████████웃████は➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️ひ█ふねち➡️➡️➡️➡️➡️█らかよ█ぬむむ██うぬへほま➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️ひ█ら█ぬよぬむむむ███こ★さふこ★★★★★ひか██は➡️➡️➡️➡️➡️ひふねしの██メ█は➡️➡️➡️ひか█かは➡️➡️➡️➡️ひ█████ぬ██うユ█ぬ█は➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️ひ█か█は➡️➡️➡️➡️➡️★★★★★★★さ█こ★★★★★➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️い★★★★★★★さふ███ねしのかは➡️➡️➡️➡️➡️ひか██は➡️➡️➡️➡️➡️ひか⬅️█ャ████は➡️➡️➡️ひか█かは➡️➡️➡️➡️い★★★★★★★★★★★★★あ➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️ひきか█く➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか██████かは➡️➡️➡️➡️➡️ひか██は➡️➡️➡️➡️➡️ひか웃█☉██け█は➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️い★★★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか██████かは➡️➡️➡️➡️➡️ひから█は➡️➡️➡️➡️➡️ひかうむむ█へほまは➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひきは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか██████かは➡️➡️➡️➡️➡️い★★★あ➡️➡️➡️➡️➡️い★★★★★★★★あ➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️い★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか███████かは➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか██████かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█かは➡️➡️➡️➡️ゆ█🐱█🐱███🐱▒██●█●█🐱█🐱█🐱█▒█░█🐱☉🐱█⬇️███よゆ█▒██🐱█♥█♥█🐱✽🐱█░🐱█░█░██▒█████よゆ▒█▒███▒█🐱██▒█🐱▒🐱█⬇️██░█🐱█████よゆ█♥▒🐱█▒▒▒███▒██████░████🐱✽🐱█🐱███よ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひむ███████████はつしししししの███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️しししししちつししししししち➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ█████████████████████メ█████████████████████は➡️つしししち➡️➡️➡️つしししししち➡️➡️➡️ひむ███████████はひ███ヌ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█████は⌂█⬆️████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ██メ██████████████████☉█████████████☉███████は➡️ひ███は➡️➡️➡️ひ█████は➡️➡️➡️ひむ███████████はひ█████████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█████はひ██████ねししししししししししの█████████████████████ク█████████████メ███████は➡️ひ███は➡️➡️➡️ひ██きユ█は➡️➡️➡️ひむ███████████はひ███☉█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█ら███はひ██████웃███☉██☉██████け█████████████████へほま████████████████████ねしの███は➡️➡️➡️ひふこ★さ█は➡️➡️➡️ひむ███████████はひ███ネ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️★★さ██はひ██████う███ユ█ネユ█ユ█ぬ█へほま███████████☉██ふこ★★★さ███████████ク████████た████ねしししのかは➡️ひ█は➡️➡️➡️ひむ███████████くひ█ぬ█ぬ█ぬ███は➡️➡️➡️➡️➡️➡️➡️➡️➡️つししししし➡️➡️ひ██はひ███こ★★さ█ぬ█こ★★★★★★★★★★★★██████████メ██かは★し★ひ██メ████ぬネぬへほま███████▥████ャ█ヌ██かは➡️ひ█ねしししのむ█████ク████ふはひ█こ★★★さふ██ねしししししししししの█████➡️➡️ひ██はひ███ねしし…★★★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█████████████かねしししの███████ふこ★★★★★██████▥████☉████かは➡️ひ█████むむ██☉██け████かはひ█は➡️➡️➡️ひか███████████████☉██➡️➡️ひ██はひぬ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█████☉████ク██か████ヌ██ク████かは➡️★し★➡️██████▥██████ぬ██かは➡️ひ██き██むむ██ネ█へほま███かはひ█は➡️➡️➡️ひか███████████ぬ███ク██➡️➡️ひふ█はい★さ████く➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️█████ネ█ぬ█へほま█か███████☉████かは➡️➡️➡️➡️➡️██████▥██ふこ★★★★★★あ➡️ひふこ★さ█むむ█ふこ★★★★★██かねの█は➡️➡️➡️ひか███████☉██こ★さ██け██➡️➡️ひか█ねししの████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️つち⬅️つち➡️█████こ★★★★★★★さ███████け████かは➡️➡️➡️➡️➡️█らぬ███▥██かは➡️➡️➡️➡️➡️➡️➡️➡️ひかは➡️ひ█むむ█かは➡️➡️➡️➡️➡️██か웃██は➡️➡️➡️ひか█ぬ█きぬユ█ユ█ユは➡️ひ█へほま█つしのか██████こ★★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️いあ➡️いあ➡️█ら█ユ█は➡️➡️➡️★し★➡️ひぬ█きき██へほま███かは➡️➡️➡️➡️➡️★★★さ██▥██かは➡️➡️➡️➡️➡️➡️➡️➡️ひかは➡️ひぬむむ█かは➡️➡️➡️➡️➡️█らかうぬ█は➡️➡️➡️ひか█ふこ★★★★★★★あ➡️い★★★★★ひ█にか██████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️⬅️➡️⬅️➡️⬅️➡️★★★★★あ➡️➡️➡️➡️➡️➡️➡️い★★★★★★★★★さふ█かは➡️➡️➡️➡️➡️➡️➡️➡️ひ██⬅️██かは➡️➡️➡️➡️➡️➡️➡️➡️ひかは➡️い★さふ█かは➡️➡️➡️➡️➡️★★★★★★あ➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひぬよか█きユ███は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️つち➡️つち➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️し★しひか█かは➡️➡️➡️➡️➡️➡️➡️➡️ひきききききかは➡️➡️➡️➡️➡️➡️➡️➡️ひかは➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️い★★★★★★★★★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️いあ⬅️いあ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️い★★★★★★あ➡️➡️➡️➡️➡️➡️➡️➡️ひかは➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか█かは➡️➡️➡️➡️➡️████████████████ゆ█░█▒█🐱█🐱█⬇️██▒⬇️██🐱█▒🐱▒█🐱█████🐱█♥█♥█●█●█●█🐱██よゆ████▒█🐱▒█🐱█🐱█░█▒▒███⬇️█🐱██🐱█▒█▒█▒██▒█▒█🐱🐱▒██よゆ█▒⬇️🐱░███░🐱⬇️▒█よゆ█⬅️███よ█████████████████████た█た████████████████████████ヌ███そ█そ████は➡️██████むむ█そ█ヌ█そ█████☉█████████は➡️➡️➡️ひ██むむむむ█████➡️ひ███████████は➡️➡️➡️➡️➡️➡️➡️➡️█████████████████████▥█▥█ヌ██████████████████████████▤█▤████は➡️██████むむ█▤███▤█████メ█████████く➡️➡️➡️ひ∧ぬむむむむ█████➡️ひ███████████は➡️➡️➡️➡️➡️➡️➡️➡️█████████████████████▥█▥████████████████⬅️█⬅️█⬅️███████▤█▤████⌂➡️█████ぬむむ█▤███▤█████████████⬅️⬅️は➡️➡️➡️ひふふこ★さふ█████➡️ひ███████████は➡️➡️➡️➡️➡️➡️➡️➡️██████てえと████████████▥█▥████████████████⬅️⬅️し⬅️⬅️███████▤█▤████は➡️████こ★さふ█▤███▤█████ク██☉██████は➡️➡️➡️ひかかは➡️ひか█████➡️ひ███████████は➡️ししししししし██████えなえ████████████▥█▥████████████████⬅️███⬅️███████▤█▤██ぬ█は➡️████は➡️ひか█⬆️███▤██ぬ█へほま█ネ██████ねし⌂しのかかは➡️ひか█████➡️ひ███████████は➡️█████████████えなえ████てえも█████▥█▥███████████ぬきぬネ█に███に███████▤█▤█こ★★あ➡️███ふは➡️ひか█████⬆️█こ★★★★★★さ██████⬅️███⬅️かかは➡️ひか███メ█➡️ひ███████████は➡️███████も███めええええと██めえなえ█████▥ぬ▥██████████こ★★★さ█よ█け█よ███████▤█⬆️█は➡️➡️➡️➡️███かは➡️ひか███████は➡️➡️➡️➡️➡️➡️ひ██████⬅️███⬅️かかは➡️ひか█████➡️ひ███████████は➡️███████え██めなななななええもえななな█████こ★さ█████ぬきネ██は➡️➡️➡️ひふ⬅️へほま⬅️█ぬ███ぬ█⬆️███は➡️➡️➡️➡️███かは➡️ひか███████は➡️➡️➡️➡️➡️➡️ひ██████웃███にかかは➡️ひか☉██け█➡️ひ█████キ█████は➡️███████ええもえなななななえなええななな█████ねしの███こ★★★★さ█ねしししのかこ★★★さ█こ★★★さ█████は➡️➡️➡️➡️███かは➡️ひか███████は➡️➡️➡️➡️➡️➡️ひ██████う█ぬ█よかかは➡️ひかユユへほま➡️ひ███████████は➡️███████えなええなななななえなええななな███████████は➡️➡️➡️➡️ひ█ャ███ャかねしししの█は➡️➡️➡️ひ█████は➡️➡️➡️➡️███かは➡️ひか███████は➡️➡️➡️➡️➡️➡️ひきこさみこ★★★★★★★★あ➡️い★★★★★★➡️ひ██ふ█████ふ██は➡️███ぬ❎ぬ█えなええなななななえなええななな███████☉█こ★あ➡️➡️➡️➡️ひ█☉███☉か██████は➡️➡️➡️ひ█████は➡️➡️➡️➡️█ら█かは➡️ひか███████ねししち➡️➡️➡️い★あひ█は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ██か█████か██は➡️█らぬすせお█えなええなななななえなええななな█ら█⬅️███ユ█は➡️➡️➡️➡️➡️➡️ひ██ききき█か█ききき██は➡️➡️➡️ひ█████は➡️➡️➡️➡️★★★★あ➡️ひか██████████は➡️➡️➡️➡️➡️➡️ひぬは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ██か██ら██か██は➡️★★★★★★★えなええなななななえなええななな★★★★★★★★★あ➡️➡️➡️➡️➡️➡️い★★★★★★★★★★★★★あ➡️➡️➡️ひ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか██████████は➡️➡️➡️➡️➡️➡️い★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひき█か█へほま█か█きは➡️➡️➡️➡️➡️➡️➡️➡️えなええなななななえなええななな➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか████████ぬぬは➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️い★★★★★★★★★★★あ➡️➡️➡️➡️➡️➡️➡️➡️えなええなななななえなええななな➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひ█████は➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ひか███████こ★★あ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️"
gt=0
t=0
ft=0
x=16
y=0
sp_x=x
sp_y=y
xv=0
yv=0
ac=0.05
fr=ac
dec=0.1
gv=0.1
jp=-2.5
top=1.5
mxv=2.5
myv=3
d=false
mode="splash"
coin=0
lives=9
max_l=9
missed=false
sword=0
inv=0
score=0
gm_spr=96
gm_y=0
gm_yv=0
menu=false
menu_sel=0
menu_opts=split("normal,easy mode,one life,leave no evidence,one life + no evidence,how to play")
menu_desc=split("the normal game,there will be less enemies,you only have one life,don't miss. ever,one miss will ruin your game,tells you some tips")
nomiss=false
w1=false
gm=false
grace=0
gs=1
gst=1
code_=1
play=false
fastest=dget(0)
fastname={}
for i=1,5 do
fastname[i]=dget(i)
end
if(fastest==0)fastest=1800 dset(0,fastest) fastname=split("14,9,14,10,1")
letter=1
timer=1799
add_levels()
arm=1
arms=1
fadep=split("0xffff.8,0xfffe.8,0xffec.8,0xfec8.8,0xec80.8,0xc800.8,0x8000.8,0x0.8")
gx=64
gy=64
gxa=64
gya=64
cx=x-64
cxt=cx
cxo=0
c_max=128*7+1
doublejump=false
lvl_msg=""
tap_up=0
tap_down=0
tap_t=20
tospr(cubg,64,0,0)
tospr(title,96,0,32)
menuitem(2,"---------------",function()end)
resetscore=function() dset(0,0) run() end
menuitem(3,"reset best time",resetscore)
menuitem(4,"! resets game !",resetscore)
menuitem(5,"---------------",function()end)
end
function _update60()
poke(0x5f5c,-1)
if mode=="splash" then
 if (t==300 or (btnp()~=0 and not btn(6))) st=true
 if st and abs(lh)<1 then
  t=0
  sfx(-1)
  mode="title"
  fade()
  sfx(46)
 end
 if t==1 then
  sfx(8)
 end
elseif mode=="instruct" then
 if btnp(4) then
  music(-1,1000)
  mode="title"
  t=0
  sfx(-1)
  fade()
  sfx(46)
  tospr(title,96,0,32)
 end
elseif mode=="title" then
 if menu then
  if btnp(2) then
   menu_sel-=1
   sfx(20)
  end
  if btnp(3) then
   menu_sel+=1
   sfx(20)
  end
  menu_sel%=#menu_opts
  if btnp(5) then
   menu=false
   sfx(7)
  end
 else
	 if btnp(tonum(sub(code,code_,code_))) and not gm then
	  if code_>#code then
	   sfx(12)
	   gm=true
	   code_=1
	  else
	   sfx(34)
	   code_+=1
	  end
	 elseif btnp()~=0 then
	  if(code_>1)sfx(10)
	  code_=1
	 end
 end
 if btnp(4) then
  sfx(13)
  if t<120 then
   t=120
  else
   if menu then
    if menu_sel==1 then
     easy=true
    end
    if menu_sel==2 or menu_sel==4 then
     lives=1
     max_l=1
    end
    if menu_sel==3 or menu_sel==4 then
     nomiss=true
    end
    if menu_sel==5 then
			  music(-1,1000)
			  mode="instruct"
			  fade()
			  reload()
			  music(19)
			  menu=false
			 else
			  play=true
    end
   else
    if gm then
     play=true
    else
     menu=true
    end
   end
  end
 end
 if play then
  play=false
  reload(0,0,0x2fff)
  mode="game"
  music(-1,1000)
  fade()
	 goto_lev(level)
  offset=time()
 end
 if t==120 then
  sfx(-1)
  music(0)
 end
elseif mode=="game" then
 max_star=25
 for i in all(star) do
  stil=mget(i.x/8,i.y/8)
  if i.m then
   i.x+=i.xv*gs
   i.yv+=gv*gs
   i.yv=min(i.yv,3)
   i.y+=i.yv*gs
   if stil==10 then
    i.m=false
    for ix=0,127 do
     for iy=1,15 do
      if fget(mget(ix,iy),5) and fget(mget(ix,iy),3) then
       mset(ix,iy,0)
      end
     end
    end
    sfx(37)
   elseif stil==33 then
    i.m=false
    for iy=1,15 do
     if fget(mget(i.x/8,iy),5) then
      mset(i.x/8,iy,0)
     end
    end
    sfx(37)
   elseif fget(stil,0) then
    i.m=false
    missed=true
   elseif i.x<0 or i.x>128*8 or i.y>128 then
    del(star,i)
    missed=true
   end
  else
   i.xv=0
   i.yv=0
   if not (fget(stil,0) or fget(stil,3)) then
    i.m=true
   end
   if #star>max_star then
    del(star,i)
    make_dust(i.x,i.y)
   end
  end
 end
 for ix=flr(cx/8),flr(cx/8)+18 do
  for iy=0,15 do
   til=mget(ix,iy)
   if fget(til,7) then
    placeme=true
    if mget(ix,iy-1)==8 then
     mset(ix,iy-1,0)
     if(easy)placeme=false
    elseif mget(ix,iy+1)==8 then
     mset(ix,iy+1,0)
     if(easy)placeme=false
    end
    if(placeme)make_obj(ix*8+4,iy*8+4,til)
    mset(ix,iy,0)
   end
  end
 end
 id=0
 for i in all(obj) do
  id+=1
  ob_grv=true
  ob_static=false
  ob_friction=true
  ob_dmg=true
  ob_bounce=false
  ob_inv=false
  ob_die=false
  ob_sneak_attack=false
  ob_ghost=false
  ob_solid=true
  xrng=6
  yrng=6
  if i.f==82 then
   xrng=7
   yrng=10
   i.inv=i.inv or 0
   if i.inv>0 then
    ob_inv=true
    ob_ghost=true
   end
   i.inv=max(i.inv-1)*gs
   if i.die then
    ob_inv=true
    ob_grv=false
    ob_dmg=false
    ob_ghost=true
    if flr(i.t)%4==1 then
     make_dust(i.x+rnd(8)-4,i.y+rnd(8)-4,flr(rnd(8))+8)
    end
    i.xv=(sp_x-i.x)/20
    i.yv=(sp_y-i.y)/20
    i.x+=rnd(2)-1*gs
    i.y+=rnd(2)-1*gs
    i.frame=168
   elseif i.t<180 then
    ob_inv=true
    ob_friction=false
    ob_grv=false
    ob_dmg=false
    ob_ghost=true
    if flr(i.t)==179 then
     sfx(-1)
     sfx(0)
     music(44)
    end
    i.frame=130
   else
    ob_friction=false
    ob_grv=false
    ob_solid=false
    i.tf=i.tf or i.t
    i.stage=i.stage or 1
    if w1 then
     bx=x
    else
     bx=sp_x
    end
    -- float
    if i.stage==0 then
     i.xv=(x+sin(i.t/300)*32-i.x)/15
     i.yv=(y-40+cos(i.t/200)*16-i.y)/15
     i.frame=128
     i.tf=i.t
    -- throw stars
    elseif i.stage==1 then
     i.xv=(bx-i.x)/30
     i.yv=(sp_y-64-i.y)/20
     if i.t-i.tf>40 then
      i.frame=flr(132+i.t%80\20*2)
      if (i.frame==134 or i.frame==138) and
         i.frame~=i.pframe and i.t-i.tf>30 then
       make_obj(i.x,i.y,96,9,0,0.5)
      end
     end
    -- more float
    elseif i.stage==2 then
     i.xv=(x+sin(i.t/100)*32-i.x)/20
     i.yv=(y-40-i.y)/20
     i.frame=170
     i.tf=i.t
    -- ghost
    elseif i.stage==3 then
     i.xv=(x+sin(i.t/100)*24-i.x)/15
     i.yv=(y-32+cos(i.t/300)*12-i.y)/15
     i.frame=130
     if flr(i.t-i.tf)%100==1 then
      sfx(6)
     elseif flr(i.t-i.tf)%100==50 then
      make_obj(i.x,i.y-24,125)
      sfx(7)
     end
    -- even more float
    elseif i.stage==4 then
     i.xv=(bx+sin(i.t/200)*64-i.x)/20
     i.yv=(sp_y-20-i.y)/40
     i.frame=160+t%8\2*2
     i.tf=i.t
    -- more ghost
    elseif i.stage==5 then
     i.xv=(bx+sin(i.t/200)*48-i.x)/20
     i.yv=(y-64+cos(i.t/300)*12-i.y)/15
     i.frame=130
     if flr(i.t-i.tf)%64==1 then
      sfx(6)
     elseif flr(i.t-i.tf)%64==50 then
      make_obj(i.x,i.y-24,125)
      sfx(7)
     end
    -- float float float
    elseif i.stage==6 then
     i.xv=(bx-i.x)/20
     i.yv=(sp_y-64-i.y)/20
     i.frame=170
    -- sword chase
    elseif i.stage==7 then
     i.xv=(x-i.x)/80
     i.yv=(y-i.y)/80
     i.frame=160+t%8\2*2
    else
     i.stage=1
    end
    if flr(i.t)%180==1 then
     i.stage+=1
    end
    if w1 then
     i.stage%=8
    else
     i.stage%=5
    end
    i.d=i.xv<0
    i.pframe=i.frame
   end
  elseif i.f==83 then
   i.d=false
   if rnd((i.x-x)/10)<2 then
    i.s=0
   elseif rnd(15)<1 then
    i.s=2
   else
    i.s=1
   end
  elseif i.f==96 then
   ob_ghost=true
   ob_solid=false
   i.s=i.t%20/10
  elseif i.f==98 then
   ob_inv=true
   ob_friction=false
   ob_grv=false
   ob_dmg=false
   ob_ghost=true
   i.light=true
   i.h=130
   for a=0,i.h do
    x1=a/16
    if flr(y)==a and x>=i.x-x1 and x<=i.x+x1 then
     ob_dmg=true
     xrng=256
     yrng=128
    end
   end
   i.o=i.o or i.x
   i.x=i.o+sin(i.t/700)*64
  elseif i.f==99 and not i.stun then
   ob_friction=false
   ob_inv=true
   if i.seen then
    left_g=fget(mget((i.x-3)/8,(i.y+4)/8),0) or fget(mget((i.x-3)/8,(i.y+4)/8),3)
    right_g=fget(mget((i.x+3)/8,(i.y+4)/8),0) or fget(mget((i.x+3)/8,(i.y+4)/8),3)
    if left_g or right_g then
     i.s=t%40/10
    else
     i.s=-13
    end
    i.xv+=sgn(x-i.x)/20*gs
    i.xv=mid(-.3,i.xv,.3)
    if i.xv>0 then
     i.d=false
    else
     i.d=true
    end
   else
    ob_sneak_attack=true
    i.s=0
    i.xv-=sgn(i.xv)/12*gs
    if i.xv<0.1 then
     i.xv=0
    end
    if i.d then
     left=60
     right=2
    else
     left=2
     right=60
    end
   end
  elseif i.f==109 then
   ob_grv=true
   ob_static=true
   xrng=8
   yrng=16
  elseif i.f==112 and not i.stun then
   ob_friction=false
   if i.seen then
    left_g=fget(mget((i.x-3)/8,(i.y+4)/8),0) or fget(mget((i.x-3)/8,(i.y+4)/8),3)
    right_g=fget(mget((i.x+3)/8,(i.y+4)/8),0) or fget(mget((i.x+3)/8,(i.y+4)/8),3)
    if left_g or right_g then
     if fget(mget((i.x+i.xv*8)/8,i.y/8),0) or not (left_g and right_g) then
      i.yv=-2.5
     end
     i.s=5+t%10/5
    else
     i.s=2+t%15/5
    end
    i.xv+=sgn(x-i.x)/20*gs
    i.xv=mid(-1,i.xv,1)
    if i.xv>0 then
     i.d=false
    else
     i.d=true
    end
   else
    ob_sneak_attack=true
    ob_dmg=false
    i.s=t%30/15
    i.xv-=sgn(i.xv)/12*gs
    if i.xv<0.1 then
     i.xv=0
    end
    if i.d then
     left=60
     right=2
    else
     left=2
     right=60
    end
    if x>i.x-left and x<i.x+right then
     i.seen=true
    end
   end
  elseif i.f==119 then
   ob_bounce=true
   ob_inv=true
   ob_dmg=false
   if i.t>60 then
    i.s=2+i.t%10/5
    if i.t>90 then
     xrng=16
     yrng=12
     for ix=-xrng/8,xrng/8 do
      for iy=-yrng/8,yrng/8 do
       make_dust(ix*8+i.x,iy*8+i.y,8+rnd(3))
       make_dust(ix*8+i.x,iy*8+i.y)
      end
     end
     psfx(27,i.x)
     ob_die=true
     ob_dmg=true
    end
   else
    i.s=i.t%10/5
   end
   i.d=false
  elseif i.f==123 then
   ob_grv=false
   ob_inv=true
   ob_dmg=false
   if i.t%180<=(id*10+20)%180 then
    i.s=1
   else
    i.s=0
   end
   if i.t%180>(id*10)%180 then
    if not i.make then
     make_obj(i.x,i.y-2,119)
     i.make=true
    end
   else
    i.make=false
   end
   i.d=false
  elseif i.f==125 and not i.stun then
   ob_dmg=true
   i.tx=i.tx or {}
   i.ty=i.ty or {}
   add(i.tx,i.x)
   add(i.ty,i.y)
   if #i.tx>9 then
    i.tx[1]=""
    i.ty[1]=""
    del(i.tx,"")
    del(i.ty,"")
   end
   i.xv=mid(-1,(x-i.x)/25,1)
   i.yv=mid(-1,(y-i.y)/25,1)
  end
  if ob_grv then
   i.yv+=gv*gs
  end
  i.yv=min(i.yv,3)
  i.y+=i.yv*gs
  if i.y>132 and i.f~=82 then
   ob_die=true
  end
  if not ob_static then
   i.x+=i.xv*gs
   if ob_friction then
	   i.xv-=sgn(i.xv)/12*gs
	   if abs(i.xv)<0.1 then
	    i.xv=0
	   end
   end
  end
  if ob_solid then
		 if fget(mget((i.x-2)/8,(i.y+4)/8),0) or fget(mget((i.x+2)/8,(i.y+4)/8),0) or
		   (i.yv>0 and (fget(mget((i.x-2)/8,(i.y+4)/8),3) or fget(mget((i.x+2)/8,(i.y+4)/8),3))) then
    i.yv=0
    i.y=flr(i.y/8)*8+4
   end
   if fget(mget(i.x/8,(i.y-4)/8),0) then
    i.y=ceil(i.y/8)*8-4
   end
   if fget(mget((i.x-4)/8,i.y/8),0) then
    i.x=ceil(i.x/8)*8-4
   end
   if fget(mget((i.x+4)/8,i.y/8),0) then
    i.x=flr(i.x/8)*8+4
   end
  end
  i.t=max(i.t+1*gs)
  if ob_dmg and not die and i.x-xrng<x and i.x+xrng>x and
     i.y-yrng<y and i.y+yrng>y and sword==0 and not i.stun then
   c_die()
   i.seen=true
  end
  if i.stun then
   i.stun-=1
   if i.stun<0 then
    i.stun=false
   end
  end
  if not nosword then
   i.next=false
  end
  if i.x-xrng<x and i.x+xrng>x and
     i.y-yrng<y and i.y+yrng>y and sword>0 and not i.next and not ob_ghost then
   i.seen=true
   i.next=true
   i.stun=rng*2
   if ob_inv then
    psfx(34,i.x)
    i.yv=-1
   else
    psfx(25,i.x)
    if ob_sneak_attack then
     i.hp-=4
    else
     i.hp-=2
    end
   end
   if i.hp>0 then
    i.xv=sgn(xv)/2
   else
    for a=0,4 do
     make_dust(i.x,i.y)
    end
  	 psfx(26,i.x)
    ob_die=true
    i.t=200
   end
  end
  rng=6
  for i2 in all(star) do
   if i2.m and not ob_ghost then
    if i.x-xrng<i2.x and i.x+xrng>i2.x and
       i.y-yrng<i2.y and i.y+yrng>i2.y then
		   i.seen=true
     if ob_inv then
      psfx(34,i.x)
     else
		    i.inv=60
	     psfx(25,i.x)
      if ob_sneak_attack then
	      i.hp-=3
      else
	      i.hp-=1
	     end
	     if i.hp>0 then
		     i.xv=sgn(i2.xv)/2
	     else
	      for a=0,4 do
	       make_dust(i.x,i.y)
	      end
		   	 psfx(26,i.x)
	      ob_die=true
       i.t=200
	     end
	    end
	    del(star,i2)
	   end
   end
  end
  if ob_die or i.die then
   if i.f==82 then
    i.die=true
    if stat(24)~=18 then
     sfx(-1)
     music(-1)
     music(18)
    end
    if max(stat(20),stat(21),stat(22),stat(23))==20 or i.t>400 then
     mset(sp_x/8,sp_y/8,34)
	    for a=0,16 do
	     make_dust(i.x+rnd(16)-8,i.y+rnd(16)-4,rnd(7)+8)
	    end
     del(obj,i)
    end
   else
    del(obj,i)
   end
  end
 end
 max_dust=80
 for i in all(dust) do
  i.x+=i.xv*gs
  i.y+=i.yv*gs
  i.xv-=sgn(i.xv)/100*gs
  i.l-=max(#dust/80,1)*gs
  if i.l<0 or i.x<cx-8 or i.x>cx+136 or i.y<0 then
   del(dust,i)
  end
 end
 if die then
  if t==30 then
   sfx(10)
   yv=-3
  end
  if t>30 then
   if yv<0 then
    yv+=gv
    y+=yv
   elseif not popped then
			 for a=0,5 do
			  make_dust(x,y)
			 end
			 popped=true
			 sfx(26)
   end
  end
  if t>128 then
	  fade()
   if lives<1 then
    mode="over"
   else
    goto_lev(level)
	   x=sp_x
	   y=sp_y
    popped=false
    die=false
   end
  end
 elseif pregame then
  rope+=min((y-rope)/10,1.5)*gs
  if rope>y-0.5 then
   pregame=false
  end
  d=false
 else
  if sword==0 then
		 if btn(0) then
		  if xv>0 then
		   xv-=dec*gs
		  elseif xv>-top then
		   xv-=ac*gs
		  end
		  d=true
		 elseif btn(1) then
		  if xv<0 then
		   xv+=dec*gs
		  elseif xv<top then
		   xv+=ac*gs
		  end
		  d=false
		 else
		  if air then
		   frc=fr/3
		  else
		   frc=fr
		  end
		  if abs(xv)<ac then
		   xv=0
		  else
		   xv-=sgn(xv)*frc*gs
		  end
		 end
		end
		if btnp(2) then
   if tap_up>0 then
    arm+=1
   else
    tap_up=tap_t
   end
		elseif btnp(3) then
   if tap_down>0 then
    arm+=1
   else
    tap_down=tap_t
   end
  end
  tap_up=max(tap_up-1)
  tap_down=max(tap_down-1)

	 if air and btnp(4) and not grab then
	  for i=1,4 do
	   for ix=-i,i do
	    for iy=-i,i do
	     gr_y=y/8+iy
	     if gr_y<15 and fget(mget(x/8+ix,gr_y),1) and not grab then
	      gx=flr(x/8+ix)*8+4
	      gy=flr(y/8+iy)*8+4
	      gxa=x
	      gya=y
	      grab=true
	      sfx(20)
	     end
	    end
	   end
	  end
	 end
	 if not btn(4) then
	  grab=false
	 end
	 if grab then
	  jump=false
	  if btn(2) then
	   gmod=10
	  elseif btn(3) then
	   gmod=40
	  else
	   gmod=20
		 end
	  gxv=mid(-2,(gx-x)/gmod,2)
	  gyv=mid(-2,(gy-y)/gmod,2)
	  xv+=gxv/10*gs
	  yv+=gyv/10*gs
		 gxa+=(gx-gxa)/5*gs
		 gya+=(gy-gya)/5*gs
	 end
  if btnp(5) and (air or not btn(3)) then
   if arm==1 then
    sfx(15)
    sp=2.5
    ys=-0.5
    xs=0
    if btn(2) then
     ys=-sp
     if(btn(0))xs=-sp
     if(btn(1))xs=sp
    elseif d then
     xs=-sp
    else
     xs=sp
    end
    if btn(3) then
     ys=sp
     if not (btn(0) or btn(1)) then
      xs=0
     end
    end
    add(star,{x=x,y=y,xv=xs,yv=ys,m=true})
   elseif arm==2 and sword==0 and not nosword then
    sfx(35)
    nosword=true
    sword=20
   end
  end
  if sword>0 and arm==2 then
   if d then
    xv=-2
   else
    xv=2
   end
   yv=0
  else
		 xv=mid(-mxv,xv,mxv)
		 yv+=gv*gs
		 yv=mid(-myv,yv,myv)
		 y+=yv*gs
		end
		x+=xv*gs
		x=mid(4,x,c_max+123)
  cxo=0
	 air=true
	 if y<124 then
	  if fget(mget((x-2)/8,(y+4)/8),0) or fget(mget((x+2)/8,(y+4)/8),0) or
	    (yv>0 and not btn(3) and (fget(mget((x-2)/8,(y+4)/8),3) or fget(mget((x+2)/8,(y+4)/8),3))) then
	   yv=0
	   y=flr(y/8)*8+4
	   jump=false
		  secondjump=false
	   air=false
	   grace=8
	   if sword==0 then
	    nosword=false
	   end
	  elseif yv>0 and (mget((x-2)/8,y/8)==32 or mget((x+2)/8,y/8)==32) then
	   c_die()
	  end
	  if fget(mget((x-2)/8,(y-4)/8),0) or fget(mget((x+2)/8,(y-4)/8),0) then
	   yv=0
	   y=ceil(y/8)*8-4
	  end
	 end
	 if fget(mget((x-4)/8,mid(4,y-2,112)/8),0) or fget(mget((x-4)/8,mid(4,y+2,112)/8),0) then
	  xv=0
	  x=ceil(x/8)*8-4
	  if(arm==2)sword=0
	 end
	 if fget(mget((x+4)/8,mid(4,y-2,112)/8),0) or fget(mget((x+4)/8,mid(4,y+2,112)/8),0) then
	  xv=0
	  x=flr(x/8)*8+4
	  if(arm==2)sword=0
	 end
	 if y<124 then
   tile=mget(x/8,y/8)
   top=1.5
   if tile==32 then
    top=0.5
    if(abs(xv)>top)xv-=0.1*sgn(xv)
   elseif fget(tile,6) then
    lvl_msg=""
    sword=0
    if tile==12 or tile==13 then
     if tile==13 then
      arms=2
      lvl_msg="found a sword!"
     else
      doublejump=true
      lvl_msg="found the double jump scroll!"
     end
     mset(x/8,y/8,0)
     sfx(38)
    else
     sfx(16)
    end
    level+=1
    if level>10 and not w1 then
     level=1
     lvlo=10
     w1=_
     w2()
     add_levels()
     w1=true
    end
    fade()
    goto_lev(level)
   elseif fget(tile,4) then
    mset(x/8,y/8,0)
    sfx(13)
    coin+=1
    for a=0,1 do
     make_dust(flr(x/8)*8+4,flr(y/8)*8+4,10)
    end
   elseif tile==58 then
    cxo=48
    if(d)cxo=-48
   end
	 end
	 if btnp(4) then
	  if grace>0 then
	   grace=0
		  yv=jp
		  jump=true
		  sfx(2)
	  elseif doublejump and not secondjump and not grab then
		  yv=jp*0.8
		  sfx(2)
		  secondjump=true
	  end
	 end
	 if jump and not btn(4) and sword==0 then
	  yv=max(yv,jp/3)
	 end
  sword=max(sword-1)
  grace=max(grace-1)
  if missed and nomiss then
   c_die()
  end
 end
 if not die then
  if levels[level] then
   c_max=levels[level][3]*8-127
  end
	 cxt=flr(mid(0,x-64+xv*32+cxo,c_max))
  cx+=(cxt-cx)/20*gs
  cx=mid(0,cx,128*7+1)
	 if y>136 and not grab then
   c_die(true)
  end
 end
 if btn(3) and btnp(5) and not air then
  arm+=1
 end
 if arm>arms then
  arm=1
 end
 if btn(3) and not air and not die then
  poke(0x5f43,15)
  poke(0x5f41,15)
  gst=0.1
 else
  poke(0x5f43,0)
  poke(0x5f41,0)
  gst=1
 end
 gs+=(gst-gs)/5
 if die then
  spt=78
 elseif air then
	 if grab then
	  if x<gx-16 then
	   if d then
	    spt=74
	   else
	    spt=72
	   end
	  elseif x>gx+16 then
	   if d then
	    spt=72
	   else
	    spt=74
	   end
	  else
	   spt=73
	  end
	 else
	  if yv>0.5 then
	   spt=77
	  elseif yv<-0.5 then
	   spt=75
	  else
	   spt=76
	  end
  end
 elseif xv~=0 then
  spt=68+t%20/5
 else
  if btn(3) then
   spt=66
  elseif btn(2) then
   spt=80
  else
   spt=64+t%20/5
  end
 end
elseif mode=="win" or mode=="over" then
 if btnp(4) then
  fade()
  if timer<fastest and mode=="win" then
   mode="hiscore"
   letter=1
   for i=1,5 do
    fastname[i]=1
   end
  else
   run()
  end
 end
 if gm_y<58 then
  gm_yv+=0.1
  gm_y+=gm_yv
  gm_spr=78
 else
  gm_y=58
  if t<180 then
   gm_spr=93
  else
   gm_spr=126
  end
 end
elseif mode=="hiscore" then
 if(btnp(0))letter-=1
 if(btnp(1))letter+=1
 if(letter<1)letter=#fastname
 if(letter>#fastname)letter=1
 if(btnp(2))fastname[letter]+=1
 if(btnp(3))fastname[letter]-=1
 if(fastname[letter]<1)fastname[letter]=26
 if(fastname[letter]>26)fastname[letter]=1
 if btnp(4) then
  dset(0,timer)
  for i=1,5 do
   dset(i,fastname[i])
  end
  fade()
  run()
 end
else
 mode="title"
end
t=max(t+1*gs)
ft=max(ft+1)
gt=max(gt+1*gs)
end

function _draw()
pal()
if mode==pmode and not no_d then
 fillp()
 cls(1)
 if mode=="splash" then
  cls()
  pal()
  palt(10,true)
  if st then
   lh-=sgn(lh)
   lw+=abs(lh/4)
  else
   lw=min(abs(sin(t/300)*16)+t/3,64)
   lh=min(abs(cos(t/400)*16)+t/6-32,16)
  end
  bprint("a game by",64,lh*2-8)
  sspr(0,0,64,16,64-lw/2,64-lh/2,lw,lh)
	elseif mode=="instruct" then
  palt(0,false)
  palt(15,true)
  instruct={
  {20,"jump twice to swing on rings"},
  {33,"hit with a star to open doors"},
  {34,"break the case, grab the gem"},
  {13,"press ⬆️ twice - swap weapons "},
  {112,"enemies are weak from behind"}
  }
	 bprint("how to play",64,8)
	 for i=1,#instruct do
	  bprint(instruct[i][2],69,i*16+9)
	  spr(instruct[i][1],59-#instruct[i][2]*2,i*16+8)
	 end
	 bprint("press 🅾️ to continue",62,112)
 elseif mode=="title" then
  flash={7,6,13,1}
  cx+=1
  cx%=23040
  if t<120 then
   bg()
   camera()
   palt(0,false)
   palt(15,true)
   for i=2,15 do
    pal(i,0)
   end
   if t<60 then
	   spr(70,200-t*6,32,4,4,true)
	   ty=-32
	  else
	   ty+=(32-ty)/15
	   spr(70,ty-10,ty-2,4,4)
	   spr(64,60,ty-2,6,4)
	   bprint("press 🅾️ to start",62,128-ty)
	  end
  else
   cc=flash[flr((t-120)/4)] or 1
   cls(cc)
   bg(cc)
   camera()
   palt(0,false)
   palt(15,true)
	  spr(64,60,28,6,4)
	  spr(70,20,28,4,4)
   if stat(24)==4 and stat(20)<8 then
	   spr(74,36,28,2,2)
    palt(14,false)
    palt(10,true)
    spr(106,0,8,1,2)
   end
   flashcol=split("2,4,9,10,9,4")
   if(gm)bprint("invincibility cheat enabled!",64,7,false,flashcol[flr(t/5%6)+1])
   if menu then
	   if(not gm)bprint(menu_desc[menu_sel+1],64,7)
	   bprint("choose an option",64,65.5-sin(t/240)*2)
    for i=1,#menu_opts do
     if i==menu_sel+1 then
      text="> "..menu_opts[i].." <"
      c=7
     else
      text=menu_opts[i]
      c=6
     end
     bprint(text,64,66.5-sin(t/240)*2+i*8,false,c)
    end
   else
    if(btn(2))bprint("v"..version,2,117,true)
	   bprint("press 🅾️ to start",62,95.5-sin(t/240)*4)
   end
  end
 elseif mode=="game" then
  bg()
	 camera(cx,-4)
		palt(15,true)
	 palt(0,false)
	 map()
  for i in all(obj) do
   if i.light then
				for a=0,15 do
				 pal(a,lpal[a] or 0)
				end
		  for iy=0,i.h or 128 do
		   x1=iy/16
     fillp(░)
		   line(i.x-x1,iy,i.x+x1,iy,1)
     fillp()
		   tline(i.x-x1,iy,i.x+x1,iy,(i.x-x1)/8,iy/8)
		  end
		 end
  end
  pal()
 	palt(15,true)
	 palt(0,false)
	 if grab then
	  line(x,y-4,gxa,gya,8)
	 end
	 if pregame then
		 spr(73,flr(x-4),rope-4)
		 line(flr(x),rope-4,flr(x),0,8)
	 elseif not popped then
	  if secondjump and sword==0 and not die and not grab then
    pal(8,5)
    pal(5,8)
    pal(2,0)
    pal(0,2)
    pal(12,11)
	   spt=114+t%15\5
	  end
		 spr(spt or 64,flr(x-4),y-4,1,1,d)
   pal()
  	palt(15,true)
   palt(0,false)
   if btn(3) and not air then
    spr(15-arm,flr(x-4),y-16)
   end
   if sword>0 then
    ovalfill(x-6,y-1,x+6,y+1,7)
   end
	 end
  for i in all(star) do
   ssp=96
   if i.m then
    ssp+=t%20/10
   end
   spr(ssp,i.x-4,i.y-4)
  end
  boss_hp=0
  for i in all(obj) do
   if i.f~=98 then
    if i.f==82 then
     if w1 then
      pal(11,9)
     else
      pal(split("2,4,3,4,5,6,7,9,4,9,1"))
     end
	    if i.t<180 then
	     for a=1,8 do
	      b=a/8+i.t/64
	      dx=i.x+sin(b)*(i.t-180)
	      dy=i.y+cos(b)*(i.t-180)
			    if flr(i.t)%8==1 then
			     make_dust(dx,dy,a+7)
			    end
	      circfill(dx,dy,3,a+7)
	     end
	    elseif i.inv==0 or flr(t)%2==1 then
      spr(i.frame,i.x-8,i.y-8,2,2,i.d)
      boss_hp=i.hp
	    end
	    pal()
    	palt(15,true)
     palt(0,false)
    elseif i.f==109 then
     line(i.x-1,i.y-12,i.x-1,0,4)
     line(i.x,i.y-12,i.x,0,2)
     spr(87+t%15\5*2,i.x-8,i.y-12,2,2)
	   elseif i.f==125 then
	    for a=1,#(i.tx or {}) do
      circfill(i.tx[a],i.ty[a],a/3,7)
	    end
     spr(i.f+i.s,i.x-3.5,i.y-4)
    else
	    spr(i.f+i.s,i.x-4,i.y-4,1,1,i.d)
	   end
   end
  end
  for i in all(dust) do
   circ(i.x,i.y,i.l/15,i.c)
  end
	 camera()
  for i=1,max_l do
   if i<=lives then
    spr(95,i*4-3,5)
   else
    spr(94,i*4-3,5)
   end
  end
  if boss_hp>0 then
   for i=1,max(level+lvlo/2,boss_hp) do
    if i<=boss_hp then
     spr(111,126-i*4,5)
    else
     spr(110,126-i*4,5)
    end
   end
  end
  palt(15,true)
  bprint(coin..0,2,12,true)
  spr(15-arm,1,19)
 elseif mode=="over" then
  palt(0,false)
  palt(15,true)
  spr(gm_spr,60,gm_y)
  bprint("game over",64,67)
 elseif mode=="win" then
  palt(0,false)
  palt(15,true)
  spr(0,0,32,16,12)
  second=(timer-flr(timer/60)*60)
  if(flr(second)<10)second="0"..second
  bprint("time: "..flr(timer/60)..":"..second,16,16,true)
  faststr=""
  for i in all(fastname) do
   faststr..=chr(i+96)
  end
  second=(fastest-flr(fastest/60)*60)
  if(flr(second)<10)second="0"..second
  bprint("best: "..flr(fastest/60)..":"..second.." by "..faststr,16,24,true)
 elseif mode=="hiscore" then
  palt(0,false)
  palt(15,true)
  bprint("congratulations!",64,16)
  bprint("you beat the fastest time",64,28)
  bprint("enter your name below",64,40)
  bprint("press 🅾️ to save",62,104)
  for i=1,#fastname do
   c=6
   if(i==letter)c=7
   bprint(chr(fastname[i]+96),60+i*8-#fastname*4,70,false,c)
  end
  bprint("⬆️\n\n\n⬇️",56+letter*8-#fastname*4,61,true)
 end
end
pmode=mode
camera()
fillp()
rectfill(0,0,127,3,0)
rectfill(0,124,127,127,0)
pal(14,128,1)
pal(15,133,1)
fp=fadep[#fadep-flr(ft/3)+1]
if fp then
 fillp(fp)
 rectfill(0,0,127,127,0)
 if mode=="game" then
  bprint("level "..level+lvlo,64,57)
  bprint(lvl_msg,64,57+10)
 end
 no_d=false
end
end

-->8
-- functions
mus=music
function music(a,b)
mus(a,b,3)
current_mus=a
end
function c_die(bottom)
y=min(136,y)
if bottom or not gm then
music(-1,300)
t=0
gs=1
gst=1
yv=-4
die=true
grab=false
lives-=1
missed=false
sfx(11)
coin=score
end
end
function goto_lev(l)
if levels[l] then
lev_x=levels[l][1]
lev_y=levels[l][2]
map_x=0
rt=false
for ix=0,127 do
r=mget(lev_x+ix,lev_y)
if r==62 then
r=0
end
if r==63 then
r=0
rt=true
end
for mx=0,r do
for iy=1,15 do
iy=max(iy,1)
mset(map_x,iy-1,mget(lev_x+ix,lev_y+iy))
end
map_x+=1
levels[l][3]=map_x
end
if rt then
return
end
for ix=0,127 do
for iy=0,15 do
if mget(ix,iy)==64 then
x=ix*8+4
y=iy*8+4
sp_x=x
sp_y=y
cx=x-64
xv=0
yv=0
grab=false
mset(ix,iy,0)
popped=false
die=false
pregame=true
rope=-8
score=coin
if w1 then
tospr(w2spr,128,0,0)
end
end
end
end
if mus_[level+lvlo]~=current_mus then
music(mus_[level+lvlo])
end
star={}
obj={}
dust={}
end
if mus_[l+lvlo]~=current_mus then
music(-1,1000)
end
else
mode="win"
tospr(endcat,128,0,0)
music(-1,1000)
timer=time()-offset
end
end
function fade()
ft=0
for i=0,64 do
fillp(fadep[flr(i/(32/#fadep))+1])
rectfill(0,0,127,127,0)
if mode=="game" and level<#levels and lives>0 then
bprint("level "..level+lvlo,64,121-i)
bprint(lvl_msg,64,121-i+10)
end
flip()
end
no_d=true
end
function psfx(i,x)
if x>cx-8 and x<cx+136 and not die then
sfx(i)
end
end
function bprint(t,x,y,left,c1,c2)
t=tostr(t)
if left then
xo=0
else
xo=#t*2
end
for x1=-1,1 do
for y1=-1,1 do
print(t,x-xo+x1,y+y1,c2 or 5)
end
end
print(t,x-xo,y,c1 or 7)
end
function tospr(str,w,tx,ty)
xp=0
yp=0
for i=1,#str do
char=sub(str,i,i)
xp+=1
if xp>w then
xp=1
yp+=1
end
sset(tx+xp-1,ty+yp,tonum("0x"..char))
end
end
function bg(c2)
camera()
if mode=="game" then
circfill(24,24,12,6)
circfill(28,24,9,c2 or 1)
else
circfill(16,20,12,6)
circfill(20,20,9,c2 or 1)
end
rectfill(0,72,127,127,6)
for c=1,2 do
for i=0,1 do
if c==1 then
pal(7,13)
cs=5
else
pal(7,6)
cs=4
end
camera(flr(cx+t/cs)/cs%128,c*-4)
map(0,48,i*128,60,16,1)
end
end
for i=0,1 do
camera(flr(cx+128)/3%128,4)
map(0,49,i*128,0,16,15)
end
for i=0,1 do
camera(flr(cx)/2%128,4)
pal(14,15)
pal(15,5)
map(0,49,i*128,8,16,15)
end
pal()
end
function w2()
ix=0
iy=0
for i=1,#w2map do
mset(ix,iy+16,ord(sub(w2map,i,i))-128)
ix+=1
if ix>127 then
ix=0
iy+=1
end
end
end
function add_levels()
levels={}
for iy=16,63 do
for ix=0,127 do
if mget(ix,iy)==62 then
add(levels,{ix,iy})
end
end
end
end

-->8
-- object functions
function make_obj(x,y,f,hp,xv,yv)
srand(x+y+1)
if rnd(2)<1 then
od=true
else
od=false
end
if f==82 then
hp=level+flr(lvlo/3)
sfx(4)
tospr(boss,96,0,64)
elseif f==109 then
hp=2
elseif f==125 then
hp=1
end
add(obj,{x=x,y=y,xv=xv or 0,yv=yv or 0,f=f or 64,s=s or 0,d=od,hp=hp or 3,t=0})
end
function make_dust(x,y,c)
add(dust,{x=x,y=y,xv=rnd(2)-1,yv=-rnd()-.2,l=60,c=c or 5})
end

__gfx__
151111510000000000000000000000000000000000000000000000000000000000000000f288222fffbbbbff44444442ffffffffffffff77ff6fffff77777777
158888810077700000777000007070000077700000777000007770000077700077707770f899882ffb7777bf4222222e96ffff69fffff767ff66ffff77777777
882222220000700000007000007070000070000000700000000070000070700070000070f289821fb7bbbb6342eeee2e95777d74ffff767fff66f66677777777
82d36d360077700000077000007770000077700000777000000070000077700077000700f289821fb7b7736342e2f42e967dd774fff767fffff6666f77777777
206b76b70070000000007000000070000000700000707000000070000070700070007000f899882fb7b6636342ef242e457777d4fd767ffffddddfff77777777
155555000077700000777000000070000077700000777000000070000077700077707770f899882fb73333634244442e46ddd772fdd7ffffdddfddff77777777
110000010000000000000000000000000000000000000000000000000000000000000000f899882ff366663f4222222e26777662f455ffffffffddff77777777
111111110000000000000000000000000000000000000000000000000000000000000000f289821fff3333ff2eeeeeeeff6766ff4ffffffffffffdff77777777
777777672f4f2f4f44444442ffffffffffbfff3fffffffffffffffffffffffffffdfff5fff5fff1f0000000000000000f289821fe000000ed666ddd5ff422eff
76666676f4fff4ff4222222effffffffffbfff3ffffff7bb3b7fffffff7fafffffdfff5fff75f51f0000000000000000f899882fee0000ee5d66dd51ff422eff
76ddd66d4f2f4f2f2eeeeeeefff333ffff7bfb3fffffbbffffbbffffff4a49ffff7dfd5ffff151ff0000777700000000f899882feee00eee5d66dd51ff422eff
76d6676dfff4fff4fff2fff2ff37bb3ffff3b3ffffffbffffffbffffff2a29fffff5d5ffffff5fff7777777777777000f899882feeeeeeeed666ddd5ff422eff
76d6676d2f4f2f4f2f4f2f4fff3bbb3fffffffffffff3bffffb3ffffff9999ffffffdfffffff1fff7777777777777777f289821feeeeeeeed666ddd5ff422eff
7667776df4fff4fff4fff4ffff3bbb3ffffffffffffff333333ffffffffa99faffff5ffffff515ff7777777777777777f289821feeeeeeee5d66dd51ff422eff
6d66666d4f2f4f2f4f2f4f2ffff333fffffffffffffffffffffffffffffaa9f9fffd5dffff51f11f7777777777777777f899882feeeeeeee5d66dd51ff422eff
d6ddddddfff4fff4fff4fff4ffffffffffffffffffffffffffffffffff7a999fffd5f55fff5fff1f7777777777777777f288222feeeeeeeed666ddd5ff422eff
ffffffffd68888d5ffccddff44444442444444422f4f2f4f2f4f2fffff4f2f4ff5555555f55555550000000000000000000000000000000000000000bbb3bbb3
ffffffff58777781fc77ccdf4222222e4222222ef4fff4fff4fff4fffffff4fffddddd55fddddd550000000000000000000000000000000000000000b331b331
ffffffff87888862c777cccd42eeeeee2eeeee2e4f2f4f2f4f2f4f2fffffff2fff55555fff55555f0000000077770000000000000000000000000000b331b331
f7ffffff87877262dcccdddc42e2fff2fff2f42efff4fff4fff4fffffff4fff4fff5d5fffff151ff0007777777777777000000000000000000000000b331b331
f6fff7ff87866262fdccddcf42ef2f4f2f4f242e2f2f2f2f2fff2fffff4f2f4fffffdfffffff1fff777777777777777700000000eeeeeeee00000000b3113131
f6fff6f787222262ffdcdcff42eff4fff4fff42e44444442f4fffffffffff4ffffff5ffffff515ff777777777777777700000eeeeeeeeeeeeee00000b12211b1
fdf7f6f652666621f6fdcfdf42ef4f2f4f2f242e4222222e4f2f4fffffff4f2ffffd5dffff51f11f777777777777777700eeeeeeeeeeeeeeeeeeee00b12821b1
fdf6fdfdd62222d5f666dddf2ee2fff4fff4f2ee2eeeeeeefff4fffffff4fff4ffd5f55fff5fff1f7777777777777777eeeeeeeeeeeeeeeeeeeeeeeeb12821b1
ffffffff442f2f4f2f4f2442442f2f4f2f4f244244444442f7777777777777777777776f77777776ffffffff0000000eeeeeeeeee000000000000000b12821b1
ffffffff42eff4fff4fff42e42eff4fff4fff42e4222222ef766666666666666666666df7666666dffffffff000000eeeeeeeeeeee00000000077000b12821b1
ffffffff42ef4f2f4f2f242e42ef4f2f4f2f242e2eeeeeeeffddddddddddddddddddddfffddddddfffffffff00000eeeeeeeeeeeeee0000000700000b12211b1
ffffffff42e2fff4fff4f42e42e2fff4fff4f42e22ffff22fffd55555555555555555ffffd55555fffffffff0000eeeeeeeeeeeeeeee000000777000b3b3bb31
ffffffff42ef2f2f2f2f242e42ef2f4f2f4f242ef42ff42ffff6dd55ddd55ddd55dd5ffff6d55d5fffffffff000eeeeeeeeeeeeeeeeee00000007000b331b331
ffffffff424444424444442e42eff4fff4fff42eff4242ffff6dd5cc6d5cc6d5cc6dd5fff65cc65fffffffff00eeeeeeeeeeeeeeeeeeee0000770000b331b331
fa777a9f4222222e4222222e42ef4f2f4f2f242efff42fffff6ddd66ddd66ddd66ddd5ff6dd66d55ffffffff0eeeeeeeeeeeeeeeeeeeeee000000000b331b331
f9aaa99f2eeeeeee2eeeeeee2ee2fff4fff4f2ee42444242ffd5555555555555555555ffd5555555ffffffffeeeeeeeeeeeeeeeeeeeeeeee0000000031113111
ff5ff5ffffffffffffffffffff5ff5ffff5ff5ffff5ff5ffffffffffffffffffff5ff5fffff7f06ffff5ff5fff5ff5ffff5ff5fffffffffff5ff5ffff6ff6fff
f888222fff5ff5ffff5ff5ffff88222fff88222ff888222fff5ff5ffff5ff5fff8887226ff858222ff788222ff88222ff888222f885ff5ff888222ff999aaaff
8257b7bf8888222ff888222ff857b7bff857b7bf8257b7bf8888222ff888222f820557b5f8257b7bf855b7b7f827b7bf8257b7bff288222f25dd5dffa65565ff
ff50000ff257b7bf8257b7bf8250000f8250000fff50000ff257b7bf8257b7bfff55000ffff50000fff55000f250000fff50000f7557b7bff50000fff67777ff
f5509fffff50000fff50000fff509ffff5509fff75509fffff50000fff50000fff509ffffff509ffffff509ff5509fff75509fffff50000ff550956ff66786df
7f5006ff755096fff5509ffff5500fff7f5000ffff5006ff75509fff75509fffff500ffffff500ffffff500f7f50000fff5000ff5f509fff7f500fff5f677fff
ff5ff0ffff5000ff7f5000ff7f5ff0fff5fff0fff55ff0ffff5000ffff500ffffff5f0fffff5f0fffff5f0fff55ffffff55fff0ff5fff0ffff5ff0ffff6ff7ff
f5fff0fff55ff0fff55ff0fff5fff0ff5fffffffffffff0fff55f0fff5500fffffff5f0ffff5f0ffff5f0fffffffffffffffffffffffff0ff5fff0fff6fff7ff
f5ff5ffff777777ff9ffff9fff8822ffff5511ffff5511ffffddddffffaff9ffaff9ffffffffaff9ffaff9fffffaff9ff9ffaffffffffffff5f5fffff5f5ffff
f87b7bff7ffffff6f49ff94ff877882ff5dd551ff5dd551ff221111ffffd5fd5d5fd5faff9fd5fd5d5fd5ffffffd5fd5d5fd5fffff5ff5ff51515fff58585fff
825550ff7f77fff6f111111f877788825ddd55515d8d5851fd570942ffd544444444d5ffffd544444444d5ffafd544444444d5faf888222f01110fff08820fff
250000ff7f7ffff6fd0550df288822281555111515251215fd5554229f552222222255ffff552222222255faff552222222255ff825dd5dff010fffff020ffff
f5509fff7ffffff6fd0550dff288228ff155115ff155115fddd55422fd427777777742d9ad427777777742dffd427777777742dfff50000fff0fffffff0fffff
7f5006ff7ffffff6f499994fff2828ffff1515ffff1515ffffd55942f5427ffffff6425ff5427ffffff6425f95427ffffff64259f5509fffffffffffffffffff
ff5f0fff7ffffff6ff4444fff4f28f2ff4f15f2ff4f15f2ffddff942af427f77fff642ffff427f77fff642f9ff427f77fff642ff7f5000ffffffffffffffffff
ff5f0ffff666666ffffffffff444222ff444222ff444222ffffff422fd427f7ffff642da9d427f7ffff642dffd427f7ffff642dff55ff0ffffffffffffffffff
fffffffffffffffffff5dfffffddddffffddddfffffffffffffffffff5427ffffff6425ff5427ffffff6425f95427ffffff64259f5ffff5ff5f5fffff5f5ffff
fffffffffffffffffffd5ffff2211942f2211942ffddddffffddddff9f427ffffff642ffff427ffffff642faff427ffffff642ff5425d24551515fff59595fff
fff6ffffffff6fffffa769fffd570422fd570422f2211942f2211942fd427ffffff642d9ad427ffffff642dffd427ffffff642dff477774f01110fff09940fff
fff666ffff666fffffaff9fffd555422fd555422fd570422fd570422f5427ffffff6425ff5427ffffff6425fa5427ffffff6425af57ff65ff010fffff040ffff
ffdddffffffdddfffaf7ff9fffddd942ffddd942fd555422fd555422af427ffffff642ffff427ffffff642f9ff427ffffff642fffd7ff6dfff0fffffff0fffff
ffffdffffffdfffffaffff9fffd55942ffd55942ffddd942ffddd942fd427ffffff642da9d427ffffff642dffd427ffffff642dff47ff64fffffffffffffffff
ffffffffffffffffff9ff9ffffdff422fddf5422ffd55942ffd55942f5427ffffff6425ff5427ffffff6425fa5427ffffff6425a547ff645ffffffffffffffff
fffffffffffffffffff99ffffdfff5ffffff5fffffdd5422fdd554229f426666666642ffff426666666642faff426666666642fff466664fffffffffffffffff
ff8888ffffffffffffffffffffffffffffffffffff8888ffffffffffffffffffffffffffffffffffffffffffd5557951d5557951ffffffffffffffffffffffff
f555000fff8888ffff5500ffff8885ffffff28fff555000fff8888ffffffffffffffffafffff9fffffffafffd5510551d5510551ffffffffffffffffffddddff
5087c7cff555000ff587c7cff882885fff88882f5087c7cf5555000ffffff769fffff96ffffa6fffffff79fffd50051ffd50051fff0770fffffffffffdd0d0df
ff82222f5087c7cff882222ff882270ffc82822fff82222ff087c7cfffff6fafffff67ffff222fffff888ffff511111ff511111fff7777fffff5ff5ffddddddf
f8822fffff82222fff88282ff2822c0ff578222f88822fffff82222ffff00ffffff00ffff28822fff89988fffaaa999ffaffff9fff7007fffff88222f1d0001f
8f8228fff8822fffff8882ffff2870ffff5c720fff8228ff88822fffff0100ffff0100fff28222fff89888fffffffffffaffff9ffff00fffff85dd5df111111f
ff8ff2ff8f8222fffff822fffff2cffffff550fff88ff2ffff8222ffff0000ffff0000fff22222fff88888fffffffffffaffff9ffffffffff8250000faa1119f
f8fff2fff88ff2ffffffffffffffffffffffffffffffff2fff88f2fffff00ffffff00fffff222fffff888fffffffffffffffffffffffffff55007906faaa999f
e300b0000000f3e300000080008000100010203060001000603020100010000000f3e30010002000400040002000100020004000400040000000100000000010
00000000000000f3e3003000001000100000201000200050000000000010000000108000100020004000400060000000300000000000000000000000000010f3
11111111111111000000000026000000000000000000000000000000000000000000000000000082008200820000000000820082008200331111111111114300
0000000000000000000000e1000000003311111111111111111111111111e1a3a3a3000000000082008200820000920000009200820000000000820092000000
11111111111111000000000000000000000000000000000000000000000000000000000000000081008100810000000000810081008100331111111111114300
0000000000000000000000e1000000003311111111111111111111111111e1a3a3a3000000000081008100810000910000009100410003030300410091000000
11111111111111000000000000000000000000000000000000000000000000d60000000000000081008100810000000000810081008100135252521111114300
0000000000000000000000e1000000003311525252525252525252525252e1a3a3a3000000000081008100810000910000009100322121212121420091000000
5252525252525200000000000000000000000000000000000000000000000000000000000000004100810081000000000081008100810000b700003311114300
0000000000000000000000e1000000001323000000000000000000000000e1a3a3a3000000000041008100810000910000009100135252525252230091000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000008100410000000000810081008100008000003311114300
0000000000000000000000e1000000004100000000008000000000000000e1a3a3a3000000000000008100410000910000009100120000d60000120091000000
00000000000000000000000000008000000000030000030000030000000000220000000000000000004100000000000000410081008100000000003311114300
0000000000d60000000000e100000000000000020003070000000000000090a3a3a3000000000000008100000000910000009100e10000000000e10091000000
00000000000000000400000000003603000300b000b0b0b000b00003000363738300000403000000000000000000000000000081004100000000003311114300
0000000000000000000000e1000000003221212121214200324261000000c1a3a3a3000003000000008100000000910000009100900000000000900091000000
00000000000000212142535353533221425300f100f1f1f100f10053322121212121212121420000000000000000030000000041000000000300001352522300
000000000000000000000012000000003311111111114300334353533221e121425300b0b0b00000008100000032214200009100c10000220000c10091000000
00000000d60000111143000000003311430000f100f1f1f100f10000331111111111111111430000000000000032214200000000000000322142000000000000
0000000000220000000000e1000000003311111111114302334300003311e11143a300f1f1f10000004100000033114300322121e10063738300e12121420000
00000000d00000111143530000003311430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331143030300360300
000000006373830000000090000000003311111111111121114300001352e11143a300f1f1f10000000000000013522300331111e12121212121e11111430000
00040063738303111143000000003311430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331111212121212121
4200322121212121000400c1000300003311111111111111114300000000e11143a300f1f1f10000000000000000000000135232214211111132214252230000
21212121212121111143530000003311430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331111111111111111
1121111111111111212121e1212142003311111111111111114300000000121143a300f1f1f10000000000000000000000000013522352525213522300000000
11111111111111111143000000003311430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331111111111111111
1111111111111111111111e1111143003311111111111111111121212121e11143a300f1f1f10000000000000000000000000000000000000000000000000000
11111111111111111143020202023311430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331111111111111111
1111111111111111111111e1111143003311111111111111111111111111e11143a300f1f1f10000000000000000000000000000000000000000000000000000
11111111111111111111212121211111430000f100f1f1f100f10000331111111111111111430000000000000033114300000000000000331111111111111111
1111111111111111111111e1111143003311111111111111111111111111e11143a300f1f1f10000000000000000000000000000000000000000000000000000
a1b1a2b2a1b1a2b2a1b1a2b2a1b1a2b2e3000060100010600010006010001060003000100030001010100060100010600000100020000000f3e3000060100010
600020002000300020002000200000003000000020000080001000207000005000200020005000000000400030000000f3e300200030000000000030002000f3
000000000000000000000000000000001100721111111111111111111111111111111152525252525252000000000000000000e1000000000062007211111111
1111525252525211111111e1000000000000000000e11111e11143a3000000000000260000000000000000e10000000000b000000000000000000000000000b0
000000000000000000000000000000006200111111111111111111111111111111114300000000000000000000000000000000e10000d6000011007211111111
1143000000920033111111e1000000000000000000e11111e11143a3000000000000000000000000000000e10000000000b000000000000000000000000000b0
00000000000000000000000000000000110011111111111111111111111111111111430000000000000000000000000000000012000000000062001111111111
1143000000910033111111e1000000000000000000e15252e15223a3000000000000000000000000000000e10000d60000b000000000000000000000000000b0
000000000000000000000000000000006200721111111111111111111111111111114300000000000000000000000000000000e1000000000052005252525252
5223000003910033111111e10000000000000000009041009000a3a3000000000000000000000080000000e10000000000b000000000000000000000000000b0
00000000000000000000000000000000110072111111111111111111111111111111430000008000000000000026000000000090000022000000000000002600
0000003221420033111111e1000000000000000000c10000c103a3a3000303000300030003000007000300e10000000000b000000000000000000000000000b0
000000000000000000000000000000006200111111111111115252525252525252522300000036000203000003000300000703c1006373830000040000030003
0000003311430033111152e1000000000000000000e12121e12142530032425353535353b0005132214200900000220000b000000053000000000053000000b0
00000000c2d2e20000000000000000006200721111111111430041000026000000000000000032212121425353535353322121e1212121212121212121212121
212121111143003311430012000080000000800000121111e11143a30033430000000000b0000033114300c10063738300b000000000000025000000000000b0
000000b3c3c3c3d300000000000000001100721111111111430000000380030000000003000033111111430000000000331111e1111111111111525252525252
5252525252235313522300e1000035000000350000e15252e11143a30033430000000000b0535333111121e12121212121b000000000000000000000000000b0
0000b3c3c3c3c3c3d3000000000000006200111111111111430032212121212142003221420033111111430202020202331111e1111111111143000000000000
000000000041004100000090000303030003030300900000e11143a30033430000000000b0000013525252e11111111111b000000000000000000000000000b0
00b3c3c3c3c3c3c3c3d30000000000005200525252525252230033111111111143003311430033111111112121212121111111e1111111111143000300030003
0003000000000000000003c1006373830063738300c10300121143a30033430000000000b0000000000000121111111111b000b0000000000000000000b000b0
b3c3c3c3c3c3c3c3c3c3d300000000000000000000260000000033111111111143003311430033111111111111111111111111e1111111111111212121212121
2121214200000000003221e1212121212121212121e12121e11143a30033430000000000b0000002030200e11111111111b000f1000000000400000000f100b0
c3c3c3c3c3c3c3c3c3c3c3d3000000b30004000003000300000033111111111143003311430033111111111111111111111111e1111111111111111111111111
1111114300000000003311e1111111111111111111e11111e11143a3003343000000000032212121212121e11111111111b000f1000000637383000000f100b0
c3c3c3c3c3c3c3c3c3c3c3c3d300b3c32121212121212121212111111111111143003311430033111111111111111111111111e1111111111111111111111111
1111114300000000003311e1111111111111111111e11111e11143a3003343000000000033111111111111e11111111111b021212121212121212121212121b0
c3c3c3c3c3c3c3c3c3c3c3c3c3d1c3c31111111111111111111111111111111143003311430033111111111111111111111111e1111111111111111111111111
1111114300000000003311e1111111111111111111e11111e11143a3003343000000000033111111111111e11111111111b011111111111111111111111111b0
c3c3c3c3c3c3c3c3c3c3c3c3c3c3c3c31111111111111111111111111111111143003311430033111111111111111111111111e1111111111111111111111111
1111114300000000003311e1111111111111111111e11111e11143a3003343000000000033111111111111e11111111111b011111111111111111111111111b0
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111666666666661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111166666666666666611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111666666666611111661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111116666666661111111116111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111166666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111166666661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111666666661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111666666611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11116666666611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111666666611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111666666661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111166666661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111166666666111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111116666666661111111116111111111115011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111666666666611111661111111111115501111111111501111111111111000011111101111111111111111111111110111111111111111111111111111
11111111166666666666666611111111111115555555555015001111111111110999901111090111111111111111111111106011111111111111111111111111
11111111111666666666661111111111111188888888888800001111111111110988801110980111111111111111111111106601111111111111111111111111
11111111111116666666111111111111188828222222222288211111111111109888820110980111111111111111111111106d01111111111111111111111111
1111111111111111111111111118881188222225d663ddd222201111111111109888820109880111111111111111111111106d50000111111111111111111111
1111111111111111111111111111228882111555557b76636000111111111109888882010982011111111111111111111006dddd666011111111111111111111
1111111111111111111111111111112221111555055b767b7d001111111111098882822008800000100110100000110006ddd0dddd0011111111111111111111
1111111111111111111111111111155555111550005555555000111111111108882088208820999809900209998200998055ddd5000111111111111111111111
11111111111111111111111111555500005551000000000000011111111110988820282088200980098802000820098002005d50001111111111111111111111
11111111111111111111111115500000000000550000000000111111111110988220082088200980098882000820098002000d50111111111111111111111111
11111111111111111111111155000000000005555500000551511111111110982200088288200820088822000820088822010550111111111111111111111111
11111111111111111111111777000111110055555551111dd5711111111110882001088888200980098022000820098002010050111111111111111111111111
11111111111111111111117777617771111550a0555511d777771111111108820011028882200980098002090820098002011000111111111111111111111111
11111111111111111111117776655766115550aa0555511677761111111108820111008882008822082002008200082002011101111111111111111111111111
11111111111111111111111666555011115500099005555176651111111108200111108822000000000000000001000000011111111111111111111111111111
111111111111111111111111115501111550000011005555555011111111020011111022200aaaaa000110110011100110111111111111111111111111111111
1111111111111111111111111150111115500001111005555500111111110001111110000aabbbbbbb0111111111111111111111111111111111111111111111
111111111111111111111111115011111500001111110000000011111111101111111100abbbbbb3333000011000000111111111111111111111111111111111
11111111111111111111111111500111550001155555110000011111111111111111110abbbbb3300000aab00aaaab3011111111111111111111111111111111
11111111111111111111111111150005550000555000511111111111111111111111110abbbb3000000ab003000ab0001111gggggggg11111111111111111111
11111111111111111111111111110005500000000000011111111111111111111111110abbb30001110ab003000ab0011gggggggggggggg11111111111111111
11111111111111111111111111111155500000000000011111111111111111111111110abb300111110bbb33010b30gggggggggggggggggggg11111111111111
11111111111111111111111111111155000000015000111111111111111111111111110bbb301111110ab003010ab0gggggggggggggggggggggg111111111111
111111111111111111111dd111111555000111115000111111111111111111111111110abbb01111110ab003010ab0ggggggggggggggggggggggg11111111111
11111111111111111111dd5051115550001111155000111111111111111111111111110abbbb0001110b3003010b30gggggggggggggggggggggggg1111111111
11111111111111111111dd500555550001111115000dd11111111111111111111111110bbbbbbb30000000000g0000ggggggggggggggggggggggggg111111111
11111111111111111111dd5500550000011111150ddd55111111111111111111111111003bbbbbbbbb300110ggg00ggggggggggggggggggggggggggg11111111
11111111111111111111d555000000001111111ddd555511111111111111111111lllll0333bbbb33300111gggggggggggggggggggggggggggggggggg1111111
11111111111111111111d555100000111111111dd5555111111111111111111llllllll000333333300111gggggggggggggggggggggggggggggggggggg111111
111111111111111111111551111111111111111155511111111111111111llllllllllll0000000000111gggggggggggggggggggggggggggggggggggggg11111
1111111111111111111111111111111111111111111111111111111111llllllllllllllll0000000l11gggggggggggggggggggggggggggggggggggggggg1111
111111111111111111111111111111111111111111111111111111111llllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggggggg111
11111111111111111111111111111111111111111111111111111111llllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggggggg11
1111111111111111111111111111111111111111111111111111111llllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggggggg1
111111111111111111111111111111111111111111111111111111llllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggggggg
g1111111111111111111111111111111111111111111111111111llllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggggggggggggg
gg11111111111111111111111111111111111111111111111111llllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggggg
ggg11dddd11111111dddd1111111111111111dddd11111111ddllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggggggggggg
ggggdddddddddddddddddddddd111111ddddddddddddddddddllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggggg
gggggddddddddddddddddddddddddddddddddddddddddddddllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggggggggg
ggggggddddddddddddddddddddddddddddddddddddddddddllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggggg
gggggggddddd6666dddddddddddddddd6666dddddddd666llllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggggggg
gggggggg6666666666666dddddd6666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggggg
ggggggggg666666666666666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggggg
gggggggggg6666666666666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggggg
ggggggggggg66666666666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggggg
gggggggggggg666666666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggggg
ggggggggggggg6666666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggggg
gggggggggggggg66666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggggg
ggggggggggggggg666666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggggg
gggggggggggggggg6666666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggggg
ggggggggggggggggg66666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggggg
gggggggggggggggggg666666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggggg
ggggggggggggggggggg6666666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggggg
gggggggggggggggggggg66666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggggg
ggggggggggggggggggggg666666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggggg
gggggggggggggggggggggg6666666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggggg
ggggggggggggggggggggggg66666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggggg
gggggggggggggggggggggggg666666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggggg
ggggggggggggggggggggggggg6666llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggggg
gggggggggggggggggggggggggg66llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggggg
gggggggggggggggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggggg
ggggggggggggggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggggg
gggggggggggggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggggggggggggg
ggggggggggggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggggggggggg
gggggggggggggggggggggggllllll555555555555555555555llll5555555llll555555555llll55555555555555555555lllllllllllllllllllggggggggggg
gggggggggggggggggggggglllllll577757775777557755775lll557777755lll577755775lll557757775777577757775llllllllllllllllllllgggggggggg
gggggggggggggggggggggllllllll575757575755575557555lll577555775lll557557575lll575555755757575755755lllllllllllllllllllllggggggggg
gggggggggggggggggggglllllllll577757755775577757775lll577575775llll57557575lll57775575577757755575lllllllllllllllllllllllgggggggg
gggggggggggggggggggllllllllll575557575755555755575lll577555775llll57557575lll55575575575757575575llllllllllllllllllllllllggggggg
gggggggggggggggggglllllllllll575l57575777577557755lll557777755llll57557755lll57755575575757575575lllllllllllllllllllllllllgggggg
gggggggggggggggggllllllllllll555l5555555555555555lllll5555555lllll5555555llll5555l555555555555555llllllllllllllllllllllllllggggg
ggggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgggg
gggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllggg
ggggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllgg
gggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllg
ggggggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
lgggggggggglllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llggggggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
lllgggggglllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllggggllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
lllllgglllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__gff__
0000000000000000002101014040000001010102020202400000010121000100000140010101010100000101000000291001010101080101012904000000002900000000000000000000000000000000008080808080800000000000000000000000808000000000000000000080000080000000000000800000008000800080
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100110011111100000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100110000110000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000110000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100110000110000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100110011111100000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3e0002000200000002010000030103000000000003000100040004000000030000003f3e0200020001000300040204000100000000020000000103000400040003000100000301010002030200020000003f3e00000200010000000100020002020000040003010004010200030203000100030203000100030000000000003f
0000000000331111111111111111111111111111111111111134000000000000000000000000002800000000000000000000312525251111111111340028003311111111111111111111111111111111111100000000331111111111111111111111111111111134000000000000000000000000000000000000000000000000
0000000000331111252525111111111125252525252525111134000000000000000000000000001800000000000000000000007b000033111111113400180033111111111111111111252525111111111111000000003311111111111111111111111111111111340000000000000000000000000000000000000000006d0000
0000000000331134000015331111113414000000000000331134000000000000000000000000001400000000000000000000000800003311111111340018003311111111111111113400000033111111111100400000331111111111111111111111111111111134000000000000000000000000000000000000000000000000
0000000000331134003000331111113400300000000000331134000000000000000000000000000000000000000000000000000000003311252525320018003125252511111111113400000031252525252512122400331111111111112525252525252525252532000000000000000000000000000000000000000000000000
00000000003125323535353311111111122400000000003311340000000000006d000000000000000000000000300000007000000000333400000000001800000000003311111111340000000000006d000011113400331111111111340000000029000028000000000000000000000000000000000000000000000000220000
0000000000001400000000312525252525320000000000312532000000000000000000000000000000231224353535231212121224003334000000000018000000000033111111113400000000000000000011113400331111111111340000000019000018000000000000000000000000000000000000000000630036373800
0000000000000000000000000000000000000000000000000000000000000000000000000000000000331134000000331111111134003334000000000018000000000031252525253200000000000000000011113400331111111111340000302019000018000000000000000000000000000000000000000035231212121212
000000000000000000000008000000000000000000000000000000000000000022000000000000000033113400000033111111113400313200000000001400000000000000007b000000000008000022000011113400331111111111340023121224000018000000000000000000000000000000000030000000331111111111
0000000000000000000000700030000000007030002000000000000000000036373800000000000000331134202020331111111134000000000000000000000000003000300000300000300070003637380011113400331111111111340033111134000014000000000000000000000000000000002312240000331111111111
0000000000000000003523121212121212121224352312240000000000231212121212400000000030331111121212111111111134000000000000000000000000231212121212122435353523121212121211113400312525252525323531252532000000000000000000000000000030000000003311340000331111111111
004030000000000000003311111111111111113400331134000000000833111111111112122400003533111111111111111111113400303000200030000000300033111111111111340000003311111111111111340000007b007b0000000000000000000000000000300000000000231224000b003311340000331111111111
121212240000000000003311111111111111113400331134000000007033111111111111113400000033111111111111111111111112121212121224000000231211111111111111342020203311111111111111340000000000080000000000000000000000352312121224000b00331134001f003311340000331111111111
111111340000000000003311111111111111113400331111122400231211111111111111113400000033111111111111111111111111111111111134000000331111111111111111111212121111111111111111340000000000003000000020300000000000003311111134001f00331134001f003311340000331111111111
111111340000000000003311111111111111113400331111113400331111111111111111113400000033111111111111111111111111111111111134000000331111111111111111111111111111111111111111111212121212121212121212121224000000003311111134001f00331134001f003311340000331111111111
111111111212121212121111111111111111113400331111113400331111111111111111113400000033111111111111111111111111111111111134000000331111111111111111111111111111111111111111111111111111111111111111111134000000003311111134001f00331134001f003311340000331111111111
__sfx__
01060000300572c05729057240572c05728057240571f0571b051180511f0511b051190511605114051120511c052190521505212052100520d0520b05212052100550d0550c0550a05509055070550705505055
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
000100000d15015150181501b1301e120001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
0110000018155181552315521155001051d105221552515500105001051e1551e1552715525155211551a15518155181552315521155001051d1051615519155001050010512155121551915516155101550c155
00030000140301a0402004024040270402a0402d0402f04030040300302f0302c030290302503022020200201d0201b0201a0201a0201b0201c0201d0201e0301e0301d0301b0301a03017030140201201039600
000200001f6212163123631216211f6111d6011e6012260126601296012c601186010060100601006010060118601186012360121601006011d6011d6011f60100601006011660116601216011e6011760113601
001500001216012160121601216012150131501315013150131401314012140121301213012130121200e1200e1200e1100e1100e110121001110011100111001110011100111001010010100101001110000100
000c0000000010101101011020110201103011030110401104011050210502106021060210702107021080210802109031090310a0310a0310b0310b0310c0310c0310d0410d0410e0410e0410f0410f0410f041
0008000026d5725d5726d5725d5723d4722d4723d4722d4723d3722d3723d3722d3723d2722d2723d2722d2723d1722d1723d1722d1726d0725d0726d0725d0726d0725d0726d0725d0726d0725d0700d0700d07
00040000136500f630006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600
000400001813020140261502a1502b1502b1502b15029150241401a13014120111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000400002b0502d0502c0402c0402c0302c0302c0202c0202c0102c01035000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
000200001b62026640256550060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600
000800001605216155190521915520052201552c0522c1422c1322c1223105231152311423113231122311122c002000020000200002000020000200002000020000200002000020000200002000020000200002
0118000005053000031910300003151531510300003000030505300003060530f1031715300003000030000305053000030000300003101530000300003000030505300003060530000317153000031465417655
001800000505307153191030405315153151030000300003050530000307153040531715300003000030000305053071530000304053101530000300003000030505300003061530305317153000031465417655
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
00010000216511a651000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001
011800001b4311841518431164151643113415134311341513431134151343113415134311341513431174151b431184151843116415164311341513431134151343113415134311341513431134151343117415
001800001b1311811518131161151613113115131311311513131131151313113115131311311513131171151b131181151813116115161311311513131131151313113115131311311513131131151313117115
0118000004655076050a6050d6050f6051265514605156051760518605196551a6051c6051d6051e6551f605206052260522655236052460524655256052660527655296052a6552c6052e655306553165532655
00180000146550c6050364518605196551860503645186050364518605116550c6051e655186050364518605146550c605036450c605196551860503645186050364518605116551860518655006050364500605
010200001966317653156430060300603006030060300603006030060300603006030060300603006030060300603006030060300603006030060300603006030060300603006030060300603006030060300603
000400002d6532c6432d6332c62300630006200061000600006000060000600006000060000600026000160000600006000460003600036000260001600016000160001600006000060000600006000060000600
000400002d6732b633266632d673216532666321643246431d6531b65319643176331563313623116230f61300603006030460303603036030260301603016030160301603006030060300603006030060300603
00100000114201142513400104001142511425134001040011420114251340010400114251142513400004000e4200e42513400104000e4250e42513400104000e4200e42513400104000e4250e4251340010400
00100000074200742513400104000742507425134001040007420074251340010400074250742513400104000b4200b42513400104000b4250b42513400104000b4200b42513400104000b4250b4251340010400
0110000005753000031910300003150531510300003000030575300003067530f1031705300003000030000305753000030000300003100530000300003000030575300003067530000317053000031465417655
011000000575307053191030475315053151030000300003057530000307053047531705300003000030000305753070530000304753100530000300003000030575300003060530375317053000031465417655
00100000133501535010330113100e33015350103500e3001535015350133301531010330113500e35015300133501535010330113100e33015350103500e3001535015350133301531010330113500e35015300
00100000133501535010330113100e33015350103500e3001535015350133301531010330113500e35015300133501535010330113100e33015350103500e3001535015350133301531010330113500e35015300
000800003253528505005050050500505005050050500505005050050500505005050050500505005050050500505005050050500505005050050500505005050050500505005050050500505005050050500505
000100001c6221e6321f6322161224632276322a6322c6422d6422e6322f62230622306222e6122c6123860200602006020060200602006020060200602006020060200602006020060200602006020060200602
0002000028650256502465022650216501f6501e6501c6501b6501a6501865017650166401664015640146401264012630106300f6300e6300d6300d6200c6200c6200b6200a6200961007610066100561003610
0004000033555385552a6112b6212c6312d6312e6212f621306113161132601395010060100601006010060100601006010060100601006010060100601006010060100601006010060100601006010060100601
00060000181211802118021180211c1311c0311c0311c031221412204122041220411f1311f0311f0311f03129141290412904129041290312903129031290312b1212a0212b0212a0212b0112a0112b0112a011
00130000026100561007610096100b6100c6100c6100c6100b6100a61008610076100761007610076100661006610066100661006610066100661007610086100861009610096100961007610066100461002610
001300000461004610046100461004610046100461005610056100661007610086100a6100b6100c6100e6100f61011610126101261013610136101361012610116100f6100c6100a61008610066100561004610
00130000096100b6100d6100f61011610126101461014610156101461014610136101261011610106100f6100d6100c6100a61009610086100761006610066100561005610066100561004610036100261002610
001300200561006610076100761007610076100661005610046100361003610046100561006610086100a6100c6100d6100e6100d6100c6100a61009610086100761006610056100461003610026100161001610
014c00002f0150000500005000051b0152300500005000051f0150000500005010051c01500005000050000529015000051a01500005110150000517015000051d01500005180150000519015000051101500005
001000000c0001000013000100001d6351000013000100000c0001000013000100001d635130000c000130000c0001300015000130001d6351300015000130000c0001300015000130001d635150000c00015000
011000000c5301a50013000100001d635100001300010000105301000013000100001d635130000c000130000c5301300015000130001d635130001500013000105301850015000130001d635150000c00015000
0108000003620036200462004620056200562006620066200762007620086200862009620096200a6200a6200b6200b6200c6200c6200d6200d6200e6200e6200f6200f620106201062011620116201262012620
010400001e6721c6721966217662166521365211642106420e6320c63209622066220561203612026020060200602000020000200002000020000200002000020000200002000020000200002000020000200002
00100000216421e6321c6321a62215622106122964227632226321f6221b6122c6422863225622216122f6422a63228612346322c61236642306422c6422863224632216321d62218622126220c6120761102611
001000000e5200e5250e5200e5251d63500500185201a5200e5200e5250e5200e5251d63500500185201a520095200952509520095251d635005001352015520095200952509520095251d6350c5001352015520
00100000115201152511520115251d63500500185201a520115201152511520115251d63500500185201a520005200052500520005251d635005000c52013520005200052500520005251d6350c5000c52013520
001000000e5201a5200e5200e5251d63500000185201a5200e5201a5200e5200e5251d63500000185201a520095250952509520095251d635000001352015520095250952509520095251d6350c0001352015520
00100000115201852011520115251d63500000185201a520115201852011520115251d63500000185201a520005201352000520005251d635000001352018520005201352000520005251d635000001352018520
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0013000005053000031910300003151531510300003000030505300003060530f1031715300003000030000305053000030000300003101530000300003000030505300003060530000317153000031465417655
001300000505307153191030405315153151030000300003050530000307153040531715300003000030000305053071530000304053101530000300003000030505300003061530305317153000031465417655
001300000c0001000013000100000c0001000013000100000c0001000013000100000c000130000c000130000c0001300015000130000c0001300015000130000c0001300015000130000c000150000c00015000
000100001c0001b000170001500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011300001b4311841518431164151643113415134311341513431134151343113415134311341513431174151b431184151843116415164311341513431134151343113415134311341513431134151343117415
001300001b1311811518131161151613113115131311311513131131151313113115131311311513131171151b131181151813116115161311311513131131151313113115131311311513131131151313117115
0113000004655076050a6050d6050f6051265514605156051760518605196551a6051c6051d6051e6551f605206052260522655236052460524655256052660527655296052a6552c6052e655306553165532655
00130000146550c6050364518605196551860503645186050364518605116550c6051e655186050364518605146550c605036450c605196551860503645186050364518605116551860518655006050364500605
__music__
01 1115432f
00 1555430d
00 1115160b
00 1216560d
00 1655560c
02 1115160a
01 11424344
00 12424344
00 11154344
00 12154344
00 11151644
00 12151644
00 15165644
00 17151644
00 11151618
00 12151618
00 11165144
02 12165144
00 30424344
00 2a464344
01 27464344
00 28424344
00 29424344
02 2a2b4344
01 2c1c0304
00 2c1d0304
00 2c1e1c04
00 091f1d2c
00 311c1e04
00 311d1f04
00 321c1e04
00 321d1f04
00 331e0304
00 331f0304
00 341e0304
00 341f0304
00 311c1e04
00 321d1e04
00 331e0304
00 341e0304
00 2d1c0304
00 2d1d0304
00 1c5c0304
02 1d5d0304
01 383c3d27
00 393c3d28
00 3c3d7d29
00 3c3d3e2a
00 383c3d3f
00 393c3d3f
00 383d5169
00 393d516a
00 27675144
00 28685144
00 3d296944
00 3d2a6a44
00 38275144
00 39285144
00 38296944
00 392a6a44
00 3d276944
00 3d286a44
00 383d2944
02 393d2a44

