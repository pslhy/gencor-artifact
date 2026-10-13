let rec tup_string (tup1 : string list) : string =
  let (x, y) = tup1 in
  if x = y then x ^ "" else x ^ y

let list_to_string (xs : string list) : string =
  match xs with
  | [] -> ""
  | [x] -> x
  | x :: ys -> tup_string (x, list_to_string ys)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
