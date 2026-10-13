
let rec count_Substrings (s : string) : int =
  if String.length s <= 1 then
    0
  else
    let left = s.[0] in
    let right = s.[String.length s - 1] in
    let rest = String.sub s 1 (String.length s - 2) in
    if (Int.of_float(left)) = 0 then 
     1 + count_Substrings rest
    else if (Int.of_float(right)) = 0 then 
     1 + count_Substrings rest
    else if (Int.of_float(left)) + (Int.of_float(right)) = (String.length s - 1) then 
     2 + count_Substrings rest
    else
      count_Substrings rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
