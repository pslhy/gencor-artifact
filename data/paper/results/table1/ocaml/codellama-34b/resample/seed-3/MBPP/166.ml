(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
let rec find_even_pair (a : int list) : int =
  match a with
  | [] -> 0
  | h1 :: tl ->
    let rec loop (a : int list) (acc : int) : int =
      match a with
      | [] -> acc
      | h2 :: tl ->
        if (h1 lxor h2) mod 2 = 0 then
          loop tl (acc + 1)
        else
          loop tl acc
    in loop tl 0

