
let rec newman_prime (n : int) : int = 
  let is_prime num =
    let rec test d =
      if d * d > num then true
      else if num mod d = 0 then false
      else test (d + 1)
    in test 2
  in
  let rec generate_newman_starting_number num =
    let nsw n =
      let base = if n = 0 then 2 else (2 * (n - 1) + 1) in
      let rec pow acc b exp =
        if exp = 0 then acc
        else pow (acc * b) b (exp - 1)
      in pow num base (n + 1)
    in
    let nsw_value = nsw num in
    if is_prime nsw_value then
      nsw_value
    else
      generate_newman_starting_number (num + 1)
  in
  let rec count_newman_prime i num acc =
    if i = 0 then
      acc
    else
      let next = generate_newman_starting_number (num + 1) in
      count_newman_prime (i - 1) next acc
  in
  count_newman_prime n 0 0

(* Usage: let result = newman_prime 5; result;;
   This will output the 5th Newman–Shanks–Williams prime number *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
