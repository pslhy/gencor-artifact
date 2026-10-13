
let rec remove_lowercase (str1 : string) : string =
  if str1 = "" then "" else
  let (hd, tl) = str1.(0), str1.(1..(String.length str1 - 1)) in
  if hd >= 'a' && hd <= 'z' then remove_lowercase tl else
  hd ^ remove_lowercase tl

let () =
  assert(remove_lowercase "Hello World" = "H W");
  assert(remove_lowercase "hello world" = "");
  assert(remove_lowercase "HElLo WoRlD" = "H W");
  assert(remove_lowercase "" = "");
  ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
