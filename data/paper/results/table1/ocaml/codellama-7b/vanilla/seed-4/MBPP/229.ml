let rec re_arrange_array (arr : int list) (n : int) : int list =
  let neg_els = ref [] and pos_els = ref [] in
  let rec iterate (arr : int list) : unit =
    match arr with
    | [] -> ()
    | x :: xs when x < 0 -> neg_els := !neg_els @ [x]
    | x :: xs when x > 0 -> pos_els := !pos_els @ [x]
    | x :: xs -> iterate xs
  in
  iterate arr;
  !neg_els @ !pos_els


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
