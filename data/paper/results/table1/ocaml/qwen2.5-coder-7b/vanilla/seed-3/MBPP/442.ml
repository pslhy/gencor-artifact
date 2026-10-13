let rec positive_count (nums : int list) : float = 
  let rec count acc pos = function
    | [] -> (acc, pos)
    | x::xs -> 
        if x > 0 then count (acc + 1) (pos + 1) xs
        else if x = 0 then count (acc + 1) pos xs
        else count acc pos xs
  in
  let (total, positives) = count 0 0 nums in
  if positives = 0 then 0.0 else float positives /. float total


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
