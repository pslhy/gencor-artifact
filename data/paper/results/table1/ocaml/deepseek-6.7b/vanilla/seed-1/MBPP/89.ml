let rec closest_num (n : int) : int =
  match n with
  | 0 -> 0
  | _ -> if (n land (n - 1)) = 0 then n else closest_num (n - 1)

(* Test Cases *)

Printf.printf "%d\n" (closest_num 18) (* 16 *)
Printf.printf "%d\n" (closest_num 19) (* 16 *)
Printf.printf "%d\n" (closest_num 20) (* 16 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
