
let rec bell_Number (n : int) : int = 
  if n = 0 then 1
  else 
    let rec bell_Number_helper j k = 
      if j = k then bell_Number j
      else bell_Number j + bell_Number_helper (j + 1) k
    in
    let rec extract_bell tri = 
      match tri with
      | [] -> []
      | (h :: t) -> h :: extract_bell t
    in
    let rec triangular_number j num =
      if j = 0 then [num]
      else num :: triangular_number (j - 1) (num + j)
    in
    extract_bell (triangular_number (n - 1) 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
