let rec find_even_pair (a : int list) : int =
  match a with
  | [] -> 0
  | h :: t ->
    let rec find_odd (a : int list) : int =
      match a with
      | [] -> 0
      | h :: t -> if h < 0 then 1 + find_odd (-h) else find_odd t
    in
    if find_odd h = 1 then find_even_pair t
    else find_even_pair t + (if find_odd h = 0 then 1 else 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
