let rec count_up_to (n : int) : int list = 
  let rec is_prime num =
    let rec helper i =
      if i * i > num then true
      else if num mod i = 0 then false
      else helper (i + 1)
    in helper 2
  in
  let rec count acc i =
    if i >= n then acc
    else if is_prime i then count (i :: acc) (i + 1)
    else count acc (i + 1)
  in count [] 2

(* Example usage:
let result = count_up_to 20
print_endline (String.concat "; " (List.map string_of_int result))
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
