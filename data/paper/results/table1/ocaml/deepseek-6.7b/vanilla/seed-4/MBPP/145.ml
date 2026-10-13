let rec max_Abs_Diff (arr : int list) : int =
  let rec aux xList min max =
    match xList with
    | [] -> max - min
    | head::tail ->
        let newMin = if head < min then head else min
        in let newMax = if head > max then head else max
        in aux tail newMin newMax
  in match arr with
  | [] -> raise (Invalid_argument "Array cannot be empty")
  | head::_ -> aux arr head head


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
