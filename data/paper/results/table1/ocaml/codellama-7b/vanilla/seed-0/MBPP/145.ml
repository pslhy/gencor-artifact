let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | x :: y :: tl ->
      let diff = abs (x - y) in
      max diff (max_Abs_Diff (y :: tl))
  | _ -> 0

let _ = printf "Max diff: %d\n" (max_Abs_Diff [|1; 2; 3; 8; 5; 9|])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
