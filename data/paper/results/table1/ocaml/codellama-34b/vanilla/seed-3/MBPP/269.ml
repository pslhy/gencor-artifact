let rec ascii_value (k : string) : int =
  if k = "" then 0 else
  let (hd, tl) = (String.get k 0, String.sub k 1 (String.length k - 1)) in
  (int_of_char hd) * 100 * (ascii_value tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
