let rec re_arrange_array (arr : int list) (n : int) : int list = 
  let rec filter_negs_positives acc_negs acc_positives lst =
    match lst with
    | [] -> (List.rev acc_negs, List.rev acc_positives)
    | x::xs ->
        if x < 0 then filter_negs_positives (x::acc_negs) acc_positives xs
        else filter_negs_positives acc_negatives (x::acc_positives) xs
  in
  let negs, poss = filter_negs_positives [] [] arr in
  if n <= 0 then negs
  else
    let rec append n negs poss =
      if n = 0 then poss
      else
        match negs with
        | [] -> poss
        | x::xs -> x :: append (n-1) xs poss
    in
    append n negs poss


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
