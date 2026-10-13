(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a =
      let bin = string_of_int (a land - a) in
      String.length (String.trim (String.trim_all [%string "~{bin}"] "1")) in
    let count = count_ones a - count_ones b in
    if count <> 0 then count
    else a - b) arr;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:35: Unbound value "String.trim_all" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a =
      let bin = String.make (String.length (string_of_int a)) '1' in
      String.length (String.trim (String.trim_left bin "0")) in
    let diff = count_ones a - count_ones b in
    if diff <> 0 then diff
    else a - b) arr;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:35: Unbound value "String.trim_left" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a =
      let bin = String.make (String.length (string_of_int a)) '1' in
      String.length (String.trim_left bin "0") in
    let diff = count_ones a - count_ones b in
    if diff <> 0 then diff
    else a - b) arr;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.trim_left" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a =
      let bin = String.make (String.length (string_of_int a)) '1' in
      String.length (String.trim_left bin "0") in
    let diff = count_ones a - count_ones b in
    if diff <> 0 then diff
    else a - b) arr;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.trim_left" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
  List.sort (fun a b ->
    let count_ones a =
      let bin = String.make (String.length (string_of_int a)) '1' in
      String.length (String.trim_start bin "0") in
    let diff = count_ones a - count_ones b in
    if diff <> 0 then diff
    else a - b) arr;;

