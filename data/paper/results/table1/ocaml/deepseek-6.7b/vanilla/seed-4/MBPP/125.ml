let rec find_length (string : string) : int =
  let len = String.length string in
  if len = 0 then 0
  else if string.[0] = '0' then 1 + find_length (String.sub string 1 (len - 1))
  else -1 + find_length (String.sub string 1 (len - 1))

let max_difference (binary : string) : int =
  let len = String.length binary in
  let rec calculate (start : int) (max : int) =
    if start = len then max
    else
      let current = find_length (String.sub binary start (len - start)) in
      if current > max then calculate (start + 1) current
      else calculate (start + 1) max in
  calculate 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
