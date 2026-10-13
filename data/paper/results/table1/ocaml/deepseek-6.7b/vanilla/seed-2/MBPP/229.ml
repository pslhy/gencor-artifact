let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec negatives_first (arr : int list) (n : int) (neg : int list) (pos : int list) : int list =
    match arr with
    | [] -> List.rev_append neg pos
    | h::t -> if h < 0 then negatives_first t (n-1) (h::neg) pos
               else if n > 0 then negatives_first t (n-1) neg (h::pos)
               else List.rev_append neg (h::pos)
  in negatives_first arr n [] [];; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
