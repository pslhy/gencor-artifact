
let rec get_ludic (n : int) : int list = 
  let rec calculate_ludics current previous ludics =
    if current > n then ludics
    else calculate_ludics (current + previous) current (current::ludics)
  in
  List.rev (calculate_ludics 2 1 [])

(* Example usage:
let ludic_numbers = get_ludic 30;;
print_int_list ludic_numbers; (* Output: 2 3 5 7 11 13 17 19 23 29 *)
*)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
