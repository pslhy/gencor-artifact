(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  match arr with
  | [] -> []
  | x :: xs -> 
        let (neg, pos) = List.partition ((<) 0) (List.take n arr) in
        neg @ pos @ re_arrange_array xs (n - List.length pos);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:50: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  if n <= 0 then arr
  else 
    let (neg, pos) = List.partition ((<) 0) (List.hd arr :: List.tl arr) in
    neg @ pos @ re_arrange_array (List.tl arr) (n - 1);;

