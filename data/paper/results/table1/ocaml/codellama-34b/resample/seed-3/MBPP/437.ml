(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
let rec remove_odd (str1 : string) : string =
  if str1 = "" then "" else
  let (hd, tl) = str1.(0), str1.(1) in
  if (int_of_char hd) mod 2 = 1 then remove_odd tl
  else hd^remove_odd tl

