let rec find_length (string : string) : int =
  if String.length string = 0 then
    0
  else if String.get string 0 = '0' then
    find_length (String.sub string 1 (String.length string - 1)) + 1
  else
    find_length (String.sub string 1 (String.length string - 1))


let rec find_max_diff (string : string) : int =
  if String.length string = 0 then
    0
  else
    let num_0 = find_length (String.sub string 0 (String.length string - 1))
    and num_1 = find_length (String.sub string 1 (String.length string - 1)) in
    max (num_0 - num_1) (find_max_diff (String.sub string 1 (String.length string - 1)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
