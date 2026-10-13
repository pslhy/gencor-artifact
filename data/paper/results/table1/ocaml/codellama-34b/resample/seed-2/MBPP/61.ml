(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
    let n = String.length s in
    if n = 0 || n = 1 then 0
    else
      let (d1, d2) = (int_of_char s.[0]) in
      if d1 = n then 1
      else if d1 + d2 = n then 1
      else 0

