
let rec perfect_squares (a : int) (b : int) : int list =
  match (a, b) with
  | a, a -> [a]
  | a, b when a = b -> []
  | a, b when a < b -> failwith "lower bound should be less than or equal to upper bound"
  | _ ->
    let mid = (a + b) / 2 in
    let s_mid = mid * mid in
    let s_l = perfect_squares a (mid - 1) in
    let s_r = perfect_squares (mid + 1) b in
    List.sort compare (s_l @ [s_mid] @ s_r)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
