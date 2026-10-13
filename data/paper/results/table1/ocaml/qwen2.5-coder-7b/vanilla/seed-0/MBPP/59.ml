let rec is_octagonal (n : int) : int = 
  let rec helper k = 
    let octagonal = 3 * k * k - k in
    if octagonal = n then k
    else if octagonal > n then -1
    else helper (k + 1)
  in
  if n < 1 then -1 else helper 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
