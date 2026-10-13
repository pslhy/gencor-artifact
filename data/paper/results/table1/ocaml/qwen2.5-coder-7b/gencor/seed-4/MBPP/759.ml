
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_dot c = c = '.' in
  let count_dots s = List.length @@ List.filter is_dot (String.to_seq s) in
  let digits = String.to_seq num |> Seq.filter is_digit |> Seq.length in
  let dots = count_dots num in
  if dots = 1 && digits > 0 then true else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
