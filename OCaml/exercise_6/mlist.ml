### Feedback for Lab 8

Run on July 27, 20:58:31 PM.

+ Pass: Change into directory "lab8".

+ Pass: Check that file "memo.ml" exists.

+ Pass: Check that file "clist.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   memopell 40
   ```
   matches the pattern `723573111879672`.

   




+ Pass: 
Check that the result of evaluating
   ```
   memopell 45
   ```
   matches the pattern `59341817924539925`.

   




+ Pass: 
Check that the result of evaluating
   ```
   memoalt4 43
   ```
   matches the pattern `33046005485`.

   




+ Pass: 
Check that the result of evaluating
   ```
   memoalt4 53
   ```
   matches the pattern `4414256426351`.

   




+ Pass: 
Check that the result of evaluating
   ```
   (memopell 40) + 2*(memopell 41)
   ```
   matches the pattern `(memopell 42)`.

   




+ Fail: 
Check that the result of evaluating
   ```
   let cl1 = CCons("oroboros", ref Nil) in make_cyclic cl1; (ctl cl1) == cl1
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = false
`


+ Pass: 
Check that the result of evaluating
   ```
   let cl2 = CCons(8, ref (CCons(17, ref Nil))) in make_cyclic cl2; (ctl cl2) == cl2
   ```
   matches the pattern `false`.

   




+ Fail: 
Check that the result of evaluating
   ```
   let cl2 = CCons(8, ref (CCons(17, ref Nil))) in make_cyclic cl2; (ctl (ctl cl2)) == cl2
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = false
`


+ Pass: 
Check that the result of evaluating
   ```
   findcycle (clist_of_list [1;2;3;4;5])
   ```
   matches the pattern `false`.

   




+ Fail: 
Check that the result of evaluating
   ```
   let cl = clist_of_list [1;2;3;4;5] in make_cyclic cl; findcycle cl
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = false
`


+ Pass: Check that file "mlist.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   mlist_of_list []
   ```
   matches the pattern `Nil`.

   




+ Fail: 
Check that the result of evaluating
   ```
   mlist_of_list [1;2;3]
   ```
   matches the pattern `List {hd = 1; tl = List {hd = 2; tl = List {hd = 3; tl = Nil}}}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : '_weak1 mlist = Nil
`


+ Pass: 
Check that the result of evaluating
   ```
   rev_mlist Nil
   ```
   matches the pattern `Nil`.

   




+ Fail: 
Check that the result of evaluating
   ```
   rev_mlist (List {hd = 1; tl = List {hd = 2; tl = Nil}})
   ```
   matches the pattern `List {hd = 2; tl = List {hd = 1; tl = Nil}}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : int mlist = List {hd = 1; tl = List {hd = 2; tl = Nil}}
`


+ Fail: 
Check that the result of evaluating
   ```
   append_m (List {hd = "grilled"; tl = List {hd = "corn"; tl = Nil}}) (List {hd = "onthecob"; tl = Nil})
   ```
   matches the pattern `List {hd = "grilled"; tl = List {hd = "corn"; tl = List {hd = "onthecob"; tl= Nil}}}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : '_weak1 mlist = Nil
`


+ Fail: 
Check that the result of evaluating
   ```
   let l1 = List {hd = 1; tl = Nil} in let l2 = append_m l1 (List {hd = 2; tl = Nil}) in l1 = l2
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = false
`


+ Fail: 
Check that the result of evaluating
   ```
   let ml = mlist_of_list [2;3;5;11] in insert_after_m 5 7 ml; list_of_mlist ml
   ```
   matches the pattern `[2; 3; 5; 7; 11]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+ Fail: 
Check that the result of evaluating
   ```
   try insert_after_m 0 1 (mlist_of_list []); 1 with Not_found -> (-1)
   ```
   matches the pattern `-1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : int = 1
`


+ Fail: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;2;3;4;5;6;7;8;9;10] in exclude_m (fun x -> x mod 2 = 0) m2
   ```
   matches the pattern `List {hd = 1; tl = List {hd = 3; tl = List {hd = 5; tl = List {hd = 7; tl = List {hd = 9; tl = Nil}}}}}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
[0m[1;31mError[0m: This variant expression is expected to have type unit
       The constructor List does not belong to type unit

```



+ Fail: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;2;3;4;5;6;7;8;9;10] in let _ = exclude_m (fun x -> x mod 2 = 0) m2 in list_of_mlist m2
   ```
   matches the pattern `[1; 3; 5; 7; 9]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+ Fail: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;3;5;7;9] in exclude_m (fun x -> x mod 3 = 1) m2
   ```
   matches the pattern `List {hd = 3; tl = List {hd = 5; tl = List {hd = 9; tl = Nil}}}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
[0m[1;31mError[0m: This variant expression is expected to have type unit
       The constructor List does not belong to type unit

```



+ Fail: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;3;5;7;9] in let _ = exclude_m (fun x -> x mod 3 = 1) m2 in list_of_mlist m2
   ```
   matches the pattern `[1; 3; 5; 9]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+ Pass: Check that file "list_arr.ml" exists.

+ Pass: Check that file "aset.ml" exists.

+ Fail: 
Check that the result of evaluating
   ```
   let a = [|1; 2; 3 |] in rev_array a; a
   ```
   matches the pattern `[|3; 2; 1|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[0m[1;31mError[0m: Unbound value rev_array
`


+ Fail: 
Check that the result of evaluating
   ```
   let b = [||] in rev_array b; b
   ```
   matches the pattern `[||]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[0m[1;31mError[0m: Unbound value rev_array
`


+ Fail: 
Check that the result of evaluating
   ```
   let c = [|"pronto"; "pups"|] in rev_array c; c
   ```
   matches the pattern `[|"pups"; "pronto"|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[0m[1;31mError[0m: Unbound value rev_array
`


+ Fail: 
Check that the result of evaluating
   ```
   zip_array [|1;2|] [|"a";"b"|]
   ```
   matches the pattern `[|(1, "a"); (2, "b")|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[0m[1;31mError[0m: Unbound value zip_array
`


+ Fail: 
Check that the result of evaluating
   ```
   zip_array [|true; false; true|] [|0;1;1|]
   ```
   matches the pattern `[|(true, 0); (false, 1); (true,1)|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[0m[1;31mError[0m: Unbound value zip_array
`


+ Fail: 
Check that the result of evaluating
   ```
   subset s1 s2
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = false
`


+ Pass: 
Check that the result of evaluating
   ```
   subset s3 s2
   ```
   matches the pattern `false`.

   




+ Fail: 
Check that the result of evaluating
   ```
   of_list 4 [1;3;5]
   ```
   matches the pattern `[|false;true;false;true|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : '_weak1 array = [||]
`


+ Fail: 
Check that the result of evaluating
   ```
   of_list 6 []
   ```
   matches the pattern `[|false;false;false;false;false;false|]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : '_weak1 array = [||]
`


+ Pass: Check that file "answers.md" exists.

+ Pass: Item 1 of list in answers.md passes  answer is not empty  test

+ Pass: Item 2 of list in answers.md passes  answer is not empty  test

+ Pass: Item 3 of list in answers.md passes  answer is not empty  test

