
let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.fold_left (fun acc x -> if x = '0' then acc + 1 else acc) 0 (String.sub string 0 (String.length string - 1)) in
    let num_ones : int = String.fold_left (fun acc x -> if x = '1' then acc + 1 else acc) 0 (String.sub string 0 (String.length string - 1)) in
    let rest = find_length (String.sub string 1 (String.length string - 1)) in
    max (rest) (abs (num_ones - num_zeros))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
