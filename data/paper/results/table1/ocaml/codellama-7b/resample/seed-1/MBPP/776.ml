(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
let rec count_vowels (test_str : string) : int =
match String.length test_str with
0 -> 0
| _ ->
let head = String.get test_str 0 in
let tail = String.sub test_str 1 (String.length test_str - 1) in
match (head = "a" || head = "e" || head = "i" || head = "o" || head = "u") with
false -> count_vowels tail
true -> 1 + count_vowels tail
done
done

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:6: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
match String.length test_str with
| 0 -> 0
| _ ->
    let head = String.get test_str 0 in
let tail = String.sub test_str 1 (String.length test_str - 1) in

 if (head = "a" || head = "e" || head = "i" || head = "o" || head = "u")
  then 1 + count_vowels tail
 else count_vowels tail
done
done

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  match String.length test_str with
  | 0 -> 0
  | _ ->
    let head = String.get test_str 0 in
    (* error: Syntax error *)
    let tail = String.sub test_str 1 (String.length test_str - 1) in
    (* error: Syntax error *)
    if (head = "a" || head = "e" || head = "i" || head = "o" || head = "u")
    then 1 + count_vowels tail
    else count_vowels tail
    done
    done

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  match String.length test_str with
  | 0 -> 0
  | _ ->
    let head = String.get test_str 0 in
    let tail = String.sub test_str 1 (String.length test_str - 1) in
    if (head = "a" || head = "e" || head = "i" || head = "o" || head = "u")
    then 1 + count_vowels tail
    else count_vowels tail
    done
    done

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  match String.length test_str with
  | 0 -> 0
  | _ ->
    let head = String.get test_str 0 in
    let tail = String.sub test_str 1 (String.length test_str - 1) in
    if (head = "a" || head = "e" || head = "i" || head = "o" || head = "u")
    then 1 + count_vowels tail
    else count_vowels tail
    done

