(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
let rec find_Odd_Pair (a : int list) (n : int) : int = 
    (* base case: a has less than 2 elements *)
    if List.length a < 2 then 0 
    (* recursive case: a has at least 2 elements *)
    else 
        let half = List.length a / 2 in
        (* if the xor of the first half and the second half is odd, add 1 to the result *)
        if (List.fold_left (lxor) 0 (List.sub a 0 half) lxor (List.sub a half (List.length a - half))) mod 2 = 1 then
        let count = find_Odd_Pair (List.sub a 0 half) (n / 2) + find_Odd_Pair (List.sub a half (List.length a - half)) in
        count
    ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:38: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
  if List.length a < 2 then 0
  else
    let half = List.length a / 2 in
    if (List.fold_left lxor 0 (List.take half a)
                      lxor (List.take (List.length a - half) (List.drop half a))) mod 2 = 1 then
      1 + find_Odd_Pair (List.take half a) (n / 2)
      + find_Odd_Pair (List.drop half a) (n - half)
    else 0

