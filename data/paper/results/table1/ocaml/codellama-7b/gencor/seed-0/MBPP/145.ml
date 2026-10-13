
let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | x :: y :: tl ->
      let diff = abs (x - y) in
      max diff (max_Abs_Diff (y :: tl))
  | _ -> 0

let _ =
  let arr = [3; 5; 2; 7; 11] in
  Printf.printf "Result: %d\n" (max_Abs_Diff arr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
