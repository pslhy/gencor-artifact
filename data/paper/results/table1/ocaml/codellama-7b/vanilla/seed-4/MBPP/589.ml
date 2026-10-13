let rec perfect_squares (a : int) (b : int) : int list =
  if a > b then
    []
  else
    let mid = (a + b) / 2 in
    let check = mid * mid in
    if check = a then
      [a]
    else if check > b then
      perfect_squares a (mid - 1)
    else if check < b then
      perfect_squares (mid + 1) b
    else
      failwith "Some error occurred"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
