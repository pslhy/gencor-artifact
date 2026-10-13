let rec find_length (string : string) : int =
  let len = String.length string in
  if len < 2 then 0
  else
    let rec helper (i : int) (j : int) : int =
      if j = len then 0
      else if string.[i] <> string.[j] then j - i
      else helper i (j + 1)
    in
    max (helper 0 1) (find_length (String.sub string 1 (len - 1)))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
