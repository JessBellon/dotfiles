function posix-source
for i in (cat $argv)
                set arr (string split -m1 = $i)
  set -gx $arr[2] $arr[3]
end
end
