let rec checks (n : int) : bool =
  let rec reverse n acc =
    match n with
      | 0 -> acc
      | _ -> reverse (n / 10) (acc * 10 + n mod 10)
  in n = reverse (2 * n) 0

let is_one_less_than_twice_reverse n = checks n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
