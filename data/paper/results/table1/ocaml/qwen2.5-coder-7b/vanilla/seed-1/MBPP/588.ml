let rec big_diff (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
        if h > fst acc then findMinMax (h, snd acc) t
        else if h < snd acc then findMinMax (fst acc, h) t
        else findMinMax acc t
  in
  match nums with
  | [] -> invalid_arg "empty list"
  | _ -> snd (findMinMax (List.hd nums, List.hd nums) (List.tl nums))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
