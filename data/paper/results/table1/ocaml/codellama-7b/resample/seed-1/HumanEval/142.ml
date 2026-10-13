(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     " *)
(*     This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a *)
(*     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not *)
(*     change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. *)
(*     Examples: *)
(*     >>> lst *)
(*     [1; 2; 3] *)
(*     >>> lst *)
(*     [] *)
(*     >>> lst *)
(*     [(-1); (-5); 2; (-1); (-5)] *)
let rec sum_squares (lst : int list) : int =
match lst with
| [] -> 0
| hd :: tl ->
    if (List.hd lst) mod 3 = 0 && (List.hd lst) mod 4 = 0
    then (List.hd lst) * (List.hd lst) + sum_squares tl
    else (List.hd lst) + sum_squares tl
in
sum_squares lst;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:13: Unbound value "lst" *)
(*     Hint: Did you mean "fst", "lsl" or "lsr"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_squares (lst : int list) : int =
match lst with
| [] -> 0
| hd :: tl ->
    if List.mem hd [1; 2; 3] then hd * hd else hd + sum_squares tl
in
sum_squares [1; 2; 3];;

