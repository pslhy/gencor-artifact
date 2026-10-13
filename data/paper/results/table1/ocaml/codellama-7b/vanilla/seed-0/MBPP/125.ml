let rec find_length (string : string) : int =
  match string with
  | "" -> 0
  | (head :: tail) ->
    let count = if head = '0' then 1 else 0 in
    count + find_length tail

let rec find_max_diff (string : string) (max_diff : int) : int =
  match string with
  | "" -> max_diff
  | (head :: tail) ->
    let count = find_length (tail) in
    let diff = abs (count - max_diff) in
    find_max_diff tail (max diff max_diff)

let solution (string : string) : int =
  find_max_diff string 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
