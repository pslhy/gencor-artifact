let rec comb_sort (nums : int list) : int list =
  if nums = [] then
    []
  else if List.length nums = 1 then
    nums
  else
    let (gap, sorted) =
      if List.length nums > 2 then
        (List.nth nums 2, List.take nums 1 @ List.drop nums 2)
      else
        (1, nums)
    in
    comb_sort (sorted @ [List.nth nums 0]);;

let nums = 
  comb_sort [4; 3; 2; 1; 2; 3; 4];;
nums;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
